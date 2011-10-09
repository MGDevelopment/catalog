#!/bin/sh

echo "start at `date`"

# create the records
psql ecommerce ecommerce > exec.output 2>&1 <<EOT
INSERT INTO URLPublishedStatus(URLId, StoreId, DesignId, PublishedStatus, LastUpdateDate)
SELECT      EU.URLId                AS URLId,
            (SELECT S.StoreId FROM Stores S)
                                    AS StoreId,
            (SELECT D.DesignId FROM Designs D)
                                    AS DesignId,
            COALESCE(PSPD.MarketPublishingStatus, '04')
                                    AS PublishedStatus,
            'now'                   AS LastUpdateDate
    FROM        EntityURLs EU
    LEFT JOIN   ProductSupplyPublishingDetail PSPD
        ON      EU.EntityType = 'PROD' AND
                EU.EntityId   = PSPD.ProductId;
EOT

# check for errors
if [ `grep 'ERROR:' exec.output | wc -l` != "0" ]; then
    echo "ERROR: there were some errors while creating the publishing status. Check file 'exec.output'"
    exit 1
fi

rm -f exec.output

echo "end at `date`"
