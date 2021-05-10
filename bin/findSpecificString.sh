#!/bin/bash

##echo $#

if [ "$#" -ne 1 ]
then
    echo "findSpecificString.sh: One parameter needed"
    exit 1
##else
    ##echo "First parameter is: $1"
fi

##if [ -d $1 ]
##then
##    echo "folder $1 exists ... "
##else
##    echo "folder $1 not exists ... "
##fi

FILES=$(find "$1" -name '*.hql')
for f in $FILES; do
    ##grep -i -x '[-]{2,}.*digidata.*' $f
    ##grep -i -x '.*--.*digidata' $f
    ##echo 'file is ', $f
    ##output=$(grep -i -x '.*digidata_.*' $f)
    ##echo 'output is |'$output'|'
    ##echo 'outputlen is |'$outputlen'|'
    ##len=$(echo -n $output| wc -c)
    ##echo 'length is ', $len

    outputlen=$(grep -i -x '.*digidata_.*' $f | wc -c)
    if [ "$outputlen" -gt 0 ]; then
        echo "$outputlen"
        exit 1
    fi
done