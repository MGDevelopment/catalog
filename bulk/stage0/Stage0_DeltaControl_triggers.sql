
CREATE OR REPLACE TRIGGER TEMATIKA.TG_ARTICULOS_MESA_RECOMENDADOS
    BEFORE UPDATE
    ON ARTICULOS_MESA_RECOMENDADOS
    FOR EACH ROW
BEGIN
    :NEW.F_MODI := SYSDATE;
END;


CREATE OR REPLACE TRIGGER TEMATIKA.TG_MOD_RCO_ART_RELAC_STAGE0
    AFTER INSERT or UPDATE
    ON RCO_ARTICULOS_RELACIONADOS
    FOR EACH ROW
DECLARE
    v_backup NUMBER(1) :=0;
    v_cant NUMBER(10) := 0;
BEGIN
    SELECT numero INTO v_backup
        FROM PARAMETROS
        WHERE id_parametro = 'BASE_BACKUP';
    IF v_backup = 0 THEN
        --
        -- NOTE: update only if needed. Avoid creating an
        --       empty transaction (and moving the log, etc)
        --
        SELECT COUNT(*) INTO v_cant
            FROM Stage0_Delta
            WHERE   EntityType = 'PROD' AND
                    EntityId = :new.id_articulo AND
                    FlagUpdated = 1;
        IF v_cant = 0 THEN
            UPDATE Stage0_Delta
                SET     FlagUpdated     = 1,
                        -- make sure it will be processed (date is yesterday)
                        LastUpdate      = SYSDATE - 1
                WHERE   EntityType = 'PROD' AND
                        EntityId = :new.id_articulo;
        END IF;
    END IF;
END;
