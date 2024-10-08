# Docker Dasar

Docker merupakan platform yang digunakan untuk mengembangkan, mengirim, dan menjalankan aplikasi dalam kontainer. Kontainer adalah unit standar perangkat lunak yang membungkus kode dan semua dependensinya, sehingga aplikasi dapat dijalankan dengan konsisten di berbagai lingkungan. Berikut adalah beberapa konsep dasar tentang Docker:

## 1. **Apa itu Kontainer?**
Kontainer adalah lingkungan ringan dan terisolasi yang memungkinkan Anda menjalankan aplikasi. Berbeda dengan mesin virtual, kontainer berbagi kernel sistem operasi host tetapi tetap mempertahankan isolasi.

## 2. **Docker Images**
Gambar Docker adalah cetak biru dari kontainer. Mereka adalah file read-only yang berisi semua yang diperlukan untuk menjalankan aplikasi, termasuk kode, pustaka, dan pengaturan. Anda dapat membangun gambar Anda sendiri atau menggunakan gambar yang tersedia di Docker Hub.

## 3. **Docker Hub**
Docker Hub adalah repositori cloud yang memungkinkan Anda untuk menyimpan dan mendistribusikan gambar Docker. Anda dapat menemukan banyak gambar siap pakai di Docker Hub untuk digunakan dalam proyek Anda.

## 4. **Dockerfile**
Dockerfile adalah file teks yang berisi instruksi untuk membangun gambar Docker. Dengan menggunakan Dockerfile, Anda dapat mengautomasi proses pembuatan gambar dan memastikan bahwa gambar yang dihasilkan konsisten.

## 5. **Perintah Dasar Docker**
- `docker run`: Menjalankan kontainer baru dari gambar.
- `docker ps`: Menampilkan kontainer yang sedang berjalan.
- `docker images`: Menampilkan daftar gambar yang tersedia di sistem.
- `docker stop`: Menghentikan kontainer yang sedang berjalan.

## 6. **Keuntungan Menggunakan Docker**
- **Portabilitas**: Kontainer dapat dijalankan di mana saja tanpa perlu khawatir tentang perbedaan lingkungan.
- **Isolasi**: Setiap kontainer berjalan dalam lingkungan terisolasi, menghindari konflik antara aplikasi.
- **Skalabilitas**: Memudahkan untuk meningkatkan atau menurunkan skala aplikasi dengan cepat.