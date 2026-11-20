# Perancangan dan Implementasi Basis Data Pemesanan dan Pembayaran pada Warung Bu Wawat

> **Laporan Terintegrasi — Analisis, Perancangan, dan Implementasi Basis Data**  
> Institut Teknologi Kalimantan · Fakultas Sains dan Teknologi Informasi · Sistem Informasi  
> Mata Kuliah Basis Data (SI2514010) · 2026

---

LEMBAR PENGESAHAN
Laporan terintegrasi berjudul "Perancangan dan Implementasi Basis Data Pemesanan dan
Pembayaran pada Warung Bu Wawat" telah disusun untuk memenuhi tugas mata kuliah
Basis Data.
Balikpapan, 29 Oktober 2026
Mengetahui,                                 Penyusun
Dosen Pengampu
Arif Wicaksono Septyanto, S.Kom., M.Kom.                  Muhammad Rasya Al Khalifi
NIM 10251071
KATA PENGANTAR
Puji syukur ke hadirat Tuhan Yang Maha Esa karena atas rahmat dan karunia-Nya, laporan
yang berjudul “Perancangan dan Implementasi Basis Data Pemesanan dan Pembayaran
pada Warung Bu Wawat” dapat diselesaikan dengan baik.
Laporan ini disusun untuk memenuhi tugas mata kuliah Basis Data sekaligus menerapkan
materi yang telah dipelajari, khususnya dalam perancangan dan implementasi basis data.
Pembahasan laporan mencakup analisis proses pemesanan dan pembayaran pada Warung Bu
Wawat, perancangan struktur basis data, pembuatan tabel, serta penerapan dan pengujian
perintah SQL.
Melalui perancangan ini, diharapkan sistem basis data dapat membantu pengelolaan transaksi
pemesanan dan pembayaran agar lebih terstruktur, memudahkan pencatatan data, serta
mengurangi risiko kesalahan dalam proses transaksi.
Penulis mengucapkan terima kasih kepada dosen pengampu mata kuliah Basis Data serta
pihak Warung Bu Wawat yang telah memberikan informasi dan membantu proses
penyusunan laporan ini.
Penulis menyadari bahwa laporan ini masih memiliki kekurangan. Oleh karena itu, kritik dan
saran yang membangun sangat diharapkan untuk penyempurnaan laporan di masa mendatang.
Semoga laporan ini dapat memberikan manfaat bagi pembaca dan menjadi sarana untuk
memahami penerapan basis data dalam kegiatan usaha.
Balikpapan, 29 Oktober 2026
Penulis

## BAB I — PENDAHULUAN

### 1.1 Latar Belakang
Perkembangan teknologi informasi dapat membantu pelaku usaha dalam mengelola
data dan menjalankan kegiatan operasional secara lebih terstruktur. Salah satu penerapannya
adalah penggunaan basis data untuk menyimpan dan mengelola informasi pesanan serta
pembayaran sehingga data lebih mudah dicari dan digunakan kembali.
Warung Bu Wawat merupakan usaha kuliner milik Ibu Watini yang berdiri pada 30
Mei 2024. Warung ini menyediakan berbagai menu makanan, seperti ayam geprek, ayam
lalapan goreng dan bakar, ikan nila goreng dan bakar, serta steak ayam. Selain itu, tersedia
berbagai makanan ringan, seperti tahu bakso, pisang keju, ayam keju, dan lumpia keju.
Berdasarkan informasi yang diperoleh, proses pemesanan di Warung Bu Wawat
masih dilakukan secara manual. Pesanan pelanggan dicatat ketika pelanggan memesan
makanan, baik untuk makan di tempat maupun dibawa pulang. Pemesanan juga dapat
dilakukan melalui WhatsApp, sedangkan pembayaran dilakukan menggunakan uang tunai
atau QRIS.
Pencatatan pesanan secara manual dapat menimbulkan kendala ketika beberapa
pelanggan memesan secara bersamaan. Kesalahan pencatatan dapat menyebabkan makanan
yang disiapkan tidak sesuai dengan pesanan, misalnya perbedaan antara ayam goreng dan
ayam bakar. Kondisi tersebut dapat mengakibatkan pesanan perlu diperbaiki atau diganti.
Oleh karena itu, diperlukan perancangan basis data yang dapat menyimpan informasi
menu, pesanan, detail pesanan, dan pembayaran secara terstruktur. Melalui perancangan ini,
data setiap pesanan dapat dihubungkan dengan menu yang dipesan serta informasi
pembayarannya. Dengan demikian, basis data yang dirancang diharapkan dapat menjadi
dasar pengembangan sistem yang membantu mengurangi kesalahan pencatatan dan
mempermudah pengelolaan transaksi di Warung Bu Wawat.

### 1.2 Identifikasi Masalah
Berdasarkan latar belakang tersebut, masalah yang dapat diidentifikasi adalah sebagai
berikut.
1. Pencatatan pesanan masih dilakukan secara manual sehingga berpotensi menimbulkan
kesalahan ketika beberapa pesanan masuk secara bersamaan.
2. Kesalahan pencatatan dapat menyebabkan makanan yang disiapkan tidak sesuai
dengan pesanan pelanggan.
3. Data menu, pesanan, detail pesanan, dan pembayaran memerlukan penyimpanan yang
terstruktur agar lebih mudah dikelola dan ditelusuri.

### 1.3 Rumusan Masalah
1. Bagaimana menganalisis kebutuhan data untuk proses pemesanan dan pembayaran di
Warung Bu Wawat?
2. Bagaimana merancang Entity Relationship Diagram (ERD) berdasarkan kebutuhan
tersebut?
3. Bagaimana mengimplementasikan rancangan basis data menggunakan SQL?
4. Bagaimana menggunakan query SQL untuk menampilkan dan mengelola informasi
pesanan serta pembayaran?

### 1.4 Tujuan
1. Mengidentifikasi permasalahan dan kebutuhan data pada proses pemesanan dan
pembayaran Warung Bu Wawat.
2. Menghasilkan rancangan ERD yang menggambarkan hubungan antara menu, pesanan,
detail pesanan, dan pembayaran.
3. Mengimplementasikan rancangan basis data menggunakan SQL.
4. Menghasilkan query SQL untuk membantu pengelolaan dan penelusuran informasi
pesanan serta pembayaran.

### 1.5 Batasan Masalah
Agar pembahasan lebih terarah, ruang lingkup laporan ini dibatasi sebagai berikut.
1. Studi kasus berfokus pada proses pemesanan dan pembayaran di Warung Bu Wawat.
2. Data yang dirancang meliputi menu, pesanan, detail pesanan, dan pembayaran.
3. Setiap pesanan dapat berisi satu atau lebih menu, sedangkan satu pembayaran
digunakan untuk melunasi satu pesanan.
4. Metode pembayaran yang dicakup adalah uang tunai dan QRIS.
5. Perancangan meliputi analisis kebutuhan, ERD, skema relasional, implementasi tabel,
serta query SQL.
6. Pengelolaan stok bahan baku, penggajian karyawan, dan pencatatan data pelanggan
tidak termasuk dalam ruang lingkup pembahasan.
7. Basis data yang dirancang merupakan dasar pengelolaan data dan tidak berarti bahwa
sistem pemesanan digital telah diterapkan di Warung Bu Wawat.

### 1.6 Metode Pengumpulan Data
Metode pengumpulan data yang digunakan dalam penyusunan laporan ini adalah wawancara.
Wawancara dilakukan dengan Ibu Watini selaku pemilik Warung Bu Wawat untuk memperoleh
informasi mengenai proses pemesanan, pencatatan pesanan, menu yang tersedia, serta metode
pembayaran yang digunakan.
Wawancara didokumentasikan dalam bentuk rekaman suara sebagai sumber informasi dalam
proses analisis kebutuhan basis data. Dokumentasi foto atau video terhadap narasumber tidak
dilakukan karena narasumber tidak bersedia direkam secara visual. Namun, dokumentasi berupa foto
kondisi warung dan catatan penjualan digunakan sebagai bahan observasi pendukung.
Metode       Waktu/Tempat      Narasumber/Sumber                      Hasil
Wawancara     25 Oktober 2026 Ibu Watini, pemilik       Diperoleh informasi mengenai
/rumah ibu   Warung Bu Wawat           proses pemesanan, pencatatan
watini                              pesanan, menu, metode
pembayaran, serta kendala yang
terjadi dalam proses pemesanan.
Dokumentasi       25 Oktober      Rekaman
2026/rumah ibu    wawancara dengan
watini        Ibu Watini

