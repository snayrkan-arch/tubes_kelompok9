LAPORAN TUGAS BESAR 
PEMROGRAMAN LANJUT 
 

SISTEM INFORMASI PEMESANAN DAN PEMBAYARAN BERBASIS WEB PADA WARUNG BU WAWAT MENGGUNAKAN PHP OOP DAN ARSITEKTUR MVC

Kelompok 9 :
Muhammad Rasya Al Khalifi	10251071
Nurul Syahira Az’Zahra 	10251047
Muhammad Rizqi Hidayah	10251086


PROGRAM STUDI SISTEM INFORMASI
JURUSAN TEKNIK ELEKTRO, INFORMATIKA, DAN BISNIS
FAKULTAS SAINS DAN TEKNOLOGI INFORMASI
BALIKPAPAN
2026
DAFTAR ISI

BAB I
PENDAHULUAN	4
1.1. Judul	4
1.2. Latar Belakang	4
1.3. Tujuan Pembuatan Aplikasi	5
BAB II
METODE PENELITIAN	6
2.1. Diagram Alir Penelitian	6
2.2. Planning	6
2.3. Design	6
2.3.1. Entity Relationship Diagram	6
2.3.2. Class Diagram	6
2.4. Development	6
BAB III
HASIL DAN PEMBAHASAN	7
3.1. Hasil Development	7
3.1.1. Struktur Proyek dan Arsitektur MVC	7
3.1.2. Implementasi PDO (PHP Data Objects)	7
3.1.3. Implementasi Query Builder Database	7
3.1.4. Implementasi OOp (Object-Oriented Programming)	7
3.1.5. Implementasi Validasi Data	7
3.2. Analisis Fitur Utama	7
3.2.1. Fitur 1	7
3.2.2. Fitur 2 dst	7
3.3. Pengujian Sistem	8
3.3.1. Hasil Uji Create	8
3.3.2. Hasil Uji Read	8
3.3.3. Hasil Uji Update	8
3.3.4. Hasil Uji Delete	8
3.3.5. Hasil Uji lainnya	8
BAB IV	9
PENUTUP	9
4.1. Kesimpulan	9
4.2. Saran	9
DAFTAR PUSTAKA	10
LAMPIRAN	11

RINGKASAN 
Tuliskan ringkasan setelah seluruh bab selesai dikerjakan, dalam satu paragraf sepanjang 150–250 kata. Ringkasan memuat: masalah yang melatarbelakangi pembuatan aplikasi, tujuan aplikasi, metode pengembangan yang digunakan (misalnya Extreme Programming), teknologi utama (PHP, arsitektur MVC, PDO, MySQL), fitur-fitur utama yang berhasil dibangun, serta hasil pengujian secara singkat. Hindari menulis kutipan, gambar, atau potongan kode di bagian ini.
Kata Kunci: Tuliskan 3–5 kata kunci yang mewakili isi laporan, dipisahkan tanda titik koma dan diurutkan sesuai abjad. Contoh: MVC; OOP; PDO; PHP; Sistem Informasi Inventaris.

BAB I
PENDAHULUAN
Judul
Sistem Informasi Pemesanan dan Pembayaran Berbasis Web pada Warung Bu Wawat Menggunakan PHP OOP dan Arsitektur MVC
Judul tersebut menggambarkan aplikasi berbasis web yang dikembangkan untuk membantu kegiatan operasional Warung Bu Wawat, khususnya dalam proses pemesanan dan pembayaran. Aplikasi ini ditujukan kepada pemilik dan karyawan Warung Bu Wawat sebagai pihak yang mengelola menu, mencatat pesanan pelanggan, serta mengelola informasi pembayaran.
Sistem ini dibangun untuk membantu mengatasi permasalahan pencatatan pesanan yang masih dilakukan secara manual dan berpotensi menimbulkan kesalahan, terutama ketika beberapa pesanan diterima dalam waktu bersamaan. Melalui aplikasi ini, pengelolaan data menu, pesanan, detail pesanan, dan pembayaran diharapkan menjadi lebih terstruktur.
Dalam pengembangannya, aplikasi menggunakan PHP dengan konsep Object-Oriented Programming (OOP) serta arsitektur Model-View-Controller (MVC) untuk memisahkan pengelolaan data, proses aplikasi, dan tampilan sehingga struktur kode lebih terorganisasi serta mudah dikembangkan.

