#!/bin/bash

files=( "https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Alabama.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Alaska.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Arizona.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Arkansas.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/California.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Colorado.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Connecticut.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Delaware.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/DistrictofColumbia.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Florida.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Georgia.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Hawaii.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Idaho.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Illinois.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Indiana.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Iowa.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Kansas.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Kentucky.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Louisiana.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Maine.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Maryland.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Massachusetts.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Michigan.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Minnesota.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Mississippi.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Missouri.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Montana.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Nebraska.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Nevada.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/NewHampshire.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/NewJersey.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/NewMexico.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/NewYork.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/NorthCarolina.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/NorthDakota.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Ohio.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Oklahoma.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Oregon.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Pennsylvania.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/RhodeIsland.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/SouthCarolina.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/SouthDakota.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Tennessee.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Texas.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Utah.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Vermont.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Virginia.zip"
"https:/b/usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Washington.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/WestVirginia.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Wisconsin.zip"
"https://usbuildingdata.blob.core.windows.net/usbuildings-v1-1/Wyoming.zip")

mkdir -p 'data'
cd data

for i in "${files[@]}"
do
  echo "downloading " $i
  curl -OL $i
done

unzip \*.zip
rm -rf *.zip

cd  ../