## BAB II — ANALISIS KEBUTUHAN

### 2.1 Profil Objek/Mitra
Warung Bu Wawat merupakan usaha kuliner milik Ibu Watini yang berdiri pada 30
Mei 2024. Nama “Wawat” berasal dari nama panggilan Ibu Watini sejak kecil. Usaha ini
bergerak di bidang penyediaan makanan dan minuman untuk pelanggan yang makan di
tempat maupun membawa pulang pesanan.
Warung Bu Wawat memiliki enam orang pekerja yang menangani berbagai kegiatan
operasional, seperti memasak, melayani pelanggan, menyiapkan minuman, menerima
pesanan, dan mengantarkan makanan ke meja pelanggan.
Menu yang tersedia cukup beragam, mulai dari makanan utama hingga makanan
ringan. Dalam menjalankan usahanya, Warung Bu Wawat melayani pemesanan secara
langsung di warung, melalui WhatsApp, serta melalui layanan Maxim dalam kondisi tertentu.
Proses pencatatan pesanan masih dilakukan secara manual. Oleh karena itu,
perancangan basis data diperlukan untuk membantu pengelolaan informasi menu, pesanan,
detail pesanan, dan pembayaran secara lebih terstruktur.

### 2.2 Proses Bisnis yang Diamati
Berdasarkan keterangan pemilik saat wawancara, proses bisnis pemesanan makanan di
Warung Bu Wawat berlangsung melalui tahapan berikut.
1. Penerimaan pesanan. Pelanggan memesan makanan secara langsung di warung atau
melalui WhatsApp. Pemesanan melalui Maxim juga dapat terjadi, dengan pelanggan
menangani proses pemesanan melalui layanan tersebut.
2. Pencatatan pesanan. Pesanan dicatat secara manual oleh pihak warung sesuai
dengan menu dan jumlah yang dipesan pelanggan.
3. Penyiapan pesanan. Pekerja menyiapkan makanan dan minuman berdasarkan
pesanan yang diterima.
4. Penyajian atau penyerahan pesanan. Pesanan disajikan kepada pelanggan yang
makan di tempat atau diserahkan untuk dibawa pulang.
5. Pembayaran. Pelanggan melakukan pembayaran menggunakan uang tunai atau
QRIS.
6. Pencatatan transaksi. Informasi pesanan dan transaksi masih dikelola secara manual.
Pada saat wawancara, warung belum menggunakan printer struk. Pemilik telah
membeli tablet dan berencana menyiapkan perangkat tersebut agar dapat digunakan
untuk mencetak dua salinan struk, yaitu untuk pelanggan dan arsip internal.
Proses manual tersebut memiliki risiko kesalahan, terutama ketika beberapa pelanggan
melakukan pemesanan secara bersamaan. Sebagai contoh, pesanan ayam bakar dapat tertukar
dengan ayam goreng apabila pencatatan atau penyampaian informasi pesanan kurang tepat.

### 2.3 Hasil Wawancara dan Observasi
Data berikut dirangkum berdasarkan wawancara dengan Ibu Watini selaku pemilik Warung
Bu Wawat. Dokumentasi wawancara dilakukan melalui rekaman suara. Temuan pada tabel
ini merupakan informasi yang disampaikan narasumber, bukan klaim bahwa seluruh aktivitas
telah diamati secara langsung.
No.     Pertanyaan/Aspek                 Jawaban/Hasil Wawancara                         Sumber
Warung Bu Wawat dimiliki oleh Ibu Watini
1    Identitas usaha                                                              Wawancara pemilik
dan berdiri pada 30 Mei 2024.
Terdapat enam pekerja dengan tugas memasak,
melayani pelanggan, menyiapkan minuman,
2    Jumlah pekerja                                                               Wawancara pemilik
menerima pesanan, dan mengantarkan
makanan.
Menu utama meliputi ayam geprek, ayam
lalapan goreng dan bakar, ikan nila goreng dan
3    Menu yang tersedia          bakar, serta steak ayam. Makanan ringan          Wawancara pemilik
meliputi tahu bakso, pisang keju, ayam keju,
dan lumpia keju.
Pesanan diterima secara langsung di warung
4    Cara pemesanan              dan melalui WhatsApp. Pemesanan melalui          Wawancara pemilik
Maxim juga dapat terjadi.
5    Cara pencatatan pesanan     Pesanan masih dicatat secara manual.             Wawancara pemilik
Pesanan dapat tertukar ketika beberapa
6    Kendala pemesanan           pelanggan memesan secara bersamaan,              Wawancara pemilik
misalnya ayam goreng dengan ayam bakar.
Pembayaran menggunakan uang tunai dan
7    Metode pembayaran                                                            Wawancara pemilik
QRIS.
Pada saat wawancara, printer struk belum
digunakan. Pemilik telah membeli tablet dan
8    Penggunaan struk                                                             Wawancara pemilik
berencana menyiapkan pencetakan dua salinan
struk.
Penggunaan tablet untuk mendukung
9    Sistem pencatatan digital   pencatatan dan pencetakan struk masih dalam      Wawancara pemilik
tahap persiapan.

### 2.4 Permasalahan dan Kebutuhan Client
Berdasarkan hasil wawancara, terdapat beberapa permasalahan yang menjadi dasar
perancangan basis data.
No.          Permasalahan                        Kebutuhan Solusi/Data                        Prioritas
Pesanan masih dicatat secara
Tabel pesanan untuk menyimpan setiap transaksi
1     manual sehingga berisiko                                                                  Tinggi
pemesanan dengan nomor pesanan yang unik.
terjadi kesalahan.
Satu pesanan dapat berisi       Tabel detail pesanan yang menghubungkan
2     beberapa menu dengan            pesanan dengan menu, jumlah, harga satuan, dan            Tinggi
jumlah berbeda.                 subtotal.
Kesalahan membedakan
menu, seperti ayam goreng
Data menu yang tersusun jelas dan terhubung
3     dan ayam bakar, dapat                                                                     Tinggi
dengan detail setiap pesanan.
menyebabkan pesanan
tertukar.
Informasi pembayaran perlu
Tabel pembayaran yang menyimpan metode,
4     dihubungkan dengan pesanan                                                                Tinggi
total pembayaran, waktu, dan status pembayaran.
yang sesuai.
Pemilik berencana               Struktur data pesanan dan pembayaran yang
5     menggunakan tablet dan          dapat menjadi dasar pengembangan sistem                  Sedang
mencetak dua salinan struk.     pencatatan serta pencetakan struk.
Berdasarkan kebutuhan tersebut, basis data dirancang menggunakan empat tabel utama, yaitu
Menu, Pesanan, Detail_Pesanan, dan Pembayaran. Rancangan ini berfokus pada
pengelolaan pesanan dan transaksi, bukan pada pengelolaan stok bahan baku atau data
pribadi pelanggan.

### 2.5 Data yang Digunakan
Data yang digunakan dalam analisis kebutuhan berasal dari keterangan pemilik saat
wawancara. Rekaman suara digunakan untuk membantu meninjau kembali informasi yang
disampaikan. Daftar berikut menunjukkan data yang dibutuhkan untuk rancangan basis data,
bukan pernyataan bahwa seluruh data telah diperoleh dalam bentuk dokumen tertulis.
Atribut/Data yang
No.       Nama Data                                               Sumber                   Keterangan
Dibutuhkan
Harga setiap menu
ID menu, nama menu, harga,
Informasi menu dari         perlu dilengkapi
1     Data Menu            dan status ketersediaan
pemilik                     berdasarkan daftar
menu.
harga yang benar.
ID pesanan, tanggal dan                                    ID pesanan
waktu, metode pemesanan,       Keterangan proses           direncanakan dibuat
2     Data Pesanan
jenis pesanan, dan status      pemesanan                   secara otomatis dalam
pesanan.                                                   sistem.
Atribut/Data yang
No.     Nama Data                                            Sumber              Keterangan
Dibutuhkan
ID detail, ID pesanan, ID                            Satu pesanan dapat
Kebutuhan pencatatan
3    Detail Pesanan    menu, jumlah, harga satuan,                          memiliki beberapa
setiap item pesanan
dan subtotal.                                        detail menu.
ID pembayaran, ID pesanan,
metode pembayaran, total      Keterangan metode      Metode pembayaran
4    Data Pembayaran   pembayaran, waktu             pembayaran dan         yang dicakup adalah
pembayaran, dan status        kebutuhan sistem       tunai dan QRIS.
pembayaran.
Digunakan sebagai
Keterangan pemilik
sumber peninjauan
Rekaman           mengenai proses bisnis,       Rekaman suara
5                                                                           informasi dan tidak
Wawancara         menu, pemesanan, kendala,     wawancara
memuat dokumentasi
dan pembayaran.
visual narasumber.

