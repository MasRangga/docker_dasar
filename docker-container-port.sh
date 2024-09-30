# Penjelasan tentang Port Forwarding di Docker

Saat menjalankan container, container tersebut terisolasi di dalam Docker. Artinya, sistem host (misalnya laptop kita) tidak bisa mengakses aplikasi yang ada di dalam container secara langsung. Salah satu cara untuk mengakses aplikasi tersebut adalah dengan menggunakan **Container Exec** untuk masuk ke dalam container.

Biasanya, sebuah aplikasi berjalan pada port tertentu. Misalnya, saat kita menjalankan aplikasi Redis, dia berjalan pada port **6379**. Kita bisa melihat port apa yang digunakan ketika melihat semua daftar container.

## Port Forwarding

Docker memiliki kemampuan untuk melakukan **port forwarding**, yaitu meneruskan sebuah port yang terdapat di sistem host ke dalam Docker container. Cara ini cocok jika kita ingin mengekspos port yang terdapat di container ke luar melalui sistem host.

### Melakukan Port Forwarding

Untuk melakukan port forwarding, kita bisa menggunakan perintah berikut ketika membuat container:

```bash
docker container create --name namacontainer --publish hostport:containerport image:tag

Contoh Penggunaan :
docker container create --name alpine --publish 80:80 alpine:latest

docker container create --name nginx --publish 80:80 nginx:latest
