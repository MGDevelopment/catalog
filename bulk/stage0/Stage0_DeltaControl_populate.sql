--
-- create control a record for each existing entity in Stage0_Delta
--

INSERT INTO Stage0_DeltaControl(EntityType, LastUpdateDate, NewUpdateDate, LastRun)
    VALUES('CONT', '01-MAY-2011', '01-MAY-2011', '01-JAN-2012');
INSERT INTO Stage0_DeltaControl(EntityType, LastUpdateDate, NewUpdateDate, LastRun)
    VALUES('IMPR', '01-JAN-2012', '01-JAN-2012', '01-JAN-2012');
INSERT INTO Stage0_DeltaControl(EntityType, LastUpdateDate, NewUpdateDate, LastRun)
    VALUES('PAGE', '01-JAN-2012', '01-JAN-2012', '01-JAN-2012');
INSERT INTO Stage0_DeltaControl(EntityType, LastUpdateDate, NewUpdateDate, LastRun)
    VALUES('PROD', '01-JAN-2012', '01-JAN-2012', '01-JAN-2012');
INSERT INTO Stage0_DeltaControl(EntityType, LastUpdateDate, NewUpdateDate, LastRun)
    VALUES('SUBJ', '01-JAN-2012', '01-JAN-2012', '01-JAN-2012');
INSERT INTO Stage0_DeltaControl(EntityType, LastUpdateDate, NewUpdateDate, LastRun)
    VALUES('_DSP', '01-JAN-2012', '01-JAN-2012', '01-JAN-2012');
