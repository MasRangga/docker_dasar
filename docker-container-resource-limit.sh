# Pengaturan Batasan Sumber Daya pada Container Docker

## Penjelasan

Saat membuat container, secara default, container akan menggunakan semua CPU dan Memory yang diberikan ke Docker (untuk Mac dan Windows), dan akan menggunakan semua CPU dan Memory yang tersedia di sistem host (untuk Linux). Jika terjadi kesalahan, misalnya container terlalu banyak memakan CPU dan Memory, maka hal ini bisa berdampak pada performa container lain, atau bahkan pada sistem host itu sendiri. Oleh karena itu, ada baiknya ketika kita membuat container, kita memberikan **resource limit** terhadap container tersebut.

## Menentukan Batasan Memory

Saat membuat container, kita bisa menentukan jumlah memory yang bisa digunakan oleh container dengan menggunakan perintah `--memory`, diikuti dengan angka memory yang diperbolehkan untuk digunakan. Kita bisa menambahkan ukuran dalam bentuk:
- `b` (bytes)
- `k` (kilobytes)
- `m` (megabytes)
- `g` (gigabytes)

Contoh: `100m` artinya 100 megabytes.

## Contoh Penggunaan

### Step 1

Untuk membuat container dengan batasan sumber daya, kita bisa menggunakan perintah berikut:

```bash
docker container create --name contohnginxx --memory 100m --cpus 0.5 --publish 8081:80 nginx:alpine
