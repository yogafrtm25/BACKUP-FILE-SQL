
CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `id_tamu` int(11) DEFAULT NULL,
  `tanggal_checkin` date DEFAULT NULL,
  `tanggal_checkout` date DEFAULT NULL,
  `jumlah_kamar` int(11) DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL,
  `status_pemesanan` enum('confirmed','pending','canceled') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `pemesanan` (`id_pemesanan`, `id_tamu`, `tanggal_checkin`, `tanggal_checkout`, `jumlah_kamar`, `total_harga`, `status_pemesanan`) VALUES
(2, 2, '2024-10-08', '2024-10-15', 4, 4000000.00, 'confirmed');

CREATE TABLE `struk` (
  `id_struk` int(11) NOT NULL,
  `id_pemesanan` int(11) DEFAULT NULL,
  `nama_tamu` varchar(100) DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL,
  `tanggal_pembayaran` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `struk` (`id_struk`, `id_pemesanan`, `nama_tamu`, `total_harga`, `tanggal_pembayaran`) VALUES
(2, 2, 'Udin nganga', 4000000.00, '2024-10-08');

CREATE TABLE `tamu` (
  `id_tamu` int(11) NOT NULL,
  `nama_tamu` varchar(100) NOT NULL,
  `alamat_tamu` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tamu` (`id_tamu`, `nama_tamu`, `alamat_tamu`, `no_telepon`, `email`) VALUES
(1, 'Yoga Pratama', 'Jl. Kaum Utara No. 10', '085771449725', 'yogaganteng@example.com'),
(2, 'Udin nganga', 'Jl. Kaum Sealatan No. 99', '085771449736', 'udinnganga@example.com');

