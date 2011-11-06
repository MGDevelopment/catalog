BEGIN {
    status = "copy";
}


$0 ~ /ALTER TABLE [a-zA-Z0-9_]+ *$/ && status == "copy" {
    alter = $0 "\n";
    status = "alter-hoard";
    next;
}

status == "alter-hoard" {
    alter = alter $0 "\n";
    if ($0 ~ /;$/) {
        # decidimos si se ignora (FOREIGN KEY)
        if (index(alter, "FOREIGN KEY") == 0) {
            printf "%s", alter;
        };
        status = "copy";
    };
    next;
}

$0 ~ /^COMMENT / && status == "copy" {
    if ($0 !~ /\';$/) {
        status = "comment-skip";
    };
    next;
}

status == "comment-skip" {
    if ($0 ~ /\';$/) {
        status = "copy";
    };
    next;
}

status == "copy" {
    printf "%s\n", $0;
    next;
}