Latar Belakang
Perkembangan teknologi informasi memberikan peluang bagi berbagai bidang usaha untuk meningkatkan efektivitas kegiatan operasional melalui pemanfaatan sistem informasi. Salah satu penerapannya adalah penggunaan aplikasi berbasis web untuk membantu proses pengelolaan data dan transaksi. Dengan adanya sistem informasi, kegiatan pencatatan yang sebelumnya dilakukan secara manual dapat dikelola secara lebih terstruktur sehingga informasi yang dibutuhkan lebih mudah disimpan, diakses, dan ditelusuri.
Warung Bu Wawat merupakan usaha kuliner yang menyediakan berbagai pilihan makanan dan minuman. Berdasarkan hasil observasi dan wawancara dengan pemilik usaha, kegiatan pemesanan di Warung Bu Wawat dilakukan secara langsung maupun melalui WhatsApp. Namun, proses pencatatan pesanan masih dilakukan secara manual. Kondisi tersebut dapat menimbulkan kendala ketika beberapa pelanggan melakukan pemesanan dalam waktu yang bersamaan. Salah satu permasalahan yang dapat terjadi adalah kesalahan dalam mencatat jenis pesanan, seperti tertukarnya pesanan ayam goreng dengan ayam bakar, sehingga pesanan perlu diperiksa dan dikoreksi kembali.
Selain proses pemesanan, Warung Bu Wawat juga menyediakan metode pembayaran secara tunai maupun QRIS. Informasi pesanan dan pembayaran perlu dicatat dengan baik agar data transaksi dapat dikelola dan ditelusuri kembali ketika dibutuhkan. Apabila pencatatan masih dilakukan secara manual, pengelolaan informasi transaksi menjadi kurang terpusat dan berpotensi menyulitkan proses pemeriksaan kembali.
Berdasarkan kondisi tersebut, diperlukan sebuah sistem informasi pemesanan dan pembayaran berbasis web yang dapat membantu pemilik dan karyawan Warung Bu Wawat dalam mengelola kegiatan transaksi. Sistem yang dikembangkan mencakup pengelolaan data menu, pencatatan pesanan, pengelolaan detail pesanan, serta pencatatan pembayaran. Seluruh fungsi tersebut dirancang dalam satu aplikasi agar informasi transaksi dapat tersimpan secara terstruktur dan mengurangi risiko kesalahan pencatatan.
Dalam proses pengembangannya, aplikasi ini menggunakan bahasa pemrograman PHP dengan konsep Object-Oriented Programming (OOP) dan arsitektur Model-View-Controller (MVC). Konsep OOP digunakan untuk mengorganisasi kode program ke dalam objek dan kelas, sedangkan arsitektur MVC digunakan untuk memisahkan bagian pengelolaan data, proses aplikasi, dan tampilan. Penerapan keduanya diharapkan dapat menghasilkan struktur aplikasi yang lebih terorganisasi serta memudahkan proses pengembangan dan pemeliharaan sistem.
Dengan demikian, pembangunan Sistem Informasi Pemesanan dan Pembayaran Berbasis Web pada Warung Bu Wawat diharapkan dapat membantu proses pengelolaan transaksi menjadi lebih terstruktur, mempermudah pencatatan pesanan dan pembayaran, serta mengurangi potensi kesalahan yang terjadi dalam proses pencatatan manual.

