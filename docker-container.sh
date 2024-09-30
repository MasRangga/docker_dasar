# Manajemen Container di Docker

## Melihat Container

Untuk melihat semua container, baik yang sedang berjalan maupun yang tidak di Docker Daemon, kita bisa menggunakan perintah:

```bash
docker container ls -a

## Untuk membuat container, kita bisa menggunakan perintah:
docker container create --name namacontainer namaimage:tag

## Untuk menjalankan container yang sudah kita buat, kita bisa menggunakan perintah:
docker container start containerId/namacontainer

## Menghentikan Container
docker container stop containerId/namacontainer

## Menghapus Container
docker container rm containerId/namacontainer
```