create or replace
FUNCTION Titulo_Nicer(
    Titulo VARCHAR2
) RETURN VARCHAR2 IS
    Tmp         VARCHAR2(200);
    Pref        VARCHAR2(200);
    Post        VARCHAR2(200);
    lPost       INTEGER;
BEGIN
    Tmp := TRIM(Titulo);
    --
    -- ", EL", ", LA", ", LO", ", LAS", ", LOS", ", THE", ", LE", ", LES"
    --
    Pref  := 'El ';
    Post  := ', el';
    lPost := LENGTH(Post);
    IF LOWER(SUBSTR(Tmp, LENGTH(Tmp) - lPost + 1)) = Post THEN
        Tmp := Pref || SUBSTR(Tmp, 1, LENGTH(Tmp) - lPost);
    END IF;
    Pref  := 'La ';
    Post  := ', la';
    lPost := LENGTH(Post);
    IF LOWER(SUBSTR(Tmp, LENGTH(Tmp) - lPost + 1)) = Post THEN
        Tmp := Pref || SUBSTR(Tmp, 1, LENGTH(Tmp) - lPost);
    END IF;
    Pref  := 'Lo ';
    Post  := ', lo';
    lPost := LENGTH(Post);
    IF LOWER(SUBSTR(Tmp, LENGTH(Tmp) - lPost + 1)) = Post THEN
        Tmp := Pref || SUBSTR(Tmp, 1, LENGTH(Tmp) - lPost);
    END IF;
    Pref  := 'Las ';
    Post  := ', las';
    lPost := LENGTH(Post);
    IF LOWER(SUBSTR(Tmp, LENGTH(Tmp) - lPost + 1)) = Post THEN
        Tmp := Pref || SUBSTR(Tmp, 1, LENGTH(Tmp) - lPost);
    END IF;
    Pref  := 'Los ';
    Post  := ', los';
    lPost := LENGTH(Post);
    IF LOWER(SUBSTR(Tmp, LENGTH(Tmp) - lPost + 1)) = Post THEN
        Tmp := Pref || SUBSTR(Tmp, 1, LENGTH(Tmp) - lPost);
    END IF;
    Pref  := 'Le ';
    Post  := ', le';
    lPost := LENGTH(Post);
    IF LOWER(SUBSTR(Tmp, LENGTH(Tmp) - lPost + 1)) = Post THEN
        Tmp := Pref || SUBSTR(Tmp, 1, LENGTH(Tmp) - lPost);
    END IF;
    Pref  := 'Les ';
    Post  := ', les';
    lPost := LENGTH(Post);
    IF LOWER(SUBSTR(Tmp, LENGTH(Tmp) - lPost + 1)) = Post THEN
        Tmp := Pref || SUBSTR(Tmp, 1, LENGTH(Tmp) - lPost);
    END IF;
    Pref  := 'The ';
    Post  := ', the';
    lPost := LENGTH(Post);
    IF LOWER(SUBSTR(Tmp, LENGTH(Tmp) - lPost + 1)) = Post THEN
        Tmp := Pref || SUBSTR(Tmp, 1, LENGTH(Tmp) - lPost);
    END IF;
    RETURN(Tmp);
END;