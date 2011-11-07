#!/bin/sh

DB=$1
if [ "$DB" == "" ]; then
    DB=/tmp/eCommerce.db
fi

echo "--"
echo "--"
echo "-- database is in [$DB]"
echo "--"
echo "--use param to point to a different file"
echo "--"

echo "start at `date`"

# create the records
sqlite3 $DB > exec.output 2>&1 <<EOT
INSERT INTO URLPublishedStatus(URLId, StoreId, DesignId, PublishedStatus, LastUpdateDate)
SELECT      EU.URLId                AS URLId,
            (SELECT S.StoreId FROM Stores S)
                                    AS StoreId,
            (SELECT D.DesignId FROM Designs D)
                                    AS DesignId,
            COALESCE(PSPD.MarketPublishingStatus, '04')
                                    AS PublishedStatus,
            strftime('%Y-%m-%dT%H:%M:%S.%f', CURRENT_TIMESTAMP)
                                    AS LastUpdateDate
    FROM        EntityURLs EU
    LEFT JOIN   ProductSupplyPublishingDetail PSPD
        ON      EU.EntityType = 'PROD' AND
                EU.EntityId   = PSPD.ProductId;
EOT

# check for errors
if [ `grep 'Error:' exec.output | wc -l` != "0" ]; then
    echo "ERROR: there were some errors while creating the publishing status. Check file 'exec.output'"
    exit 1
fi

rm -f exec.output

echo "end at `date`"
