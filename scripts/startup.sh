#!/bin/bash
settings="settings.json"
if [ -e "$settings" ]
then
    meteor --settings settings.json
else
    meteor 
fi