## BAB III — PERANCANGAN BASIS DATA

### 3.1 Identifikasi Entitas
Berdasarkan hasil analisis kebutuhan pada Warung Bu Wawat, terdapat empat entitas utama
yang digunakan untuk merancang basis data sistem pemesanan dan pembayaran, yaitu Menu,
Pesanan, Detail_Pesanan, dan Pembayaran.
No.              Entitas                  Sumber Data/Kebutuhan                     Alasan Penggunaan
Informasi daftar menu dan harga dari   Menyimpan nama menu, harga, dan
1     Menu
pemilik warung.                        status ketersediaan menu.
Menyimpan informasi setiap
Informasi proses pemesanan
2     Pesanan                                                              pesanan, waktu pemesanan, metode
makanan.
pemesanan, dan jenis pesanan.
Menyimpan menu yang dipesan,
Kebutuhan pencatatan setiap menu
3     Detail_Pesanan                                                       jumlah, harga satuan, dan subtotal
dalam satu pesanan.
setiap menu.
Menyimpan informasi pembayaran
Informasi metode dan proses            yang berkaitan dengan pesanan,
4     Pembayaran
pembayaran.                            termasuk metode dan total
pembayaran.
Keempat entitas tersebut saling berhubungan untuk membentuk basis data yang terstruktur.
Entitas Menu menyimpan informasi menu yang tersedia, Pesanan menyimpan informasi
transaksi pemesanan, Detail_Pesanan mencatat rincian menu dalam setiap pesanan,
sedangkan Pembayaran menyimpan informasi pelunasan pesanan.

### 3.2 Identifikasi Atribut dan Primary Key
Setiap entitas memiliki atribut yang digunakan untuk menyimpan informasi tertentu. Primary
key (PK) digunakan sebagai identitas unik setiap data, sedangkan foreign key (FK)
digunakan untuk menghubungkan data antartabel.
Entitas                     Atribut                          Tipe/Keterangan                       Key
Menu                       id_menu                      Nomor unik menu                                    PK
Menu                       nama_menu                    Nama makanan atau minuman                          —
Menu                       harga                        Harga menu dalam rupiah                            —
Menu                       status_menu                  Status ketersediaan menu                           —
Pesanan                    id_pesanan                   Nomor unik pesanan yang dibuat otomatis            PK
Entitas                 Atribut                 Tipe/Keterangan                   Key
Pesanan           tanggal_waktu          Tanggal dan waktu pemesanan                    —
Cara pesanan diterima, misalnya langsung
Pesanan           metode_pemesanan                                                      —
atau WhatsApp
Pesanan           jenis_pesanan          Makan di tempat atau dibawa pulang             —
Pesanan           status_pesanan         Status proses pesanan                          —
Detail_Pesanan    id_detail              Nomor unik detail pesanan                     PK
Detail_Pesanan    id_pesanan             Referensi ke tabel Pesanan                    FK
Detail_Pesanan    id_menu                Referensi ke tabel Menu                       FK
Detail_Pesanan    jumlah                 Jumlah menu yang dipesan                       —
Detail_Pesanan    harga_satuan           Harga menu saat dipesan                        —
Detail_Pesanan    subtotal               Hasil perkalian jumlah dengan harga satuan     —
Pembayaran        id_pembayaran          Nomor unik pembayaran                         PK
FK,
Pembayaran        id_pesanan             Referensi ke tabel Pesanan
UNIQUE
Pembayaran        metode_pembayaran      Tunai atau QRIS                                —
Pembayaran        total_bayar            Total pembayaran pesanan                       —
Pembayaran        waktu_pembayaran       Waktu pembayaran dilakukan                     —
Pembayaran        status_pembayaran      Status pembayaran                              —
Atribut id_pesanan pada tabel Pembayaran diberi constraint UNIQUE agar satu pesanan
hanya memiliki satu data pembayaran. Hal ini sesuai dengan informasi bahwa satu pesanan
dibayar sekaligus, bukan dibayar secara terpisah untuk setiap menu.
Atribut harga_satuan diperlukan untuk menyimpan harga menu ketika dipesan. Dengan
demikian, perubahan harga menu di kemudian hari tidak otomatis mengubah rincian transaksi
yang sudah tersimpan.

### 3.3 Identifikasi Relasi
Relasi menggambarkan hubungan antara entitas dalam basis data. Berdasarkan kebutuhan
sistem pemesanan dan pembayaran Warung Bu Wawat, hubungan ant entitas dirancang
sebagai berikut.
No.       Entitas yang Berelasi            Nama Relasi                        Dasar Relasi
Satu pesanan dapat berisi beberapa rincian
1    Pesanan — Detail_Pesanan               Memiliki
menu.
Satu menu dapat tercatat dalam banyak detail
2    Menu — Detail_Pesanan               Tercatat dalam
pesanan.
Memiliki          Setiap pesanan memiliki satu data
3    Pesanan — Pembayaran
pembayaran         pembayaran sesuai rancangan sistem.
Relasi tersebut memungkinkan satu pesanan menyimpan beberapa jenis menu tanpa
mengulang informasi utama pesanan. Tabel Detail_Pesanan berfungsi sebagai penghubung
antara Pesanan dan Menu, sedangkan tabel Pembayaran menyimpan informasi pembayaran
untuk setiap pesanan.

### 3.4 Business Rules dan Kardinalitas
Business rules merupakan aturan yang menjelaskan hubungan ant entitas. Kardinalitas
menunjukkan jumlah data yang dapat saling berhubungan.
No.                  Business Rule                           Kardinalitas               Optionality
Setiap detail wajib
Satu pesanan memiliki satu atau lebih detail                                memiliki pesanan.
Pesanan 1
1    pesanan, sedangkan setiap detail pesanan                                    Pesanan dirancang
Detail_Pesanan
hanya terkait dengan satu pesanan.                                          memiliki minimal satu
detail.
Menu boleh belum
Satu menu dapat muncul dalam banyak detail
pernah dipesan. Setiap
2    pesanan, sedangkan setiap detail pesanan          Menu 1 Detail_Pesanan
detail wajib mengacu
mengacu pada satu menu.
pada menu.
No.                 Business Rule                         Kardinalitas              Optionality
Data pembayaran dibuat
untuk pesanan yang
Satu pesanan memiliki satu data pembayaran,                             dibayar. Status
3    dan satu data pembayaran hanya berkaitan       Pesanan 1:1 Pembayaran   pembayaran digunakan
dengan satu pesanan.                                                    untuk membedakan
pesanan yang sudah atau
belum dibayar.
Berdasarkan aturan tersebut, hubungan antara Pesanan dan Menu tidak dibuat secara
langsung. Hubungan keduanya dikelola melalui Detail_Pesanan agar setiap menu dan
jumlahnya dapat dicatat secara terpisah dalam satu pesanan.

### 3.5 ERD Konseptual
ERD konseptual menggambarkan entitas dan hubungan ant entitas sebelum diterapkan ke
dalam tabel basis data. Berdasarkan hasil analisis kebutuhan, ERD awal terdiri atas empat
entitas, yaitu Menu, Pesanan, Detail_Pesanan, dan Pembayaran.
Hubungan ant entitas adalah sebagai berikut:
1. Pesanan berhubungan dengan Detail_Pesanan melalui atribut id_pesanan.
2. Menu berhubungan dengan Detail_Pesanan melalui atribut id_menu.
3. Pesanan berhubungan dengan Pembayaran melalui atribut id_pesanan.
Dengan rancangan tersebut, satu pesanan dapat memiliki beberapa item menu, dan setiap
item menu tercatat sebagai detail tersendiri. Informasi pembayaran disimpan terpisah agar
dapat dikaitkan dengan pesanan yang sesuai.
Gambaran ERD awal:
Gambar 3.5 ERD konseptual (notasi Chen)

