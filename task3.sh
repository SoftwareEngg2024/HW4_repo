#!/bin/bash
gawk -vFPAT='[^,]*|"[a-zA-Z0-9,.:("") ]*"' '$3 == 2 && $12 ~ /S/ && $6 != "" {print $0}' titanic.csv | sed 's/male/M/g; s/feM/F/g' | gawk -vFPAT='[^,]*|"[a-zA-Z0-9,.:("") ]*"' '{print $0; sum += $6; numc += 1.0} END {print "Average age: "sum/numc}'