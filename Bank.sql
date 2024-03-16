-- CREATE DATABASE
CREATE DATABASE bank;

-- Tabel nasabah
CREATE TABLE nasabah (
    id BIGSERIAL PRIMARY KEY,
    nama VARCHAR(255) NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    no_telp VARCHAR(255) NOT NULL,
    no_ktp VARCHAR(255) NOT NULL
);

-- Tabel akun
CREATE TABLE akun (
    id BIGSERIAL PRIMARY KEY,
    jenis_akun VARCHAR(255) NOT NULL,
    Saldo DECIMAL(18, 2),
    nasabah_id INT
);


-- Tabel transaksi
CREATE TABLE transaksi (
    id BIGSERIAL PRIMARY KEY,
    tanggal DATE NOT NULL,
    jenis_transaksi VARCHAR(255) NOT NULL,
    jumlah DECIMAL(18, 2) NOT NULL,
    akun_id INT
);

-- CREATE DATA NASABAH
INSERT INTO nasabah (nama, alamat, no_telp, no_ktp) 
    VALUES ('Adam Wisnu', 'Bandung', '08123456789', '1234567890'),
            ('Budi Santoso', 'Jakarta', '08987654321', '0987654321'),
            ('Cahya Putra', 'Surabaya', '08678984329', '2874023234');

-- GET ALL DATA NASABAH
SELECT * FROM nasabah;

-- GET BY ID DATA NASABAH
SELECT * FROM nasabah WHERE id = 1;

-- UPDATE DATA NASABAH
UPDATE nasabah SET nama = 'Budi Santoso Perdana' WHERE id = 2;

-- DELETE DATA NASABAH
DELETE FROM nasabah WHERE id = 1;


-- CREATE DATA AKUN
INSERT INTO akun (jenis_akun, saldo, nasabah_id) 
    VALUES ('Tabungan', 1000000, 1),
            ('Giro', 2000000, 2),
            ('Deposito', 3000000, 1),
            ('Tabungan', 4000000, 2),
            ('Giro', 5000000, 1),
            ('Deposito', 6000000, 2);

-- GET ALL DATA AKUN
SELECT * FROM akun;

-- GET BY ID DATA AKUN
SELECT * FROM akun WHERE id = 1;

-- UPDATE DATA AKUN
UPDATE akun SET saldo = 2000000 WHERE id = 1;

-- DELETE DATA AKUN
DELETE FROM akun WHERE id = 1;


-- CREATE DATA TRANSAKSI
INSERT INTO transaksi (tanggal, jenis_transaksi, jumlah, akun_id) 
    VALUES ('2021-01-01', 'Debit', 100000, 1),
            ('2021-01-02', 'Kredit', 200000, 2),
            ('2021-01-03', 'Debit', 300000, 1),
            ('2021-01-04', 'Kredit', 400000, 2),
            ('2021-01-05', 'Debit', 500000, 1),
            ('2021-01-06', 'Kredit', 600000, 2);

-- GET ALL DATA TRANSAKSI
SELECT * FROM transaksi;

-- GET BY ID DATA TRANSAKSI
SELECT * FROM transaksi WHERE id = 1;

-- UPDATE DATA TRANSAKSI
UPDATE transaksi SET jumlah = 200000 WHERE id = 1;

-- DELETE DATA TRANSAKSI
DELETE FROM transaksi WHERE id = 1;