### 3.6 Evaluasi dan Revisi ERD
Evaluasi ERD dilakukan untuk memastikan bahwa entitas, atribut, dan hubungan ant entitas
telah sesuai dengan kebutuhan sistem pemesanan dan pembayaran Warung Bu Wawat.
Berdasarkan hasil evaluasi, rancangan ERD terdiri atas empat entitas, yaitu Menu, Pesanan,
Detail_Pesanan, dan Pembayaran. Keempat entitas tersebut memiliki fungsi yang berbeda
dan saling berhubungan untuk mendukung pencatatan transaksi.
No.       Bagian yang Dievaluasi            Hasil Evaluasi               Alasan
Digunakan untuk
menyimpan nama,
1     Entitas Menu                       Dipertahankan
harga, dan status
ketersediaan menu.
Digunakan untuk
2     Entitas Pesanan                    Dipertahankan           menyimpan informasi
utama setiap pesanan.
Digunakan untuk
mencatat menu dan
3     Entitas Detail_Pesanan             Dipertahankan
jumlah yang dipesan
dalam setiap pesanan.
Digunakan untuk
menyimpan informasi
4     Entitas Pembayaran                 Dipertahankan           pembayaran yang
berkaitan dengan
pesanan.
Satu menu dapat
muncul dalam banyak
detail pesanan,
5     Relasi Menu dan Detail_Pesanan     Ditetapkan 1
sedangkan satu detail
mengacu pada satu
menu.
Satu pesanan dapat
Relasi Pesanan dan
6                                        Ditetapkan 1            memiliki beberapa
Detail_Pesanan
detail menu.
Satu pesanan memiliki
satu data pembayaran
7     Relasi Pesanan dan Pembayaran      Ditetapkan 1:1
sesuai rancangan
sistem.
Hasil evaluasi menunjukkan bahwa empat entitas utama dapat dipertahankan karena telah
mewakili kebutuhan data yang dianalisis. Relasi antara Menu dan Pesanan dihubungkan
melalui Detail_Pesanan sehingga satu pesanan dapat memuat beberapa menu dengan jumlah
dan harga masing-masing.
Rancangan juga memisahkan data Pembayaran dari Pesanan agar informasi metode
pembayaran, total pembayaran, waktu pembayaran, dan status pembayaran dapat dikelola
secara terstruktur.

### 3.7 ERD Logis/Hasil Akhir
ERD logis merupakan pengembangan dari ERD konseptual dengan memperjelas atribut,
```sql
primary key, dan foreign key yang akan digunakan dalam implementasi basis data.
Rancangan ERD logis Warung Bu Wawat terdiri atas empat tabel berikut.
1. MENU, menyimpan identitas menu, nama menu, harga, dan status ketersediaan.
2. PESANAN, menyimpan identitas pesanan, tanggal dan waktu, metode pemesanan,
jenis pesanan, serta status pesanan.
3. DETAIL_PESANAN, menyimpan rincian menu dalam setiap pesanan, termasuk
jumlah, harga satuan, dan subtotal. Tabel ini memiliki foreign key yang mengacu
pada tabel PESANAN dan MENU.
4. PEMBAYARAN, menyimpan identitas pembayaran, metode pembayaran, total bayar,
waktu pembayaran, dan status pembayaran. Atribut id_pesanan menjadi foreign key
yang mengacu pada tabel PESANAN.
Hubungan antartabel diterapkan melalui foreign key. Tabel DETAIL_PESANAN
menghubungkan PESANAN dengan MENU, sedangkan tabel PEMBAYARAN terhubung
dengan PESANAN melalui id_pesanan.
```
Gambar 3.7 ERD Logis Sistem Pemesanan dan Pembayaran Warung Bu Wawat

### 3.8 Skema Relasional
Skema relasional merupakan bentuk rancangan basis data yang menggambarkan tabel, atribut,
serta hubungan antartabel melalui primary key dan foreign key. Berdasarkan ERD logis yang
telah dibuat, skema relasional sistem pemesanan dan pembayaran Warung Bu Wawat adalah
sebagai berikut.
Tabel Menu
MENU(
id_menu [PK],
nama_menu,
harga,
status_menu
)
Tabel MENU digunakan untuk menyimpan informasi menu yang tersedia di Warung Bu
Wawat, termasuk nama menu, harga, dan status ketersediaannya.
Tabel Pesanan
PESANAN(
id_pesanan [PK],
tanggal_waktu,
metode_pemesanan,
jenis_pesanan,
status_pesanan
)
Tabel PESANAN digunakan untuk menyimpan informasi utama setiap pesanan. Atribut
id_pesanan menjadi identitas unik yang dibuat secara otomatis oleh sistem.
Tabel Detail Pesanan
DETAIL_PESANAN(
id_detail [PK],
id_pesanan [FK],
id_menu [FK],
jumlah,
harga_satuan,
subtotal
)
Tabel DETAIL_PESANAN digunakan untuk menyimpan rincian menu dalam setiap pesanan.
Atribut id_pesanan mengacu pada tabel PESANAN, sedangkan id_menu mengacu pada tabel
MENU. Atribut jumlah, harga_satuan, dan subtotal digunakan untuk menghitung nilai setiap
rincian pesanan.
Tabel Pembayaran
PEMBAYARAN(
id_pembayaran [PK],
id_pesanan [FK, UNIQUE],
metode_pembayaran,
total_bayar,
waktu_pembayaran,
status_pembayaran
)
Tabel PEMBAYARAN digunakan untuk menyimpan informasi pembayaran setiap pesanan.
Atribut id_pesanan menjadi foreign key yang mengacu pada tabel PESANAN. Constraint
UNIQUE diterapkan pada atribut tersebut untuk memastikan satu pesanan hanya memiliki
satu data pembayaran.
Berdasarkan skema relasional tersebut, seluruh tabel saling terhubung melalui primary key
dan foreign key. Rancangan ini menjadi dasar implementasi basis data menggunakan SQL
pada tahap berikutnya.

## BAB IV — IMPLEMENTASI BASIS DATA

### 4.1 Lingkungan Implementasi
Implementasi basis data dirancang menggunakan MySQL sebagai sistem manajemen basis
data. MySQL digunakan untuk membuat database, tabel, mengatur hubungan antartabel, serta
menjalankan perintah SQL untuk mengelola data pemesanan dan pembayaran Warung Bu
Wawat.
Komponen                                           Keterangan
DBMS                             MySQL
Tools                            Laragon
Nama database                    db_warung_bu_wawat
Bahasa query                     SQL
Versi MySQL dan aplikasi yang digunakan disesuaikan dengan perangkat lunak yang
terpasang pada komputer saat implementasi dilakukan.

### 4.2 DDL - CREATE DATABASE
Data Definition Language (DDL) merupakan kelompok perintah SQL yang digunakan untuk
membuat dan mengatur struktur database. Perintah CREATE DATABASE digunakan untuk
membuat database yang akan menampung seluruh tabel sistem pemesanan dan pembayaran
Warung Bu Wawat.
Query:
```sql
CREATE DATABASE db_warung_bu_wawat;
USE db_warung_bu_wawat;
Hasil eksekusi:
```
Gambar 4.2. Implementasi DDL CREATE DATABASE untuk membuat database db_warung_bu_wawat.
Penjelasan: Perintah CREATE DATABASE membuat database db_warung_bu_wawat,
sedangkan USE memilihnya sebagai database aktif.