Tujuan Pembuatan Aplikasi
Tujuan dari pembuatan aplikasi Sistem Informasi Pemesanan dan Pembayaran Berbasis Web pada Warung Bu Wawat adalah sebagai berikut:
Membangun aplikasi berbasis web untuk membantu pemilik dan karyawan Warung Bu Wawat dalam mengelola proses pemesanan dan pembayaran.
Menyediakan fitur pengelolaan data menu yang memungkinkan pengguna menambah, melihat, mengubah, dan menghapus informasi menu.
Mempermudah proses pencatatan pesanan dan detail pesanan agar informasi setiap transaksi tersimpan secara terstruktur dan mengurangi risiko kesalahan pencatatan.
Menyediakan fitur pencatatan pembayaran yang mendukung metode pembayaran tunai dan QRIS serta menghubungkan informasi pembayaran dengan pesanan terkait.
Menerapkan konsep Object-Oriented Programming (OOP), arsitektur Model-View-Controller (MVC), PDO, dan Query Builder dalam pengembangan aplikasi menggunakan PHP.
Menerapkan validasi data untuk memastikan informasi yang dimasukkan pengguna sesuai dengan ketentuan sebelum disimpan ke dalam database.
Melakukan pengujian terhadap fungsi-fungsi aplikasi, termasuk operasi Create, Read, Update, dan Delete (CRUD), untuk memastikan fitur berjalan sesuai dengan hasil yang diharapkan.


BAB II
METODE PENELITIAN

Diagram Alir Penelitian
Metode pengembangan perangkat lunak yang digunakan dalam pembangunan Sistem Informasi Pemesanan dan Pembayaran Berbasis Web pada Warung Bu Wawat adalah Extreme Programming (XP). Extreme Programming merupakan salah satu metode pengembangan perangkat lunak yang menerapkan proses pengembangan secara bertahap dan berulang (iteratif), sehingga setiap bagian aplikasi dapat dikembangkan, diperiksa, dan diperbaiki sesuai kebutuhan.
Metode Extreme Programming memiliki empat tahapan utama, yaitu:
Planning (Perencanaan)
Tahap ini dilakukan dengan mengidentifikasi permasalahan dan kebutuhan pengguna pada Warung Bu Wawat. Kebutuhan tersebut digunakan untuk menentukan fitur-fitur yang akan dikembangkan, seperti pengelolaan data menu, pencatatan pesanan, detail pesanan, dan pembayaran.
Design (Perancangan)
Tahap ini berfokus pada perancangan sistem sebelum proses pengkodean dilakukan. Perancangan meliputi Entity Relationship Diagram (ERD) untuk menggambarkan hubungan antarentitas dalam database, Class Diagram untuk menggambarkan struktur kelas program, serta rancangan antarmuka aplikasi.
Coding (Development)
Tahap ini merupakan proses menerjemahkan rancangan sistem ke dalam kode program. Aplikasi dikembangkan menggunakan PHP dengan konsep Object-Oriented Programming (OOP), arsitektur Model-View-Controller (MVC), PDO, dan Query Builder, serta menggunakan MySQL sebagai sistem pengelolaan basis data.
Testing (Pengujian)
Tahap ini dilakukan untuk memastikan setiap fitur aplikasi berjalan sesuai dengan kebutuhan yang telah ditentukan. Pengujian dilakukan terhadap fungsi-fungsi utama aplikasi, termasuk operasi Create, Read, Update, dan Delete (CRUD), serta validasi data. Apabila ditemukan kesalahan, dilakukan perbaikan pada bagian yang bermasalah sebelum pengujian kembali dilakukan.
Metode Extreme Programming dipilih karena memungkinkan proses pengembangan aplikasi dilakukan secara bertahap dan berulang. Setiap tahapan dapat dievaluasi sehingga kesalahan atau kekurangan pada aplikasi dapat diketahui lebih awal dan diperbaiki sebelum aplikasi diselesaikan. Dengan demikian, metode ini sesuai untuk pengembangan sistem pemesanan dan pembayaran Warung Bu Wawat yang memiliki beberapa fitur utama yang perlu dibangun dan diuji secara terstruktur.

