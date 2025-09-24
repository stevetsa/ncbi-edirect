#!/bin/bash
#EDirect script
while read org
  do
    esearch -db taxonomy -query "$org [LNGE] AND family [RANK]" < /dev/ null |
    efetch -format docsum |
    xtract -pattern Document Summary -lbl "$org" -element ScientificName Division
done
