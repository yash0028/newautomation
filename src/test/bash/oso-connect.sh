#!/usr/bin/env bash

echo -n Username:
read osousername
echo

echo -n Passwords:
read -s osopassword
echo

oc login -u $osousername -p $osopassword

echo -n Deployment:
read osodeployment

arr=($(oc get pods | grep -o "$osodeployment[^ ]*"))


if [ ${#arr[@]} -eq 0 ]; then
    echo "Found no deployment that starts with '$osodeployment'"
elif [ "${#arr[@]}" -eq 1 ]; then
    echo "Found 1 deployment that starts with '$osodeployment'"
    index=1
else
    echo "Found ${#arr[@]} deployments that start with '$osodeployment'"
    echo "Please choose one"
#    echo $arr
    echo
    for (( c=0; c<${#arr[@]}; c++ )); do
        echo "[$c] -> ${arr[$c]}"
    done
    echo -n Option:
    read index

    echo "Using ${arr[$index]}"
fi



oc port-forward ${arr[$index]} 3306:3306
