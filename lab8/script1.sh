#!/bin/bash

curl -s "https://aviationweather.gov/api/data/metar?ids=KMCI&format=json&taf=false&hours=12&bbox=40%2C-90%2C45%2C-85" > aviation.json

for i in $(seq 0 5); do
	cat aviation.json | jq -r ".[$i].receiptTime"
done 