### 4.3 DDL - CREATE TABLE dan Constraint
Tujuan: membuat empat tabel untuk menyimpan data menu, pesanan, rincian pesanan, dan
pembayaran.
Jalankan kode berikut satu per satu di tab SQL phpMyAdmin, setelah memilih database
db_warung_bu_wawat.
1. Tabel Menu
Kalau tabel Menu sudah berhasil dibuat pada langkah sebelumnya, lewati kode ini agar tidak
muncul error tabel sudah ada.
```sql
CREATE TABLE Menu (
id_menu INT AUTO_INCREMENT PRIMARY KEY,
nama_menu VARCHAR(100) NOT NULL,
harga DECIMAL(10,2) NOT NULL,
status_menu VARCHAR(20) NOT NULL DEFAULT 'Tersedia',
CONSTRAINT chk_harga_menu CHECK (harga >= 0)
);
Hasil eksekusi:
```
Gambar 4.3.1 hasil dari pembuatan table menu.
2. Tabel Pesanan
```sql
CREATE TABLE Pesanan (
id_pesanan INT AUTO_INCREMENT PRIMARY KEY,
tanggal_waktu DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
metode_pemesanan VARCHAR(30) NOT NULL,
jenis_pesanan VARCHAR(30) NOT NULL,
status_pesanan VARCHAR(30) NOT NULL DEFAULT 'Diproses'
);
3. Tabel Detail Pesanan
CREATE TABLE Detail_Pesanan (
id_detail INT AUTO_INCREMENT PRIMARY KEY,
id_pesanan INT NOT NULL,
id_menu INT NOT NULL,
jumlah INT NOT NULL,
harga_satuan DECIMAL(10,2) NOT NULL,
subtotal DECIMAL(10,2) NOT NULL,
CONSTRAINT fk_detail_pesanan
FOREIGN KEY (id_pesanan)
REFERENCES Pesanan(id_pesanan),
CONSTRAINT fk_detail_menu
FOREIGN KEY (id_menu)
REFERENCES Menu(id_menu),
CONSTRAINT chk_jumlah CHECK (jumlah > 0),
CONSTRAINT chk_harga_satuan CHECK (harga_satuan >= 0),
CONSTRAINT chk_subtotal CHECK (subtotal >= 0)
);
4. Tabel Pembayaran
CREATE TABLE Pembayaran (
id_pembayaran INT AUTO_INCREMENT PRIMARY KEY,
id_pesanan INT NOT NULL UNIQUE,
metode_pembayaran VARCHAR(20) NOT NULL,
total_bayar DECIMAL(10,2) NOT NULL,
waktu_pembayaran DATETIME,
status_pembayaran VARCHAR(30) NOT NULL DEFAULT 'Belum Dibayar',
CONSTRAINT fk_pembayaran_pesanan
FOREIGN KEY (id_pesanan)
REFERENCES Pesanan(id_pesanan),
CONSTRAINT chk_total_bayar CHECK (total_bayar >= 0)
);
Hasil eksekusi:
```
Gambar 4.3.2. Implementasi DDL CREATE TABLE pada database Warung Bu Wawat.

### 4.4 DDL - ALTER TABLE
Tujuan: Mengubah struktur tabel dengan menambahkan constraint untuk memastikan metode
pemesanan hanya menggunakan pilihan yang sesuai dengan proses bisnis Warung Bu Wawat.
Query SQL:
```sql
USE db_warung_bu_wawat;
ALTER TABLE Pesanan
ADD CONSTRAINT chk_metode_pemesanan
CHECK (metode_pemesanan IN ('Langsung', 'WhatsApp', 'Maxim'));
SHOW CREATE TABLE Pesanan;
```
Gambar 4.4. Hasil Eksekusi Query DDL Alter Table untuk Pembatasan Metode Pemesanan
Penjelasan:
Perintah ALTER TABLE digunakan untuk mengubah struktur tabel yang sudah dibuat. Pada
implementasi ini, constraint chk_metode_pemesanan ditambahkan pada tabel Pesanan untuk
membatasi nilai metode_pemesanan menjadi Langsung, WhatsApp, atau Maxim. Dengan
demikian, data metode pemesanan menjadi lebih konsisten.

### 4.5 DML - INSERT
Data Manipulation Language (DML) merupakan bahasa SQL yang digunakan untuk
mengelola data di dalam database. Pada tahap ini, perintah INSERT INTO digunakan untuk
memasukkan data awal ke dalam database Warung Bu Wawat. Data yang dimasukkan
meliputi data menu, pesanan, detail pesanan, dan pembayaran.

#### 4.5.1 Memasukkan Data Menu
Data menu berisi nama makanan dan minuman yang dijual oleh Warung Bu Wawat, harga
setiap menu, serta status ketersediaannya. Data dimasukkan ke dalam tabel Menu
menggunakan perintah INSERT INTO.
Masukkan data menu
```sql
USE db_warung_bu_wawat;
INSERT INTO Menu (nama_menu, harga, status_menu) VALUES
('Ayam Geprek Paket Nasi dan Es Teh', 16000, 'Tersedia'),
('Ayam Geprek Tanpa Nasi', 10000, 'Tersedia'),
('Ayam Lalapan Goreng dan Es Teh', 18000, 'Tersedia'),
('Ayam Lalapan Bakar dan Es Teh', 18000, 'Tersedia'),
('Nila Goreng dan Es Teh', 18000, 'Tersedia'),
('Nila Bakar dan Es Teh', 18000, 'Tersedia'),
('Es Teh', 5000, 'Tersedia'),
('Es Jeruk Nutrisari', 10000, 'Tersedia'),
('Steak Ayam', 18000, 'Tersedia'),
('Tahu Bakso', 10000, 'Tersedia'),
('Pisang Keju', 10000, 'Tersedia'),
('Ayam Keju', 10000, 'Tersedia'),
('Lumpia Keju', 10000, 'Tersedia');
Hasil eksekusi:
```
Gambar 4.5.1 menunjukkan data menu yang berhasil dimasukkan ke dalam tabel Menu. Data tersebut mencakup berbagai
makanan dan minuman beserta harga dan status ketersediaannya.

#### 4.5.2 Memasukkan Data Pesanan
Data pesanan disimpan dalam tabel Pesanan. Informasi yang dicatat meliputi metode
pemesanan, jenis pesanan, dan status pesanan. Metode pemesanan yang digunakan dalam
data contoh adalah pemesanan langsung, WhatsApp, dan Maxim.
```sql
INSERT INTO Pesanan
(metode_pemesanan, jenis_pesanan, status_pesanan)
VALUES
('Langsung', 'Makan di Tempat', 'Selesai'),
('WhatsApp', 'Dibawa Pulang', 'Selesai'),
('Maxim', 'Dibawa Pulang', 'Diproses');
```
Gambar 4.5.2 menunjukkan data pesanan yang tersimpan dalam tabel Pesanan. Setiap pesanan memiliki ID
yang dibuat secara otomatis serta informasi metode, jenis, dan status pesanan.

#### 4.5.3 Memasukkan Data Detail Pesanan
Tabel Detail_Pesanan digunakan untuk mencatat menu yang terdapat dalam setiap pesanan,
jumlah yang dipesan, harga satuan, dan subtotal. Tabel ini menghubungkan tabel Pesanan
dengan tabel Menu melalui atribut id_pesanan dan id_menu.
```sql
INSERT INTO Detail_Pesanan
(id_pesanan, id_menu, jumlah, harga_satuan, subtotal)
VALUES
(1, 1, 2, 16000, 32000),
(1, 7, 1, 5000, 5000),
(2, 3, 1, 18000, 18000),
(3, 9, 1, 18000, 18000);
```
Gambar 4.5.3 menunjukkan rincian menu pada setiap pesanan, termasuk jumlah pembelian, harga satuan, dan
subtotal. Satu pesanan dapat memiliki lebih dari satu detail menu.

#### 4.5.4 Memasukkan Data Pembayaran
Tabel Pembayaran digunakan untuk menyimpan informasi pembayaran setiap pesanan,
termasuk metode pembayaran, total yang harus dibayar, waktu pembayaran, dan status
pembayaran. Metode pembayaran pada data contoh meliputi tunai dan QRIS.
```sql
INSERT INTO Pembayaran
(id_pesanan, metode_pembayaran, total_bayar,
waktu_pembayaran, status_pembayaran)
VALUES
(1, 'QRIS', 37000, CURRENT_TIMESTAMP, 'Lunas'),
(2, 'Tunai', 18000, CURRENT_TIMESTAMP, 'Lunas'),
(3, 'Tunai', 18000, NULL, 'Belum Dibayar');
```
Gambar 4.5.4 menunjukkan data pembayaran untuk setiap pesanan. Pesanan yang telah dibayar memiliki waktu
pembayaran dan status lunas, sedangkan pesanan yang belum dibayar memiliki waktu pembayaran bernilai NULL dan
status belum dibayar.

