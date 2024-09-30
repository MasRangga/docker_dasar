# Penggunaan Environment Variables dalam Docker

Saat membuat aplikasi, menggunakan **Environment Variables** adalah salah satu teknik agar konfigurasi aplikasi bisa diubah secara dinamis. Dengan menggunakan environment variables, kita dapat mengubah konfigurasi aplikasi tanpa harus mengubah kode aplikasinya lagi. 

Docker container memiliki parameter yang dapat kita gunakan untuk mengirim environment variables ke aplikasi yang terdapat di dalam container.

## Menambah Environment Variables

Untuk menambah environment variable, kita bisa menggunakan perintah `--env` atau `-e`. Contoh sintaksisnya adalah sebagai berikut:

```bash
docker container create --name namacontainer \ --env KEY="value" \ --env KEY2="value" \ image:tag
