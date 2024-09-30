# Bind Mounts dalam Docker

**Bind Mounts** adalah fitur dalam Docker yang memungkinkan kita untuk melakukan mounting (sharing) file atau folder dari sistem host ke dalam container. Fitur ini sangat berguna untuk:

- Mengirim konfigurasi dari luar container.
- Menyimpan data yang dibuat oleh aplikasi di dalam container ke folder di sistem host.

Jika file atau folder yang ditentukan tidak ada di sistem host, Docker secara otomatis akan membuatkannya.

## Melakukan Mounting

Untuk melakukan mounting, kita dapat menggunakan perintah berikut:

```bash
docker container create --name namacontainer \ --mount "type=bind,source=folder,destination=folder,readonly" \ image:tag