### 4.6 Struktur Database Setelah Implementasi
Setelah proses pembuatan tabel, penambahan constraint, dan pemasukan data selesai
dilakukan, database db_warung_bu_wawat memiliki empat tabel utama, yaitu Menu, Pesanan,
Detail_Pesanan, dan Pembayaran.
Tabel Menu menyimpan informasi makanan dan minuman beserta harga dan status
ketersediaannya. Tabel Pesanan mencatat metode pemesanan, jenis pesanan, dan status
pesanan. Tabel Detail_Pesanan menyimpan rincian menu yang dipesan, jumlah, harga satuan,
serta subtotal. Sementara itu, tabel Pembayaran menyimpan metode, total, waktu, dan status
pembayaran.
Hubungan antartabel dibentuk menggunakan primary key dan foreign key. Primary key
berfungsi sebagai identitas unik setiap data, sedangkan foreign key menghubungkan data pada
tabel yang saling berkaitan. Selain itu, constraint digunakan untuk menjaga konsistensi data,
seperti memastikan harga dan jumlah pesanan memenuhi ketentuan yang telah ditetapkan.
Dokumentasi Struktur Database
Gambar 4.6.1 Tampilan database db_warung_bu_wawat yang menunjukkan keempat tabel.
Gambar 4.6.2 Struktur tabel Menu beserta primary key dan constraint.
Gambar 4.6.3 Struktur tabel Pesanan beserta primary key dan constraint.
Gambar 4.6.4 Struktur tabel Detail_Pesanan beserta primary key, foreign key, dan constraint.
Gambar 4.6.5 Struktur tabel Pembayaran beserta primary key, foreign key, dan constraint.

## BAB V — DOKUMENTASI QUERY DAN ANALISIS

### 5.1 SELECT untuk Kebutuhan Informasi Client
Query 1 Menampilkan Daftar Menu
Kebutuhan: Client membutuhkan informasi nama menu, harga, dan status ketersediaan
untuk mengetahui menu yang dijual oleh Warung Bu Wawat.
Query SQL:
```sql
SELECT id_menu, nama_menu, harga, status_menu
FROM Menu;
Hasil eksekusi:
```
Penjelasan: Query ini menampilkan daftar makanan dan minuman beserta harga dan status
ketersediaannya. Informasi tersebut membantu pemilik mengetahui menu yang tersedia dan
harga yang berlaku.
Query 2 - Menampilkan Riwayat Pesanan
Kebutuhan: Client membutuhkan informasi pesanan yang tercatat, termasuk metode
pemesanan, jenis pesanan, dan statusnya.
Query SQL:
```sql
SELECT id_pesanan, tanggal_waktu,
metode_pemesanan, jenis_pesanan,
status_pesanan
FROM Pesanan
ORDER BY tanggal_waktu DESC;
Hasil eksekusi:
```
Penjelasan: Query ini menampilkan riwayat pesanan berdasarkan waktu terbaru. Informasi
tersebut membantu pemilik memeriksa pesanan yang telah selesai maupun yang masih
diproses.

### 5.2 UPDATE
Kondisi/alasan pembaruan: Status pesanan dapat berubah seiring proses pelayanan. Oleh
karena itu, perintah UPDATE digunakan untuk memperbarui status pesanan yang
sebelumnya masih diproses menjadi selesai.
Query SQL:
```sql
UPDATE Pesanan
SET status_pesanan = 'Selesai'
WHERE id_pesanan = 3;
SELECT id_pesanan, status_pesanan
FROM Pesanan
WHERE id_pesanan = 3;
Hasil eksekusi:
```
Penjelasan: Query UPDATE memperbarui status pesanan dengan ID 3 menjadi Selesai.
Kondisi WHERE digunakan agar perubahan hanya berlaku pada pesanan yang ditentukan,
bukan seluruh data dalam tabel.

### 5.3 DELETE
Alasan data dapat dihapus: Perintah DELETE digunakan untuk menghapus data yang tidak
diperlukan, misalnya data uji yang dibuat untuk memastikan fungsi penghapusan berjalan
dengan baik.
Query SQL:
```sql
INSERT INTO Menu (nama_menu, harga, status_menu)
VALUES ('Menu Uji Hapus', 1000, 'Tersedia');
DELETE FROM Menu
WHERE nama_menu = 'Menu Uji Hapus';
SELECT *
FROM Menu
WHERE nama_menu = 'Menu Uji Hapus';
Hasil eksekusi:
```
Penjelasan: Data uji dimasukkan terlebih dahulu, kemudian dihapus menggunakan perintah
DELETE. Query SELECT digunakan untuk memastikan data tersebut sudah tidak ditemukan.
Cara ini menguji fungsi penghapusan tanpa menghapus menu asli atau mengganggu relasi
antartabel.

### 5.4 Query Antar Tabel (JOIN)
Kebutuhan client: Client membutuhkan informasi rincian pesanan untuk mengetahui menu
yang dipesan, jumlah pembelian, subtotal, dan status pembayaran.
Tabel yang dihubungkan: Pesanan, Detail_Pesanan, Menu, dan Pembayaran.
Query SQL:
SELECT
p.id_pesanan,
p.tanggal_waktu,
m.nama_menu,
d.jumlah,
d.harga_satuan,
d.subtotal,
b.metode_pembayaran,
b.status_pembayaran
FROM Pesanan p
INNER JOIN Detail_Pesanan d
ON p.id_pesanan = d.id_pesanan
INNER JOIN Menu m
ON d.id_menu = m.id_menu
LEFT JOIN Pembayaran b
ON p.id_pesanan = b.id_pesanan
ORDER BY p.id_pesanan;
Hasil eksekusi:
Penjelasan: Query ini menggabungkan empat tabel yang saling berhubungan. INNER JOIN
digunakan untuk menampilkan pesanan yang memiliki detail menu, sedangkan LEFT JOIN
memungkinkan informasi pesanan tetap ditampilkan meskipun data pembayarannya belum
tersedia. Hasil query membantu pemilik memeriksa rincian pesanan dan status
pembayarannya.

### 5.5 Kesesuaian ERD dengan Implementasi
Pemeriksaan kesesuaian ERD dilakukan untuk memastikan rancangan basis data telah
diterapkan ke dalam database. Pemeriksaan meliputi nama tabel, atribut, primary key, foreign
key, dan hubungan antartabel.
Komponen yang
No.                               Hasil pemeriksaan                  Keterangan
diperiksa
Menyimpan ID menu, nama menu,
1             Tabel Menu                 Sesuai
harga, dan status menu.
Menyimpan waktu, metode, jenis, dan
2            Tabel Pesanan               Sesuai
status pesanan.
Menyimpan rincian menu pada setiap
3         Tabel Detail_Pesanan           Sesuai         pesanan serta memiliki foreign key ke
tabel Menu dan Pesanan.
Menyimpan informasi pembayaran dan
4          Tabel Pembayaran              Sesuai
memiliki foreign key ke tabel Pesanan.
Setiap tabel memiliki atribut ID sebagai
5             Primary key                Sesuai
identitas unik data.
Hubungan tabel diterapkan
6           Relasi antartabel            Sesuai         menggunakan foreign key sesuai
rancangan.
```sql
Constraint digunakan untuk menjaga
konsistensi data, termasuk validasi
7              Constraint                Sesuai
harga, jumlah, subtotal, dan metode
pemesanan.
Kesimpulan: Berdasarkan pemeriksaan struktur tabel dan relasi yang diterapkan,
implementasi basis data Warung Bu Wawat telah mengikuti rancangan ERD. Basis data
terdiri dari empat tabel yang saling berhubungan untuk mendukung pencatatan menu,
pesanan, detail pesanan, dan pembayaran.
```

## BAB VI — PENUTUP

