# Penggunaan Volume di Docker

## Penjelasan

Volume yang sudah kita buat dapat digunakan di dalam container. Keuntungan menggunakan volume adalah jika container dihapus, data akan tetap aman di dalam volume. Ini sangat berguna untuk menyimpan data yang harus dipertahankan meskipun container yang menggunakan data tersebut dihapus.

## Cara Menggunakan Volume di Container

Cara menggunakan volume di container sama dengan menggunakan bind mount. Kita bisa menggunakan parameter `--mount`, tetapi dengan menggunakan `type=volume` dan `source` nama volume.

### Step Awal: Membuat Volume

Untuk membuat volume, kita bisa menggunakan perintah:

```bash
docker volume create redisvolume

# Setelah volume dibuat, kita bisa menggunakannya di dalam container dengan perintah berikut:
docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=redisvolume,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest

# Menghentikan Container Volume
docker container stop mongovolume

# Menghapus Container Volume
docker container rm mongovolume
