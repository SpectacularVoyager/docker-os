mkdir Volume

docker create --name=linuxbuild $1

docker export linuxbuild > export.tar

docker stop linuxbuild
docker rm linuxbuild

tar -xf export.tar -C Volume/

rm export.tar
