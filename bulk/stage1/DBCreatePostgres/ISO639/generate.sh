#!/bin/sh

echo "Generating SQL insert statements"
awk -f generate.awk < ISO-639-2_utf-8.txt > TMK_eCommerce_Create_7_Languages.sql

echo "DONE!"
