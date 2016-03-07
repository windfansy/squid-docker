#!/bin/bash
if [ "$Sourcesystem" = "XYZ" ]; then 
    echo "Sourcesystem Matched" 
else
    echo "Sourcesystem is NOT Matched $Sourcesystem"  
fi;
sh test_next.sh
