#!/bin/bash

# Penjelasan
echo "============================"
echo "      Docker Volume         "
echo "============================"
echo "Fitur Bind Mounts sudah ada sejak Docker versi awal, di versi terbaru direkomendasikan menggunakan Docker Volume."
echo "Docker Volume mirip dengan Bind Mounts, bedanya adalah terdapat management Volume, "
echo "di mana kita bisa membuat Volume, melihat daftar Volume, dan menghapus Volume."
echo "Volume sendiri bisa dianggap storage yang digunakan untuk menyimpan data."
echo "Bedanya dengan Bind Mounts, pada bind mounts, data disimpan pada sistem host, "
echo "sedangkan pada volume, data di-manage oleh Docker."

# Melihat Docker Volume
echo "============================"
echo "      Melihat Docker Volume  "
echo "============================"
echo "Perintah untuk melihat daftar docker volume:"
docker volume ls

# Membuat Docker Volume
echo "============================"
echo "      Membuat Docker Volume  "
echo "============================"
echo "Perintah untuk membuat docker volume:"
docker volume create namavolume
echo "Volume 'namavolume' telah dibuat."

# Menghapus Docker Volume
echo "============================"
echo "      Menghapus Docker Volume "
echo "============================"
echo "Perintah untuk menghapus docker volume:"
# Ganti 'namavolume' dengan nama volume yang ingin dihapus
docker volume rm namavolume
echo "Volume 'namavolume' telah dihapus."