Gambar 2.1
Planning
Tahap Planning merupakan tahap awal dalam metode Extreme Programming (XP) yang dilakukan untuk mengidentifikasi kebutuhan pengguna dan menentukan ruang lingkup pengembangan aplikasi. Pada tahap ini, perencanaan dilakukan berdasarkan permasalahan dan kebutuhan yang telah diperoleh melalui wawancara dengan pemilik Warung Bu Wawat serta hasil analisis pada tahap sebelumnya. Perencanaan bertujuan untuk menentukan fitur yang akan dikembangkan, kebutuhan sistem, pengguna aplikasi, serta pembagian kegiatan pengembangan agar proses pembangunan sistem dapat dilakukan secara terarah.
Identifikasi Kebutuhan Pengguna
Berdasarkan hasil wawancara dan analisis kebutuhan, Warung Bu Wawat membutuhkan sistem informasi berbasis web yang dapat membantu pengelolaan pemesanan dan pembayaran. Proses pencatatan yang sebelumnya dilakukan secara manual berpotensi menimbulkan kesalahan, terutama ketika beberapa pesanan diterima dalam waktu bersamaan. Oleh karena itu, sistem direncanakan untuk mengelola informasi menu, pesanan, detail pesanan, dan pembayaran secara terstruktur.
Kebutuhan pengguna yang menjadi dasar perencanaan pengembangan sistem meliputi:
Pengelolaan data menu, meliputi informasi nama menu, harga, dan status ketersediaan.
Pencatatan pesanan yang memuat informasi transaksi pemesanan.
Pengelolaan detail pesanan yang mencatat menu, jumlah, harga satuan, dan subtotal setiap menu dalam suatu pesanan.
Pencatatan pembayaran yang menghubungkan informasi pembayaran dengan pesanan terkait, termasuk metode pembayaran tunai dan QRIS.
Kebutuhan tersebut digunakan sebagai dasar dalam menentukan fitur aplikasi yang akan dikembangkan.
Identifikasi Kebutuhan Pengguna
Berdasarkan hasil wawancara dan analisis kebutuhan, Warung Bu Wawat membutuhkan sistem informasi berbasis web yang dapat membantu pengelolaan pemesanan dan pembayaran. Proses pencatatan yang sebelumnya dilakukan secara manual berpotensi menimbulkan kesalahan, terutama ketika beberapa pesanan diterima dalam waktu bersamaan. Oleh karena itu, sistem direncanakan untuk mengelola informasi menu, pesanan, detail pesanan, dan pembayaran secara terstruktur.



Design
Jelaskan rancangan sistem yang dibuat sebelum masuk ke tahap pengkodean. Bagian ini berisi gambaran umum rancangan basis data dan struktur kelas program yang dirinci pada subbab berikut. Bila ada, tambahkan rancangan antarmuka (mockup atau wireframe) halaman-halaman utama aplikasi.
Entity Relationship Diagram
Tampilkan Entity Relationship Diagram (ERD) dari basis data aplikasi lengkap dengan nomor dan keterangan gambar. Jelaskan setiap entitas (tabel) beserta atribut, primary key, dan foreign key, kemudian jelaskan relasi antarentitas dan kardinalitasnya (one-to-one, one-to-many, atau many-to-many). Pastikan ERD sesuai dengan tabel yang benar-benar dibuat di database aplikasi.
Class Diagram
Tampilkan Class Diagram yang menggambarkan kelas-kelas dalam aplikasi, terutama kelas Model, Controller, dan kelas pendukung seperti kelas koneksi database atau Query Builder. Untuk setiap kelas, cantumkan atribut dan method beserta visibilitasnya (public, private, protected). Jelaskan hubungan antarkelas, misalnya pewarisan (inheritance) dari kelas induk seperti BaseModel atau BaseController, asosiasi, atau dependensi.
Development
Jelaskan proses pengkodean aplikasi berdasarkan rancangan yang telah dibuat. Uraikan urutan pengerjaan (misalnya membuat struktur folder, koneksi database, model, controller, lalu view), alat bantu yang digunakan (text editor, Git/GitHub untuk version control, XAMPP/Laragon), serta kendala yang ditemui selama pengembangan dan cara mengatasinya. Pembahasan rinci hasil kode ditulis di Bab III.

