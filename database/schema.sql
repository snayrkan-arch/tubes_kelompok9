CREATE DATABASE db_warung;
USE db_warung;

CREATE TABLE users (
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    nama_user VARCHAR(100) NOT NULL,
    no_telepon VARCHAR(20) NOT NULL,
    password VARCHAR(100) NOT NULL,
    role ENUM('pemilik', 'karyawan'),
    tanggal_daftar DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE menu (
    id_menu INT AUTO_INCREMENT PRIMARY KEY,
    nama_menu VARCHAR(100) NOT NULL,
    harga DECIMAL(12,2) NOT NULL,
    status_menu ENUM('tersedia', 'habis')
        DEFAULT 'tersedia'
);

CREATE TABLE pesanan(
    id_pesanan INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT NOT NULL,
    nama_pelanggan VARCHAR(100) NOT NULL,
    nomor_pelanggan VARCHAR(20) NOT NULL,
    tanggal_waktu DATETIME DEFAULT CURRENT_TIMESTAMP,
    metode_pemesanan VARCHAR(30) NOT NULL,
    jenis_pemesanan VARCHAR(30) NOT NULL,
    status_pemesanan VARCHAR(30) DEFAULT 'menunggu',

    FOREIGN KEY(id_user) REFERENCES users(id_user)
);

CREATE TABLE detail_pesanan(
    id_detail INT AUTO_INCREMENT PRIMARY KEY,
    id_pesanan INT NOT NULL,
    id_menu INT NOT NULL,
    jumlah INT NOT NULL,
    harga satuan DECIMAL(12,2) NOT NULL,
    subtotal DECIMAL(12,2) NOT NULL,

    FOREIGN KEY(id_pesanan) REFERENCES pesanan(id_pesanan)
);

CREATE TABLE pembayaran(
    id_pembayaran INT AUTO_INCREMENT PRIMARY KEY,
    id_pesanan INT NOT NULL UNIQUE,
    metode_pembayaran,
    total_bayar DECIMAL(12,2) NOT NULL,
    waktu_pembayaran DATETIME NULL,
    status_pembayaran VARCHAR(30) DEFAULT 'Belum bayar',

    FOREIGN KEY(id_pesanan) REFERENCES pesanan(id_pesanan)
)
