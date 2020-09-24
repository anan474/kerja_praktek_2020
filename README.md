### Rancangan Dasar Sistem Informasi Jaringan di UPT.TIK

## Batasan

- Jika menggunakan sistem operasi Windows maka install XAMPP.
- Program dibuat dengan menggunakan framework php atau php native versi 7.2 (disesuaikan).
- Database yang digunakan adalah MySQL. Dengan manajemen menggunakan phpMyAdmin dan skema database yang disediakan.
- Peta dibuat dengan menggunakan selfhosted openstreetmap. (akan di jelaskan selanjutnya)

## Judul

Judul yang telah diambil sesuai dari [daftar judul](https://docs.google.com/document/d/1dGs90X77aI-ThaweZcBYOQqhhgbNdpOX_zUu4oUOu1g/edit?usp=sharing).

### Pemetaan kabel fiber optik di Universitas Tanjungpura (Judul 2)

Koneksi internet antar bangunan di Universitas Tanjungpura dibagikan dengan menggunakan kabel fiber optik dengan beberapa pusat distribusi (Judul 3). Dibutuhkan aplikasi (website) untuk memetakan jaringan kabel fiber optik tersebut sehingga dapat digunakan sebagai sarana inventarisasi dan model peracangan pengembangan jaringan serta memudahkan teknisi dalam melakukan troubleshooting. Berikut hal yang akan dilakukan:

- Rancang website untuk melakukan input data kabel fiber optik di Universitas Tanjungpura. Dengan database yang sudah disediakan.
- Bangun website untuk melakukan input data kabel fiber optik.
- Dari data kabel fiber optik yang disediakan, gambar pada peta openstreetmap dan simpan data melalui website yang dibuat.
- Kembangkan website untuk bisa menampilkan peta yang sudah digambar dan daftar data kabel fiber optik.

### Pemetaan ODC dan OTB di Universitas Tanjungpura (Judul 3)

> ODC = Optical Distribution Core

> ODP = Optical Distribution Pole

Universitas Tanjungpura memiliki area yang luar, untuk memberi pelayanan internet ke seluruh bangunan tidak dapat langsung dihubungkan dari UPT TIK ke gedung tersebut, maka digunakan ODC dan OTB sebagai titik distribusi jaringan internet. Dibutuhkan aplikasi (website) untuk memetakan titik ODC dan OTB juga koneksi di titik distribusi tersebut sehingga dapat digunakan sebagai sarana inventarisasi dan model peracangan pengembangan jaringan serta memudahkan teknisi dalam melakukan troubleshooting. Berikut hal yang akan dilakukan:

- Rancang website untuk melakukan input data titik ODC dan OTB dan distribusi koneksi di Universitas Tanjungpura. Dengan database yang sudah disediakan.
- Bangun website untuk melakukan input data titik ODC dan OTB dan distribusi koneksi.
- Dari data titik ODC dan OTB dan distribusi koneksi yang disediakan, gambar pada peta openstreetmap dan simpan data melalui website yang dibuat.
- Kembangkan website untuk bisa menampilkan peta yang sudah digambar, visualisasi distirbusi koneksi pada ODC dan OTB, dan daftar data titik ODC dan OTB dan distribusi koneksi.

### Pemetaan Access Point dan Switch (Judul 4)

Pada masing masing gedung di Universitas tanjungpura koneksi internet yang diterima dari pusat didistribusikan menggunakan switch dan access point agar dapat dipakai oleh pengguna.
Dibutuhkan aplikasi (website) untuk memetakan titik switch dan access point di Universitas Tanjungpura sehingga dapat digunakan sebagai sarana inventarisasi dan model peracangan pengembangan jaringan serta memudahkan teknisi dalam melakukan troubleshooting. Berikut hal yang akan dilakukan:

- Rancang website untuk melakukan input data titik switch dan access point di Universitas Tanjungpura. Dengan database yang sudah disediakan.
- Bangun website untuk melakukan input data titik switch dan access point.
- Dari data titik switch dan access point yang disediakan, gambar pada peta openstreetmap dan simpan data melalui website yang dibuat.
- Kembangkan website untuk bisa menampilkan peta yang sudah digambar dan daftar data titik switch dan access point di Univeritas Tanjungpura.

## Diagram

Download repository ini lalu buka [web draw io](https://app.diagrams.net/), open diagram.drawio dari repository ini. Disitu ada:

- Overview arsitektur jaringan
- Pola pengembagan aplikasi
- Overview arsitektur aplikasi
- dan Struktur database yang digunakan

## Database

Gunakan phpMyAdmin untuk lebih mudah mengolah database.
Dowload repository ini jika belum, lalu buka phpMyAdmin di perangkat kamu, lalu buat database dengan nama `jaringan_untan`, lalu import `jaringan_untan.sql` di repository ini.

## Peta

Peta yang digunakan adalah peta [openstreetmap](https://www.openstreetmap.org). Silahkan buka dan coba coba digunakan. Saat ini sedang dibangun server openstreetmap untuk UNTAN sendiri yang nanti akan digunakan untuk memetakan tugas kerja praktek ini.

## Pertanyaan

Hubungi Agung (085251293285)
