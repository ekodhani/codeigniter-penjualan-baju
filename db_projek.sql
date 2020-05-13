-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Bulan Mei 2020 pada 08.45
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_projek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `email`, `password`, `gambar`) VALUES
(1, 'wahyudi', 'wahyudiie93@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `checkout`
--

CREATE TABLE `checkout` (
  `id_checkout` int(11) NOT NULL,
  `id_keranjang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `nama_produk` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL,
  `size` varchar(3) NOT NULL,
  `total` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status` enum('sedang dalam proses','diterima') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `checkout`
--

INSERT INTO `checkout` (`id_checkout`, `id_keranjang`, `id_user`, `nama_user`, `nama_produk`, `qty`, `size`, `total`, `alamat`, `no_telp`, `gambar`, `status`) VALUES
(7, 8, 1, 'BAMBANG', 'YIKES', 1, 'L', 250000, 'Jl.KH.Hasyim Ashari Gg.Kramat Rt007 Rw002 Kecamatan Pinang Kelurahan Neroktog Kota Tangerang Banten 15145', '089521649714', 'yikes.jpg', 'sedang dalam proses'),
(8, 9, 1, 'BAMBANG', 'NORTH WESTERN', 2, 'XL', 1000000, 'Jl.KH.Hasyim Ashari Gg.Kramat Rt007 Rw002 Kecamatan Pinang Kelurahan Neroktog Kota Tangerang Banten 15145', '089521649714', 'north-western.jpg', 'diterima'),
(9, 10, 2, 'User Test', 'BUT FIRST, COFFEE', 2, 'M', 100000, 'Jl.KH.Hasyim Ashari Gg.Kramat Rt007 Rw002 Kecamatan Pinang Kelurahan Neroktog Kota Tangerang Banten 15145', '089521649714', 'totebag-1.jpg', 'sedang dalam proses'),
(10, 7, 1, 'BAMBANG', 'NEXIDE', 2, 'S', 200000, 'Jl. Meruya Utara No.5, RT.6/RW.11, Meruya Utara, Kec. Kembangan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11620', '021-5890-2657', 'nexide.jpg', 'sedang dalam proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `nama` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `no_handphone` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`nama`, `alamat`, `no_handphone`, `email`) VALUES
('Ajag-Ijig Clothing', ' Jl. Daan Mogot Gg. Sahabat RT.10/RW.13 No.110 Kel. Cengkareng Timur, Kec. Cengkareng, Kota Jakarta Barat', '0895-6234-79054', 'ajag@ijig.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `quantity` int(10) NOT NULL,
  `harga` int(25) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `size` varchar(5) NOT NULL,
  `id_user` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_produk`, `nama_produk`, `quantity`, `harga`, `gambar`, `size`, `id_user`) VALUES
(1, 1, 'I LOVE BLORA', 1, 100000, 'blora.jpg', 'L', '1'),
(2, 2, 'NEXIDE', 2, 100000, 'nexide.jpg', 'XL', '1'),
(3, 3, 'OFF TIME', 1, 100000, 'offtime.jpg', 'L', '1'),
(4, 5, 'BULLY', 1, 120000, 'cargoule-1.jpg', 'L', '1'),
(6, 1, 'I LOVE BLORA', 1, 100000, 'blora.jpg', 'L', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `deskripsi`, `gambar`) VALUES
(1, 'I LOVE BLORA', 100000, 'Bahan : Katun\r\nStyle : Casual\r\nPanjang Lengan : Pendek\r\nGaris Leher : Round  Neck\r\n\r\n\r\nTersedia SIZE S,M,L,XL (Panjang x Lebar)\r\nS = 58 x 38 cm \r\nM = 63 x 41 cm\r\nL = 69 x 50 cm\r\nXL = 71 x 53 cm\r\ntoleransi 2-3cm\r\nbarang yang sudah dibeli tidak dapat dikembalikan\r\ntulis size & warna di keterangan, bila tidak kami kirimkan stok yang ada\r\n', 'blora.jpg'),
(2, 'NEXIDE', 100000, 'Bahan : Katun\r\nStyle : Casual\r\nPanjang Lengan : Pendek\r\nGaris Leher : Round  Neck\r\n\r\n\r\nTersedia SIZE S,M,L,XL (Panjang x Lebar)\r\nS = 58 x 38 cm \r\nM = 63 x 41 cm\r\nL = 69 x 50 cm\r\nXL = 71 x 53 cm\r\ntoleransi 2-3cm\r\nbarang yang sudah dibeli tidak dapat dikembalikan\r\ntulis size & warna di keterangan, bila tidak kami kirimkan stok yang ada\r\n', 'nexide.jpg'),
(3, 'OFF TIME', 100000, 'Bahan : Katun\r\nStyle : Casual\r\nPanjang Lengan : Pendek\r\nGaris Leher : Round  Neck\r\n\r\n\r\nTersedia SIZE S,M,L,XL (Panjang x Lebar)\r\nS = 58 x 38 cm \r\nM = 63 x 41 cm\r\nL = 69 x 50 cm\r\nXL = 71 x 53 cm\r\ntoleransi 2-3cm\r\nbarang yang sudah dibeli tidak dapat dikembalikan\r\ntulis size & warna di keterangan, bila tidak kami kirimkan stok yang ada\r\n', 'offtime.jpg'),
(4, 'THE NEXT', 100000, 'Bahan : Katun\r\nStyle : Casual\r\nPanjang Lengan : Pendek\r\nGaris Leher : Round  Neck\r\n\r\n\r\nTersedia SIZE S,M,L,XL (Panjang x Lebar)\r\nS = 58 x 38 cm \r\nM = 63 x 41 cm\r\nL = 69 x 50 cm\r\nXL = 71 x 53 cm\r\ntoleransi 2-3cm\r\nbarang yang sudah dibeli tidak dapat dikembalikan\r\ntulis size & warna di keterangan, bila tidak kami kirimkan stok yang ada\r\n', 'thenext.jpg'),
(5, 'BULLY', 120000, 'Material : Taslan milk di jamin adem\r\nSize : all size L fit to XL\r\nPanjang : 68 - 70 cm\r\nLebar dada : 56 - 58 cm.\r\n\r\nUntuk detail produk silahkan klik gambar \r\n99% foto real pict\r\nproduk original dengan kualitas terbaik, karena bagi kami kepuasan pelanggan menjadi tujuan utama bagi kami.', 'cargoule-1.jpg'),
(6, 'YIKES', 250000, 'Material : Fleece tebal, bahan tidak kasar lembut di pakai, bahan tidak luntur ketika di cuci, Bahan tidak berbulu, sangat cocok di gunakan sehari-hari\r\n\r\nSIZE :\r\nM  : lebar dada 52cm x panjang 65cm\r\nL   : lebar dada 55cm x panjang 68cm\r\nXL : lebar dada 58cm x panjang 71cm\r\nXxl ( BIG SIZE) ???\r\nXXL/ BIG SIZE JUGA ADA DISINI KLIK <a href=\"https://shopee.co.id/product/172743053/2708489859?v=c76&smtt=0.0.3\">LINK INI</a>\r\n\r\nUntuk detail produk silahkan klik gambar \r\n99% foto real pict\r\nproduk original dengan kualitas terbaik, karena bagi kami kepuasan pelanggan menjadi tujuan utama bagi kami.', 'yikes.jpg'),
(7, 'WORD WIDE', 300000, 'Material : Fleece tebal, bahan tidak kasar lembut di pakai, bahan tidak luntur ketika di cuci, Bahan tidak berbulu, sangat cocok di gunakan sehari-hari\r\n\r\nSIZE :\r\nM  : lebar dada 52cm x panjang 65cm\r\nL   : lebar dada 55cm x panjang 68cm\r\nXL : lebar dada 58cm x panjang 71cm\r\n\r\nUntuk detail produk silahkan klik gambar \r\n99% foto real pict\r\nproduk original dengan kualitas terbaik, karena bagi kami kepuasan pelanggan menjadi tujuan utama bagi kami.', 'word-wide.jpg'),
(8, 'WISE MINDS', 270000, 'Material : Fleece tebal, bahan tidak kasar lembut di pakai, bahan tidak luntur ketika di cuci, Bahan tidak berbulu, sangat cocok di gunakan sehari-hari\r\n\r\nSIZE :\r\nM  : lebar dada 52cm x panjang 65cm\r\nL   : lebar dada 55cm x panjang 68cm\r\nXL : lebar dada 58cm x panjang 71cm\r\n\r\n\r\nUntuk detail produk silahkan klik gambar \r\n99% foto real pict\r\nproduk original dengan kualitas terbaik, karena bagi kami kepuasan pelanggan menjadi tujuan utama bagi kami.', 'wise-minds.jpg'),
(9, 'SKIP SCHOOL', 280000, 'Material : Fleece tebal, bahan tidak kasar lembut di pakai, bahan tidak luntur ketika di cuci, Bahan tidak berbulu, sangat cocok di gunakan sehari-hari\r\n\r\nSIZE :\r\nM  : lebar dada 52cm x panjang 65cm\r\nL   : lebar dada 55cm x panjang 68cm\r\nXL : lebar dada 58cm x panjang 71cm\r\n\r\n\r\nUntuk detail produk silahkan klik gambar \r\n99% foto real pict\r\nproduk original dengan kualitas terbaik, karena bagi kami kepuasan pelanggan menjadi tujuan utama bagi kami.', 'skip-school.jpg'),
(10, 'NORTH WESTERN', 500000, 'Material : Fleece tebal, bahan tidak kasar lembut di pakai, bahan tidak luntur ketika di cuci, Bahan tidak berbulu, sangat cocok di gunakan sehari-hari\r\n\r\nSIZE :\r\nM  : lebar dada 52cm x panjang 65cm\r\nL   : lebar dada 55cm x panjang 68cm\r\nXL : lebar dada 58cm x panjang 71cm\r\n\r\n\r\nUntuk detail produk silahkan klik gambar \r\n99% foto real pict\r\nproduk original dengan kualitas terbaik, karena bagi kami kepuasan pelanggan menjadi tujuan utama bagi kami.', 'north-western.jpg'),
(11, 'TREAD', 450000, 'Material : Fleece tebal, bahan tidak kasar lembut di pakai, bahan tidak luntur ketika di cuci, Bahan tidak berbulu, sangat cocok di gunakan sehari-hari\r\n\r\nSIZE :\r\nM  : lebar dada 52cm x panjang 65cm\r\nL   : lebar dada 55cm x panjang 68cm\r\nXL : lebar dada 58cm x panjang 71cm\r\n\r\n\r\nUntuk detail produk silahkan klik gambar \r\n99% foto real pict\r\nproduk original dengan kualitas terbaik, karena bagi kami kepuasan pelanggan menjadi tujuan utama bagi kami.', 'jaket-3.jpg'),
(13, 'Ajag-Ijig Mask', 25000, 'masker kain ( AWET bisa dicuci )\r\nBahan Katun halus (tidak berbulu )\r\n3 lapis (Dijamin Nyaman)\r\nduckbill / earloop\r\n\r\nChat atau note untuk pilih motif \r\napabila tidak ada notes / stok habis kami random ya..\r\n\r\nsudah dipack dgn plastik bening\r\nHARAP DICUCI SEBELUM DIPAKAI ( DENGAN SABUN YA ) AGAR DEBU DAN SISA PRODUKSI BERSIH SBLM DIGUNAKAN\r\n\r\nTHANKS... HAPPY SHOPPING..', 'masker-1.jpg'),
(14, 'Mask Ajag-Ijig', 25000, 'masker kain ( AWET bisa dicuci )\r\nBahan Katun halus (tidak berbulu )\r\n3 lapis (Dijamin Nyaman)\r\nduckbill / earloop\r\n\r\nChat atau note untuk pilih motif \r\napabila tidak ada notes / stok habis kami random ya..\r\n\r\nsudah dipack dgn plastik bening\r\nHARAP DICUCI SEBELUM DIPAKAI ( DENGAN SABUN YA ) AGAR DEBU DAN SISA PRODUKSI BERSIH SBLM DIGUNAKAN\r\n\r\nTHANKS... HAPPY SHOPPING..', 'masker-2.jpg'),
(15, 'MASK', 25000, 'masker kain ( AWET bisa dicuci )\r\nBahan Katun halus (tidak berbulu )\r\n3 lapis (Dijamin Nyaman)\r\nduckbill / earloop\r\n\r\nChat atau note untuk pilih motif \r\napabila tidak ada notes / stok habis kami random ya..\r\n\r\nsudah dipack dgn plastik bening\r\nHARAP DICUCI SEBELUM DIPAKAI ( DENGAN SABUN YA ) AGAR DEBU DAN SISA PRODUKSI BERSIH SBLM DIGUNAKAN\r\n\r\nTHANKS... HAPPY SHOPPING..', 'masker-4.jpg'),
(16, 'BUT FIRST, COFFEE', 50000, 'Ukuran : P 27cm x T 36cm\r\nPanjang Tali : 60\r\nKondisi : Baru 100%\r\nBahan : D300 (Kanvas berlapis semi karet dibagian dalam)\r\nTerdiri dari 1 ruang besar\r\nBoneka (Rp.3.500) dan pompom (Rp.2.000)dapat dibeli terpisah, bisa cari di etalase toko kami\r\n\r\nProduk ini merupakan buatan konvesksi lokal sehingga memiliki harga yang terjangkau dengan kualitas terbaik dikelasnya\r\n\r\nBarang ready stock silahkan “tambah ke troli”\r\n\r\nSegala bentuk perubahan order melalui chat tidak dapat kami proses, kami akan melakukan pengiriman sesuai variasi dan alamat pada saat checkout\r\n\r\nProduk ini dapat dibayar di tempat (CASH ON DELIVERY) dengan estimasi pengiriman 2-7 hari kerja (tergantung kurir)\r\nMohon check kembali ulasan pesanan untuk menghindari doubel pesanan', 'totebag-1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email`, `password`, `gambar`) VALUES
(1, 'BAMBANG', 'bambang@pamungkas.com', 'a9711cbb2e3c2d5fc97a63e45bbe5076', 'default.jpg'),
(2, 'User Test', 'usertest@gmail.com', '202cb962ac59075b964b07152d234b70', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_checkout`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id_checkout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
