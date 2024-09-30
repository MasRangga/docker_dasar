Untuk melihat log aplikasi yang berjalan di dalam container, kita bisa menggunakan perintah berikut:

```bash
docker container logs containerId/namacontainer

# Atau jika ingin melihat log secara realtime, kita bisa gunakan perintah :
docker container logs -f containerId/namacontainer