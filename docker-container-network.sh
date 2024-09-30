

# Membuat jaringan baru dengan driver bridge
```bash
docker network create --driver bridge mongonetwork

# Membuat container MongoDB dengan username dan password
docker container create --name mongodb \
  --network mongonetwork \
  --env MONGO_INITDB_ROOT_USERNAME=rangga \
  --env MONGO_INITDB_ROOT_PASSWORD=rangga \
  mongo:latest

# Menarik image terbaru untuk Mongo Express
docker image pull mongo-express:latest

# Membuat container Mongo Express yang terhubung ke jaringan dan mengatur konfigurasi MongoDB
docker container create --name mongodbexpress \
  --network mongonetwork \
  --publish 8081:8081 \
  --env ME_CONFIG_MONGODB_URL="mongodb://rangga:rangga@mongodb:27017/" \
  mongo-express:latest

# Memulai container MongoDB
docker container start mongodb

# Memulai container Mongo Express
docker container start mongodbexpress

# Memutuskan container MongoDB dari jaringan mongonetwork
docker network disconnect mongonetwork mongodb

# Menghubungkan kembali container MongoDB ke jaringan mongonetwork
docker network connect mongonetwork mongodb
