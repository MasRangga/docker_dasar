# Menggunakan Container Exec dalam Docker

Saat kita membuat container, aplikasi yang terdapat di dalam container hanya bisa diakses dari dalam container itu sendiri. Oleh karena itu, kadang kita perlu masuk ke dalam container untuk melakukan debugging atau pengaturan lebih lanjut. 

Untuk masuk ke dalam container, kita bisa menggunakan fitur **Container Exec**, yang digunakan untuk mengeksekusi kode program yang terdapat di dalam container.

## Masuk ke Container

Untuk masuk ke dalam container, kita dapat mengeksekusi program bash script yang terdapat di dalam container dengan bantuan perintah **Container Exec**:

```bash
docker container exec -i -t containerId/namacontainer /bin/bash
