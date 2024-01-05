mkdir Volume

docker create --name=___archie___ $1

docker export ___archie___ > export.tar

docker stop ___archie___
docker rm ___archie___

tar -xf export.tar -C Volume/

rm export.tar