### 6.1 Kesimpulan
Berdasarkan hasil analisis pada Warung Bu Wawat, sistem basis data dirancang untuk
membantu pengelolaan pesanan dan pembayaran agar lebih terstruktur serta mengurangi
risiko kesalahan pencatatan pesanan.
Perancangan basis data menggunakan empat tabel utama, yaitu Menu, Pesanan,
Detail_Pesanan, dan Pembayaran. Hubungan antartabel dirancang melalui Primary Key
dan Foreign Key sehingga data dapat saling terhubung dengan baik.
Implementasi basis data dilakukan menggunakan perintah DDL, seperti CREATE
DATABASE, CREATE TABLE, dan ALTER TABLE, serta DML berupa INSERT,
SELECT, UPDATE, dan DELETE. Query JOIN juga digunakan untuk menampilkan
informasi pesanan beserta detail menu dan pembayarannya.
Secara keseluruhan, rancangan dan implementasi basis data ini telah mencakup kebutuhan
utama Warung Bu Wawat dalam pencatatan pesanan dan pembayaran. Sistem ini dapat
menjadi dasar pengembangan aplikasi yang membantu proses operasional warung menjadi
lebih rapi, terstruktur, dan mudah dikelola.

### 6.2 Saran
Pengembangan selanjutnya dapat dilakukan dengan menambahkan antarmuka aplikasi agar
pemilik dan karyawan dapat mencatat pesanan tanpa harus menjalankan query SQL secara
langsung.
Selain itu, sistem dapat dilengkapi dengan fitur pencetakan nota rangkap, laporan penjualan
harian atau bulanan, serta pencarian riwayat transaksi. Keamanan data juga perlu
diperhatikan melalui pengaturan hak akses pengguna dan pencadangan (backup) basis data
secara berkala.
Pengembangan lebih lanjut dapat mencakup evaluasi normalisasi tabel serta integrasi dengan
sistem pembayaran atau layanan pemesanan yang digunakan warung. Dengan pengembangan
tersebut, basis data diharapkan dapat mendukung operasional Warung Bu Wawat secara lebih
efektif.

## LAMPIRAN

### Lampiran A — Daftar Pertanyaan Wawancara
DAFTAR WAWANCARA WARUNG BU WAWAT
A. Profil dan Operasional
1. Siapa nama kedai dan sejak kapan berdiri?
Nama kedai ini adalah Warung Bu Wawat, yang dimiliki oleh Ibu Watini. Nama “Bu Wawat”
berasal dari panggilan masa kecil Ibu Watini, yaitu Wawat. Warung ini berdiri sejak 30 Mei
2024.
2. Berapa orang yang bekerja dan apa tugasnya?
Terdapat enam orang yang bekerja di warung ini. Masing-masing memiliki tugas, seperti
memasak, menyajikan makanan, membuat minuman, melayani pesanan pelanggan, dan
mengantarkan pesanan ke meja pembeli.
3. Apa saja menu yang dijual?
Warung Bu Wawat menjual makanan berat dan makanan ringan. Makanan berat yang
tersedia meliputi ayam geprek, ayam lalapan goreng dan bakar, ikan nila goreng dan bakar,
serta steak ayam. Sementara itu, makanan ringan yang tersedia terdiri dari tahu bakso, pisang
keju, ayam keju, dan lumpia keju.
B. Pemesanan dan Penjualan
4. Bagaimana pelanggan memesan makanan?
Sebagian besar pelanggan datang langsung ke warung untuk memesan makanan, baik untuk
makan di tempat maupun dibawa pulang (take away). Selain itu, pelanggan juga dapat
memesan melalui WhatsApp dengan pilihan makan di tempat atau dibawa pulang. Terdapat
pula pesanan melalui Maxim, tetapi layanan tersebut dikelola oleh pelanggan sendiri dan
bukan oleh pemilik warung.
5. Bagaimana pesanan dan total harga dicatat?
Untuk saat ini, pesanan masih dicatat secara manual karena warung belum menggunakan
sistem pencetakan struk yang memuat rincian dan total harga pesanan. Pemilik
menyampaikan bahwa fasilitas pencetakan struk diharapkan dapat digunakan dalam waktu
sekitar satu minggu.
6. Apa saja metode pembayaran yang digunakan?
Metode pembayaran yang digunakan adalah QRIS dan uang tunai (cash). Sebagian besar
pelanggan membayar menggunakan QRIS, sedangkan sebagian lainnya menggunakan uang
tunai.
7. Apakah setiap transaksi menghasilkan nota?
Saat ini, transaksi belum menghasilkan nota atau struk pembayaran karena fasilitas
pencetakan struk belum digunakan.
C. Stok dan Pencatatan
8. Bagaimana stok bahan dicatat?
Pembelian bahan baku dicatat dalam buku. Bahan seperti sayur-mayur umumnya dibeli untuk
kebutuhan sekitar satu minggu, sedangkan bahan lain yang dibutuhkan dalam jangka pendek
dibeli setiap hari di warung terdekat dan dicatat secara manual.
9. Bagaimana pembelian bahan dari pemasok dicatat?
Pembelian bahan baku sebagian dicatat dalam buku. Hal ini dilakukan karena harga bahan di
pasar dapat berubah dan cenderung mengalami kenaikan setiap minggu.
10. Bagaimana penjualan dan keuntungan direkap?
Pencatatan pengeluaran dilakukan berdasarkan pembelanjaan bahan baku, baik yang
dilakukan setiap hari maupun secara mingguan. Selain itu, terdapat pengeluaran tidak terduga,
seperti pembelian gas. Penggunaan gas tidak selalu dapat diprediksi; gas ukuran 3 kg
terkadang habis dalam satu hari, sedangkan gas ukuran 12 kg dapat habis dalam waktu sekitar
empat hingga lima hari.
D. Kendala dan Kebutuhan
11. Apa kendala pencatatan yang sering terjadi?
Kendala sering terjadi ketika banyak pelanggan memesan secara bersamaan dan
menginginkan pelayanan yang cepat. Kondisi tersebut terkadang menyebabkan kesalahan
pencatatan pesanan. Contohnya, pelanggan memesan ayam bakar, tetapi setelah pesanan
diantarkan, pelanggan menyampaikan bahwa yang dipesan adalah ayam goreng. Dalam
kondisi tersebut, pemilik mengatasi masalah dengan membuatkan kembali pesanan yang
benar.
12. Informasi apa yang sulit dicari atau dihitung?
Narasumber menyampaikan bahwa sejauh ini belum mengetahui adanya informasi tertentu
yang sulit dicari atau dihitung.
13. Sistem pencatatan seperti apa yang dibutuhkan?
Pemilik telah membeli tablet dan sedang mempersiapkan sistem untuk mendukung
operasional warung. Sistem tersebut direncanakan dilengkapi dengan pencetakan dua rangkap
struk pesanan. Satu struk diberikan kepada pelanggan, sedangkan satu lainnya disimpan oleh
pemilik dan pekerja sebagai acuan dalam menyiapkan pesanan. Dengan demikian, diharapkan
kesalahan pencatatan dan penyajian pesanan dapat dikurangi.

### Lampiran B — Dokumentasi Observasi Warung dan Catatan Penjualan
Dokumentasi kondisi Warung Bu Wawat dan catatan penjualan yang digunakan sebagai bahan observasi pada 25 Oktober
2026.

### Lampiran C — Contoh Dokumen/Data dari Client
Lampiran ini berisi data yang menjadi dasar perancangan basis data Warung Bu Wawat.
C.1 Daftar Menu
No. Nama Menu                                                                Harga
1     Ayam Geprek Paket Nasi dan Es Teh                                      Rp16.000
2     Ayam Geprek Tanpa Nasi                                                 Rp10.000
3     Ayam Lalapan Goreng dan Es Teh                                         Rp18.000
4     Ayam Lalapan Bakar dan Es Teh                                          Rp18.000
5     Nila Goreng dan Es Teh                                                 Rp18.000
6     Nila Bakar dan Es Teh                                                  Rp18.000
7     Es Teh                                                                 Rp5.000
8     Es Jeruk Nutrisari                                                     Rp10.000
9     Minuman sachet lainnya                                                 Rp10.000
10    Steak Ayam                                                             Rp18.000
11    Tahu Bakso                                                             Rp10.000
12    Pisang Keju                                                            Rp10.000
13    Ayam Keju                                                              Rp10.000
14   Lumpia Keju        Rp10.000