BAB III
HASIL DAN PEMBAHASAN
Hasil Development
Jelaskan secara umum hasil pengembangan aplikasi: teknologi yang digunakan, gambaran alur kerja aplikasi, dan bagian-bagian implementasi teknis yang dibahas pada subbab berikut. Setiap potongan kode yang ditampilkan harus diberi nomor dan keterangan (contoh: Kode 3.1 Kelas Database), cukup bagian pentingnya saja, lalu dijelaskan maksud dan cara kerjanya.
Struktur Proyek dan Arsitektur MVC
Tampilkan struktur folder proyek (dalam bentuk tangkapan layar atau tree), lalu jelaskan fungsi setiap folder dan file utama, misalnya folder app/models, app/controllers, app/views, config, dan public. Jelaskan bagaimana arsitektur MVC diterapkan: peran Model dalam mengelola data, View dalam menampilkan antarmuka, dan Controller sebagai penghubung keduanya. Jelaskan juga alur sebuah request dari pengguna, mulai dari routing, diproses Controller, mengambil data lewat Model, hingga ditampilkan oleh View.
Implementasi PDO (PHP Data Objects)
Tampilkan potongan kode koneksi database menggunakan PDO, lalu jelaskan konfigurasi yang digunakan (DSN, username, password, dan opsi seperti PDO::ATTR_ERRMODE). Jelaskan penggunaan prepared statement dan binding parameter untuk mencegah SQL Injection, serta cara penanganan error menggunakan try-catch (PDOException). Berikan contoh penggunaannya pada salah satu proses di aplikasi.
Implementasi Query Builder Database
Jelaskan kelas atau method Query Builder yang dibuat untuk menyusun query secara dinamis, misalnya method select(), where(), insert(), update(), delete(), dan orderBy(). Tampilkan potongan kodenya dan contoh pemanggilannya di Model, lalu jelaskan bagaimana Query Builder mengubah pemanggilan method tersebut menjadi perintah SQL. Jelaskan juga keuntungan penggunaannya dibandingkan menulis query SQL secara langsung di setiap bagian kode.
Implementasi OOP (Object-Oriented Programming)
Jelaskan penerapan konsep OOP dalam aplikasi disertai potongan kode untuk setiap konsep: class dan object, encapsulation (penggunaan access modifier serta getter dan setter), inheritance (misalnya Model turunan dari kelas induk), polymorphism (method overriding atau interface), dan abstraction (abstract class atau interface). Jika menggunakan namespace atau autoloading, jelaskan juga. Tunjukkan di bagian mana saja setiap konsep diterapkan dan apa manfaatnya bagi aplikasi.
Implementasi Validasi Data
Jelaskan mekanisme validasi data yang diterapkan sebelum data disimpan ke database, misalnya validasi field wajib diisi, format email, panjang karakter, tipe angka, dan data unik. Tampilkan potongan kode validasi (fungsi atau kelas Validator) dan jelaskan di mana validasi dijalankan (sisi server di Controller atau Model, dan bila ada di sisi klien). Jelaskan juga cara menampilkan pesan error kepada pengguna serta upaya sanitasi input untuk mencegah XSS.


