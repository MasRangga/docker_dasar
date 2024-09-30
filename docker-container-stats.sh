# Melihat Penggunaan Resource pada Container Docker

## Penjelasan

Saat menjalankan beberapa container, penggunaan resource seperti CPU dan Memory di sistem host hanya terlihat digunakan oleh Docker saja. Kadang kita ingin melihat detail dari penggunaan resource untuk setiap container yang sedang berjalan. Untungnya, Docker memiliki kemampuan untuk melihat penggunaan resource dari tiap container yang sedang berjalan.

## Gunakan Perintah

Untuk melihat penggunaan resource dari tiap container, kita bisa menggunakan perintah:

```bash
docker container stats
