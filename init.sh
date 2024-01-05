mkdir Volume

docker create --name=archie $1

docker export archie > export.tar

docker stop archie
docker rm archie

tar -xf export.tar -C Volume/

rm export.tar