### Lampiran D — ERD Ukuran Penuh
Lampiran ini menampilkan ERD konseptual dan ERD logis yang digunakan dalam
perancangan basis data Warung Bu Wawat.
D.1 ERD Konseptual
D.2 ERD Logis
ERD menggambarkan hubungan antara empat entitas utama, yaitu Menu, Pesanan,
Detail_Pesanan, dan Pembayaran. Tabel Detail_Pesanan menghubungkan Pesanan dengan
Menu, sedangkan Pembayaran menyimpan informasi pembayaran untuk setiap pesanan.

### Lampiran E — Screenshot Hasil Eksekusi
Lampiran ini berisi bukti implementasi dan pengujian query SQL pada database
db_warung_bu_wawat.
E.1 Implementasi CREATE DATABASE
E.2 Implementasi CREATE TABLE dan Constraint
E.3 Implementasi ALTER TABLE
E.4 Implementasi INSERT
E.5 Pengujian SELECT
E.6 Pengujian UPDATE
E.7 Pengujian DELETE
E.8 Pengujian JOIN

### Lampiran F — Script SQL Lengkap
F.1 Membuat Database
```sql
CREATE DATABASE db_warung_bu_wawat;
USE db_warung_bu_wawat;
F.2 Membuat Tabel Menu
CREATE TABLE Menu (
id_menu INT AUTO_INCREMENT PRIMARY KEY,
nama_menu VARCHAR(100) NOT NULL,
harga DECIMAL(10,2) NOT NULL,
status_menu VARCHAR(20) NOT NULL DEFAULT 'Tersedia',
CONSTRAINT chk_harga_menu
CHECK (harga >= 0)
);
F.3 Membuat Tabel Pesanan
CREATE TABLE Pesanan (
id_pesanan INT AUTO_INCREMENT PRIMARY KEY,
tanggal_waktu DATETIME NOT NULL
DEFAULT CURRENT_TIMESTAMP,
metode_pemesanan VARCHAR(30) NOT NULL,
jenis_pesanan VARCHAR(30) NOT NULL,
status_pesanan VARCHAR(30) NOT NULL
DEFAULT 'Diproses'
);
F.4 Membuat Tabel Detail_Pesanan
CREATE TABLE Detail_Pesanan (
id_detail INT AUTO_INCREMENT PRIMARY KEY,
id_pesanan INT NOT NULL,
id_menu INT NOT NULL,
jumlah INT NOT NULL,
harga_satuan DECIMAL(10,2) NOT NULL,
subtotal DECIMAL(10,2) NOT NULL,
CONSTRAINT fk_detail_pesanan
FOREIGN KEY (id_pesanan)
REFERENCES Pesanan(id_pesanan),
CONSTRAINT fk_detail_menu
FOREIGN KEY (id_menu)
REFERENCES Menu(id_menu),
CONSTRAINT chk_jumlah
CHECK (jumlah > 0),
CONSTRAINT chk_harga_satuan
CHECK (harga_satuan >= 0),
CONSTRAINT chk_subtotal
CHECK (subtotal >= 0)
);
F.5 Membuat Tabel Pembayaran
CREATE TABLE Pembayaran (
id_pembayaran INT AUTO_INCREMENT PRIMARY KEY,
id_pesanan INT NOT NULL UNIQUE,
metode_pembayaran VARCHAR(20) NOT NULL,
total_bayar DECIMAL(10,2) NOT NULL,
waktu_pembayaran DATETIME,
status_pembayaran VARCHAR(30) NOT NULL
DEFAULT 'Belum Dibayar',
CONSTRAINT fk_pembayaran_pesanan
FOREIGN KEY (id_pesanan)
REFERENCES Pesanan(id_pesanan),
CONSTRAINT chk_total_bayar
CHECK (total_bayar >= 0)
);
F.6 Menambahkan Constraint dengan ALTER TABLE
ALTER TABLE Pesanan
ADD CONSTRAINT chk_metode_pemesanan
CHECK (
metode_pemesanan IN (
'Langsung',
'WhatsApp',
'Maxim'
)
);
F.7 Mengisi Data Menu
INSERT INTO Menu
(nama_menu, harga, status_menu)
VALUES
('Ayam Geprek Paket Nasi dan Es Teh', 16000, 'Tersedia'),
('Ayam Geprek Tanpa Nasi', 10000, 'Tersedia'),
('Ayam Lalapan Goreng dan Es Teh', 18000, 'Tersedia'),
('Ayam Lalapan Bakar dan Es Teh', 18000, 'Tersedia'),
('Nila Goreng dan Es Teh', 18000, 'Tersedia'),
('Nila Bakar dan Es Teh', 18000, 'Tersedia'),
('Es Teh', 5000, 'Tersedia'),
('Es Jeruk Nutrisari', 10000, 'Tersedia'),
('Es Sachet lainnya', 10000, 'Tersedia'),
('Steak Ayam', 18000, 'Tersedia'),
('Tahu Bakso', 10000, 'Tersedia'),
('Pisang Keju', 10000, 'Tersedia'),
('Ayam Keju', 10000, 'Tersedia'),
('Lumpia Keju', 10000, 'Tersedia');
F.8 Mengisi Data Pesanan
INSERT INTO Pesanan
(metode_pemesanan, jenis_pesanan, status_pesanan)
VALUES
('Langsung', 'Makan di Tempat', 'Selesai'),
('WhatsApp', 'Dibawa Pulang', 'Selesai'),
('Maxim', 'Dibawa Pulang', 'Diproses');
F.9 Mengisi Data Detail_Pesanan
INSERT INTO Detail_Pesanan
(id_pesanan, id_menu, jumlah, harga_satuan, subtotal)
VALUES
(1, 1, 2, 16000, 32000),
(1, 7, 1, 5000, 5000),
(2, 3, 1, 18000, 18000),
(3, 9, 1, 18000, 18000);
F.10 Mengisi Data Pembayaran
INSERT INTO Pembayaran
(id_pesanan, metode_pembayaran, total_bayar,
waktu_pembayaran, status_pembayaran)
VALUES
(1, 'QRIS', 37000, CURRENT_TIMESTAMP, 'Lunas'),
(2, 'Tunai', 18000, CURRENT_TIMESTAMP, 'Lunas'),
(3, 'Tunai', 18000, NULL, 'Belum Dibayar');
F.11 Query SELECT
-- Menampilkan seluruh data menu:
SELECT id_menu, nama_menu, harga, status_menu
FROM Menu;
-- Menampilkan data pesanan berdasarkan waktu terbaru:
SELECT
id_pesanan,
tanggal_waktu,
metode_pemesanan,
jenis_pesanan,
status_pesanan
FROM Pesanan
ORDER BY tanggal_waktu DESC;
F.12 Query UPDATE
-- Mengubah status pesanan dengan ID 3 menjadi selesai:
UPDATE Pesanan
SET status_pesanan = 'Selesai'
WHERE id_pesanan = 3;
-- Memeriksa hasil perubahan:
SELECT id_pesanan, status_pesanan
FROM Pesanan
WHERE id_pesanan = 3;
F.13 Query DELETE
-- Menambahkan data sementara untuk pengujian penghapusan:
INSERT INTO Menu
(nama_menu, harga, status_menu)
VALUES
('Menu Uji Hapus', 1000, 'Tersedia');
-- Menghapus data uji:
DELETE FROM Menu
WHERE nama_menu = 'Menu Uji Hapus';
-- Memeriksa bahwa data sudah tidak ditemukan:
SELECT *
FROM Menu
WHERE nama_menu = 'Menu Uji Hapus';
F.14 Query JOIN
SELECT
p.id_pesanan,
p.tanggal_waktu,
m.nama_menu,
d.jumlah,
d.harga_satuan,
d.subtotal,
b.metode_pembayaran,
b.status_pembayaran
FROM Pesanan p
INNER JOIN Detail_Pesanan d
ON p.id_pesanan = d.id_pesanan
INNER JOIN Menu m
ON d.id_menu = m.id_menu
LEFT JOIN Pembayaran b
ON p.id_pesanan = b.id_pesanan
ORDER BY p.id_pesanan;
```