Analisis Fitur Utama
Jelaskan daftar fitur utama aplikasi secara singkat, lalu bahas setiap fitur pada subbab tersendiri. Urutkan fitur berdasarkan alur penggunaan aplikasi atau berdasarkan tingkat kepentingannya.
Fitur 1 
Tuliskan nama fitur sebagai judul subbab ini. Tampilkan tangkapan layar antarmuka fitur dengan nomor dan keterangan gambar, lalu jelaskan fungsi fitur, siapa pengguna yang dapat mengaksesnya, langkah penggunaannya, dan alur proses di baliknya (Controller dan Model yang terlibat). Bila perlu, sertakan potongan kode yang paling penting dari fitur tersebut.
Fitur 2 dst
Ulangi format yang sama seperti Fitur 1 untuk fitur-fitur berikutnya. Ganti judul subbab dengan nama fitur dan tambahkan subbab baru sesuai jumlah fitur utama aplikasi.
Pengujian Sistem
Jelaskan metode pengujian yang digunakan, misalnya Black Box Testing, beserta lingkungan pengujiannya (browser, sistem operasi, versi PHP dan database). Hasil pengujian setiap operasi disajikan dalam bentuk tabel dengan kolom: No, Skenario Pengujian, Data Uji, Hasil yang Diharapkan, Hasil Aktual, dan Status (Berhasil/Gagal). Uji tidak hanya kondisi normal, tetapi juga kondisi salah seperti input kosong atau format tidak sesuai.
Hasil Uji Create
Sajikan tabel hasil pengujian proses menambah data (Create), termasuk skenario input valid dan input tidak valid untuk menguji validasi. Lampirkan tangkapan layar form input, pesan berhasil atau pesan error, serta bukti data tersimpan di database, lalu jelaskan hasilnya.
Hasil Uji Read
Sajikan tabel hasil pengujian proses menampilkan data (Read), misalnya menampilkan daftar data, detail data, pencarian, filter, atau pagination. Lampirkan tangkapan layar hasilnya dan pastikan data yang tampil sesuai dengan isi database.
Hasil Uji Update
Sajikan tabel hasil pengujian proses mengubah data (Update), termasuk skenario data valid dan tidak valid. Lampirkan tangkapan layar sebelum dan sesudah data diubah, lalu jelaskan apakah perubahan tersimpan dengan benar di database.
Hasil Uji Delete
Sajikan tabel hasil pengujian proses menghapus data (Delete), termasuk konfirmasi sebelum penghapusan dan perilaku sistem jika data masih berelasi dengan tabel lain. Lampirkan tangkapan layar sebelum dan sesudah penghapusan, lalu jelaskan hasilnya.
Hasil Uji lainnya
Sajikan hasil pengujian fitur lain di luar CRUD, misalnya login dan logout, pembatasan hak akses berdasarkan peran pengguna, upload file, export laporan, atau fitur khusus aplikasi kalian. Gunakan format tabel yang sama dan jelaskan hasilnya. Jika tidak ada pengujian tambahan, subbab ini boleh dihapus.



BAB IV 
PENUTUP
Kesimpulan
Tuliskan kesimpulan yang menjawab setiap tujuan pembuatan aplikasi pada subbab 1.3, sebaiknya dalam bentuk poin dengan urutan yang sama. Kesimpulan didasarkan pada hasil implementasi dan pengujian di Bab III, bukan mengulang teori. Contoh: Aplikasi berhasil dibangun dengan arsitektur MVC dan seluruh fitur CRUD berjalan sesuai skenario pengujian.

Saran
Tuliskan saran untuk pengembangan aplikasi selanjutnya berdasarkan keterbatasan yang ditemukan selama pengerjaan, misalnya penambahan fitur, peningkatan keamanan, perbaikan tampilan, pembuatan versi mobile, atau integrasi dengan sistem lain. Saran harus realistis dan berkaitan dengan aplikasi yang dibuat.

DAFTAR PUSTAKA
Tuliskan seluruh sumber yang dirujuk dalam laporan (jurnal, buku, dokumentasi resmi PHP, artikel ilmiah) menggunakan gaya sitasi yang konsisten, misalnya APA atau IEEE. Urutkan sesuai abjad (APA) atau sesuai urutan kemunculan sitasi (IEEE). Hanya cantumkan sumber yang benar-benar dikutip di dalam isi laporan.
LAMPIRAN
Lampirkan bahan pendukung yang tidak dimasukkan ke dalam isi laporan, misalnya tautan repository GitHub proyek, tautan video demo aplikasi, dump struktur database (file .sql), tangkapan layar tambahan, user manual singkat, dan bukti pembagian tugas kelompok. Beri judul dan nomor pada setiap lampiran (contoh: Lampiran 1 Tautan Repository).

