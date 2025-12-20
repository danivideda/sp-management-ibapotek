-- aptk02.aturkolom definition

CREATE TABLE `aturkolom` (
  `kode` varchar(255) DEFAULT NULL,
  `tPenjualan` varchar(255) DEFAULT NULL,
  `tPembelian` varchar(255) DEFAULT NULL,
  `tHutang` varchar(255) DEFAULT NULL,
  `tPiutang` varchar(255) DEFAULT NULL,
  `tBiaya` varchar(255) DEFAULT NULL,
  `tCashflow` varchar(255) DEFAULT NULL,
  `tReturPenjualan` varchar(255) DEFAULT NULL,
  `tReturPembelian` varchar(255) DEFAULT NULL,
  `dObat` varchar(255) DEFAULT NULL,
  `dSuplier` varchar(255) DEFAULT NULL,
  `dPelanggan` varchar(255) DEFAULT NULL,
  `dSales` varchar(255) DEFAULT NULL,
  `dDokter` varchar(255) DEFAULT NULL,
  `dKaryawan` varchar(255) DEFAULT NULL,
  `dPetunjuk` varchar(255) DEFAULT NULL,
  `dObat_req` varchar(255) DEFAULT NULL,
  `dKaryawan_req` varchar(255) DEFAULT NULL,
  `dSaldoAwal` varchar(255) DEFAULT NULL,
  `tPenjualan_req` varchar(255) DEFAULT NULL,
  `tPembelian_req` varchar(255) DEFAULT NULL,
  `pSaldoAwal` varchar(255) DEFAULT NULL,
  `pSaldoAwalHutang` varchar(255) DEFAULT NULL,
  `pStokOpname` varchar(255) DEFAULT NULL,
  `pSaldoAwalPiutang` varchar(255) DEFAULT NULL,
  `tPembelianPending_req` varchar(255) DEFAULT NULL,
  `tPenjualanPending_req` varchar(255) DEFAULT NULL,
  `tPembelianDetail` varchar(255) DEFAULT NULL,
  `tPenjualanDetail` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.autokode definition

CREATE TABLE `autokode` (
  `id` varchar(255) DEFAULT NULL,
  `obat` varchar(255) DEFAULT NULL,
  `suplier` varchar(255) DEFAULT NULL,
  `pelanggan` varchar(255) DEFAULT NULL,
  `sales` varchar(255) DEFAULT NULL,
  `dokter` varchar(255) DEFAULT NULL,
  `petunjuk` varchar(255) DEFAULT NULL,
  `karyawan` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `retur_pembelian` varchar(255) DEFAULT NULL,
  `retur_penjualan` varchar(255) DEFAULT NULL,
  `saldoAwal` varchar(255) DEFAULT NULL,
  `saldoAwalHutang` varchar(255) DEFAULT NULL,
  `saldoAwalPiutang` varchar(255) DEFAULT NULL,
  `stokOpname` varchar(255) DEFAULT NULL,
  `no_pesanan` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.barcode definition

CREATE TABLE `barcode` (
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.checkboxediting definition

CREATE TABLE `checkboxediting` (
  `kategori` varchar(255) DEFAULT NULL,
  `mengubah_harga` varchar(255) DEFAULT NULL,
  `mengubah_tanggal` varchar(255) DEFAULT NULL,
  `memberikan_diskon` varchar(255) DEFAULT NULL,
  `update_harga` varchar(255) DEFAULT NULL,
  `harga_jual` varchar(255) DEFAULT NULL,
  `laba_otomatis` varchar(255) DEFAULT NULL,
  `option_print` varchar(255) DEFAULT NULL,
  `harga_resep` varchar(255) DEFAULT NULL,
  `pending_faktur` varchar(255) DEFAULT NULL,
  `konfirmasi_obat` varchar(255) DEFAULT NULL,
  `form_ongkos` varchar(255) DEFAULT NULL,
  `form_PPN` varchar(255) DEFAULT NULL,
  `nilai_PPN` varchar(255) DEFAULT NULL,
  `diskon_faktur` varchar(255) DEFAULT NULL,
  `harga_tertinggi` varchar(255) DEFAULT NULL,
  `pembulatan_harga` varchar(255) DEFAULT NULL,
  `angka_pembulatan` varchar(255) DEFAULT NULL,
  `harga_beli` varchar(255) DEFAULT NULL,
  `print_preview` varchar(255) DEFAULT NULL,
  `centang_ppn` varchar(255) DEFAULT NULL,
  `faktur_baru` varchar(255) DEFAULT NULL,
  `harga_sebelumnya` varchar(255) DEFAULT NULL,
  `laba_jual` varchar(255) DEFAULT NULL,
  `stok_minus` varchar(255) DEFAULT NULL,
  `input_tabel` varchar(250) NOT NULL DEFAULT 'false',
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.comboalasan definition

CREATE TABLE `comboalasan` (
  `nama` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.comboexpired definition

CREATE TABLE `comboexpired` (
  `nama` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.combojeniskas definition

CREATE TABLE `combojeniskas` (
  `nama` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.combojenispenjualan definition

CREATE TABLE `combojenispenjualan` (
  `nama` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.combokategoriobat definition

CREATE TABLE `combokategoriobat` (
  `nama` varchar(255) NOT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`nama`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.combokategoripemasukan definition

CREATE TABLE `combokategoripemasukan` (
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.combokategoripengeluaran definition

CREATE TABLE `combokategoripengeluaran` (
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.comboresepnonresep definition

CREATE TABLE `comboresepnonresep` (
  `nama` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.combosatuanbeli definition

CREATE TABLE `combosatuanbeli` (
  `nama` varchar(255) NOT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`nama`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.combosatuanjual definition

CREATE TABLE `combosatuanjual` (
  `nama` varchar(255) NOT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`nama`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.combostok definition

CREATE TABLE `combostok` (
  `nama` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.combotunaikredit definition

CREATE TABLE `combotunaikredit` (
  `nama` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.comboukurancetak definition

CREATE TABLE `comboukurancetak` (
  `nama` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.dapotek definition

CREATE TABLE `dapotek` (
  `kode` varchar(255) DEFAULT NULL,
  `nama_apotek` varchar(255) DEFAULT NULL,
  `apoteker` varchar(250) DEFAULT '',
  `nohp` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `header_nota` varchar(255) DEFAULT NULL,
  `footer_nota` varchar(255) DEFAULT NULL,
  `kode_operator` varchar(255) DEFAULT NULL,
  `lokasi_database` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `nomor_wa_lap_online` varchar(250) NOT NULL DEFAULT '081000000000',
  `password_lap_online` varchar(250) NOT NULL DEFAULT '123456',
  `sinkron_laporan` varchar(250) NOT NULL DEFAULT 'true',
  `nomor_wa_notif` varchar(250) NOT NULL DEFAULT '081000000000',
  `value_periode` varchar(250) NOT NULL DEFAULT '1 Jam',
  `pukul` varchar(250) NOT NULL DEFAULT '18:00',
  `waktu_kirim_pesan` varchar(250) NOT NULL DEFAULT 'Pukul',
  `text_header` varchar(250) NOT NULL DEFAULT 'true',
  `text_total_harian` varchar(250) NOT NULL DEFAULT 'true',
  `text_total_bulanan` varchar(250) NOT NULL DEFAULT 'true',
  `banyak_transaksi_harian` varchar(250) NOT NULL DEFAULT 'true',
  `banyak_transaksi_bulanan` varchar(250) NOT NULL DEFAULT 'true',
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.ddokter definition

CREATE TABLE `ddokter` (
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_Hp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rekening` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`kode`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.dediting definition

CREATE TABLE `dediting` (
  `kode` varchar(255) DEFAULT NULL,
  `tanggal_pembelian` varchar(255) DEFAULT NULL,
  `harga_pembelian` varchar(255) DEFAULT NULL,
  `diskon_refaktur_pembelian` varchar(255) DEFAULT NULL,
  `tanggal_penjualan` varchar(255) DEFAULT NULL,
  `harga_penjualan` varchar(255) DEFAULT NULL,
  `dikson_refaktur_penjualan` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.dkaryawan definition

CREATE TABLE `dkaryawan` (
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rekening` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.dobat definition

CREATE TABLE `dobat` (
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `stok` varchar(255) DEFAULT NULL,
  `satuan_beli` varchar(255) DEFAULT NULL,
  `harga_beli` varchar(255) DEFAULT NULL,
  `stok_min` varchar(255) DEFAULT NULL,
  `satuan_1` varchar(255) DEFAULT NULL,
  `satuan_2` varchar(255) DEFAULT NULL,
  `satuan_3` varchar(255) DEFAULT NULL,
  `satuan_4` varchar(255) DEFAULT NULL,
  `isi_1` varchar(255) DEFAULT NULL,
  `isi_2` varchar(255) DEFAULT NULL,
  `isi_3` varchar(255) DEFAULT NULL,
  `isi_4` varchar(255) DEFAULT NULL,
  `harga_jual_1` varchar(255) DEFAULT NULL,
  `harga_jual_2` varchar(255) DEFAULT NULL,
  `harga_jual_3` varchar(255) DEFAULT NULL,
  `harga_jual_4` varchar(255) DEFAULT NULL,
  `harga_resep_1` varchar(255) DEFAULT NULL,
  `harga_resep_2` varchar(255) DEFAULT NULL,
  `harga_resep_3` varchar(255) DEFAULT NULL,
  `harga_resep_4` varchar(255) DEFAULT NULL,
  `laba_otomatis` varchar(255) DEFAULT NULL,
  `suplier` varchar(255) DEFAULT NULL,
  `pabrik` varchar(255) DEFAULT NULL,
  `expired` varchar(255) DEFAULT NULL,
  `indikasi` text DEFAULT NULL,
  `komposisi` text DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `no_batch` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`kode`,`user_id`),
  UNIQUE KEY `kode` (`kode`),
  KEY `kode_2` (`kode`),
  KEY `nama` (`nama`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.doperator definition

CREATE TABLE `doperator` (
  `kode` char(50) NOT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `apotek` char(50) DEFAULT NULL,
  `operator` char(50) DEFAULT NULL,
  `editing` char(50) DEFAULT NULL,
  `barcode` char(50) DEFAULT NULL,
  `persediaan` char(50) DEFAULT NULL,
  `aktivasi` char(50) DEFAULT NULL,
  `updates` char(50) DEFAULT NULL,
  `about` char(50) DEFAULT NULL,
  `import_saldo_awal` char(50) DEFAULT NULL,
  `jendela_obat` char(50) DEFAULT NULL,
  `tambah_biaya` char(50) DEFAULT NULL,
  `export_dokter` char(50) DEFAULT NULL,
  `piutang` char(50) DEFAULT NULL,
  `hapus_karyawan` char(50) DEFAULT NULL,
  `jendela_petunjuk` char(50) DEFAULT NULL,
  `export_saldo_awal` char(50) DEFAULT NULL,
  `detail_biaya` char(50) DEFAULT NULL,
  `hapus_pelanggan` char(50) DEFAULT NULL,
  `jendela_cashflow` char(50) DEFAULT NULL,
  `hapus_saldo_awal` char(50) DEFAULT NULL,
  `detail_saldo_awal_hutang` char(50) DEFAULT NULL,
  `export_suplier` char(50) DEFAULT NULL,
  `tambah_hutang` char(50) DEFAULT NULL,
  `cetak_penjualan` char(50) DEFAULT NULL,
  `import_obat` char(50) DEFAULT NULL,
  `hapus_dokter` char(50) DEFAULT NULL,
  `export_pelanggan` char(50) DEFAULT NULL,
  `detail_penjualan` char(50) DEFAULT NULL,
  `jendela_sales` char(50) DEFAULT NULL,
  `jendela_piutang` char(50) DEFAULT NULL,
  `jendela_hutang` char(50) DEFAULT NULL,
  `bayar_hutang` char(50) DEFAULT NULL,
  `tambah_saldo_awal_piutang` char(50) DEFAULT NULL,
  `jendela_penjualan` char(50) DEFAULT NULL,
  `tambah_karyawan` char(50) DEFAULT NULL,
  `detail_saldo_awal_piutang` char(50) DEFAULT NULL,
  `export_biaya` char(50) DEFAULT NULL,
  `export_stok_opname` char(50) DEFAULT NULL,
  `export_piutang` char(50) DEFAULT NULL,
  `edit_karyawan` char(50) DEFAULT NULL,
  `hapus_petunjuk` char(50) DEFAULT NULL,
  `tambah_stok_opname` char(50) DEFAULT NULL,
  `edit_petunjuk` char(50) DEFAULT NULL,
  `hapus_sales` char(50) DEFAULT NULL,
  `jendela_pembelian` char(50) DEFAULT NULL,
  `stok_opname` char(50) DEFAULT NULL,
  `tambah_cashflow` char(50) DEFAULT NULL,
  `hutang` char(50) DEFAULT NULL,
  `cetak_pembelian` char(50) DEFAULT NULL,
  `laporan` char(50) DEFAULT NULL,
  `export_pembelian` char(50) DEFAULT NULL,
  `tambah_dokter` char(50) DEFAULT NULL,
  `export_penjualan` char(50) DEFAULT NULL,
  `hapus_pembelian` char(50) DEFAULT NULL,
  `detail_cashflow` char(50) DEFAULT NULL,
  `edit_pelanggan` char(50) DEFAULT NULL,
  `penjualan` char(50) DEFAULT NULL,
  `hapus_suplier` char(50) DEFAULT NULL,
  `hapus_hutang` char(50) DEFAULT NULL,
  `hapus_biaya` char(50) DEFAULT NULL,
  `tambah_petunjuk` char(50) DEFAULT NULL,
  `edit_suplier` char(50) DEFAULT NULL,
  `export_sales` char(50) DEFAULT NULL,
  `pembelian` char(50) DEFAULT NULL,
  `pengaturan` char(50) DEFAULT NULL,
  `hapus_penjualan` char(50) DEFAULT NULL,
  `tambah_saldo_awal_hutang` char(50) DEFAULT NULL,
  `detail_retur_pembelian` char(50) DEFAULT NULL,
  `export_saldo_awal_hutang` char(50) DEFAULT NULL,
  `edit_sales` char(50) DEFAULT NULL,
  `cashflow` char(50) DEFAULT NULL,
  `import_dokter` char(50) DEFAULT NULL,
  `tambah_suplier` char(50) DEFAULT NULL,
  `jendela_pelanggan` char(50) DEFAULT NULL,
  `edit_obat` char(50) DEFAULT NULL,
  `tambah_sales` char(50) DEFAULT NULL,
  `import_saldo_awal_piutang` char(50) DEFAULT NULL,
  `export_saldo_awal_piutang` char(50) DEFAULT NULL,
  `jendela_dokter` char(50) DEFAULT NULL,
  `retur_penjualan` char(50) DEFAULT NULL,
  `tambah_retur_pembelian` char(50) DEFAULT NULL,
  `export_hutang` char(50) DEFAULT NULL,
  `import_sales` char(50) DEFAULT NULL,
  `tambah_obat` char(50) DEFAULT NULL,
  `detail_saldo_awal` char(50) DEFAULT NULL,
  `hapus_cashflow` char(50) DEFAULT NULL,
  `jendela_biaya` char(50) DEFAULT NULL,
  `export_karyawan` char(50) DEFAULT NULL,
  `import_pelanggan` char(50) DEFAULT NULL,
  `hapus_retur_pembelian` char(50) DEFAULT NULL,
  `hapus_piutang` char(50) DEFAULT NULL,
  `tambah_piutang` char(50) DEFAULT NULL,
  `jendela_karyawan` char(50) DEFAULT NULL,
  `detail_pembelian` char(50) DEFAULT NULL,
  `tambah_pelanggan` char(50) DEFAULT NULL,
  `cetak_stok_opname` char(50) DEFAULT NULL,
  `import_suplier` char(50) DEFAULT NULL,
  `tambah_retur_penjualan` char(50) DEFAULT NULL,
  `export_cashflow` char(50) DEFAULT NULL,
  `export_obat` char(50) DEFAULT NULL,
  `cetak_piutang` char(50) DEFAULT NULL,
  `edit_dokter` char(50) DEFAULT NULL,
  `cetak_biaya` char(50) DEFAULT NULL,
  `hapus_stok_opname` char(50) DEFAULT NULL,
  `import_petunjuk` char(50) DEFAULT NULL,
  `cetak_hutang` char(50) DEFAULT NULL,
  `hapus_saldo_awal_hutang` char(50) DEFAULT NULL,
  `saldo_awal` char(50) DEFAULT NULL,
  `hapus_retur_penjualan` char(50) DEFAULT NULL,
  `import_karyawan` char(50) DEFAULT NULL,
  `detail_retur_penjualan` char(50) DEFAULT NULL,
  `tambah_saldo_awal` char(50) DEFAULT NULL,
  `import_stok_opname` char(50) DEFAULT NULL,
  `hapus_saldo_awal_piutang` char(50) DEFAULT NULL,
  `tambah_penjualan` char(50) DEFAULT NULL,
  `export_petunjuk` char(50) DEFAULT NULL,
  `saldo_awal_piutang` char(50) DEFAULT NULL,
  `cetak_cashflow` char(50) DEFAULT NULL,
  `import_saldo_awal_hutang` char(50) DEFAULT NULL,
  `detail_stok_opname` char(50) DEFAULT NULL,
  `retur_pembelian` char(50) DEFAULT NULL,
  `saldo_awal_hutang` char(50) DEFAULT NULL,
  `jendela_suplier` char(50) DEFAULT NULL,
  `bayar_piutang` char(50) DEFAULT NULL,
  `tambah_pembelian` char(50) DEFAULT NULL,
  `hapus_obat` char(50) DEFAULT NULL,
  `atur_kolom` char(50) DEFAULT NULL,
  `printSizeName` char(50) DEFAULT NULL,
  `obat` char(50) DEFAULT NULL,
  `laba` char(50) DEFAULT NULL,
  `export_pembelian_detail` char(50) DEFAULT NULL,
  `export_penjualan_detail` char(50) DEFAULT NULL,
  `keuangan` char(50) DEFAULT NULL,
  `aplikasi` char(50) DEFAULT NULL,
  `printer` char(50) DEFAULT NULL,
  `printSizeNameSP` char(50) DEFAULT NULL,
  `display_harga` char(50) DEFAULT NULL,
  `online` char(50) DEFAULT NULL,
  `histori_hutang` varchar(250) NOT NULL DEFAULT 'true',
  `histori_piutang` varchar(250) NOT NULL DEFAULT 'true',
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`kode`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.dpelanggan definition

CREATE TABLE `dpelanggan` (
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rekening` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`kode`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.dpetunjuk definition

CREATE TABLE `dpetunjuk` (
  `kode` varchar(255) DEFAULT NULL,
  `petunjuk` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.dsales definition

CREATE TABLE `dsales` (
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_Hp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rekening` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`kode`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.dsuplier definition

CREATE TABLE `dsuplier` (
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_Hp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rekening` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`kode`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.filtertanggal definition

CREATE TABLE `filtertanggal` (
  `tanggal` varchar(255) DEFAULT NULL,
  `pembelian` varchar(255) DEFAULT NULL,
  `penjualan` varchar(255) DEFAULT NULL,
  `hutang` varchar(255) DEFAULT NULL,
  `piutang` varchar(255) DEFAULT NULL,
  `biaya` varchar(255) DEFAULT NULL,
  `cashflow` varchar(255) DEFAULT NULL,
  `returpembelian` varchar(255) DEFAULT NULL,
  `returpenjualan` varchar(255) DEFAULT NULL,
  `stokopname` varchar(255) DEFAULT NULL,
  `saldoawal` varchar(255) DEFAULT NULL,
  `saldoawalhutang` varchar(255) DEFAULT NULL,
  `saldoawalpiutang` varchar(255) DEFAULT NULL,
  `pembelianDetail` varchar(255) DEFAULT NULL,
  `penjualanDetail` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.keluarmasuk definition

CREATE TABLE `keluarmasuk` (
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(20) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `masuk` varchar(255) DEFAULT NULL,
  `keluar` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `sisa` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `no_batch` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `faktur` (`faktur`),
  KEY `kode` (`kode`),
  KEY `kode_2` (`kode`),
  KEY `faktur_2` (`faktur`),
  KEY `no_batch` (`no_batch`),
  KEY `user_id` (`user_id`),
  KEY `tanggal` (`tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.perubahanharga definition

CREATE TABLE `perubahanharga` (
  `Faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `Kode` varchar(255) DEFAULT NULL,
  `Waktu` varchar(255) DEFAULT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `naik_turun` varchar(255) DEFAULT NULL,
  `harga_beli_lama` varchar(255) DEFAULT NULL,
  `harga_beli_baru` varchar(255) DEFAULT NULL,
  `harga_jual_lama_1` varchar(255) DEFAULT NULL,
  `harga_jual_baru_1` varchar(255) DEFAULT NULL,
  `harga_jual_lama_2` varchar(255) DEFAULT NULL,
  `harga_jual_baru_2` varchar(255) DEFAULT NULL,
  `harga_jual_lama_3` varchar(255) DEFAULT NULL,
  `harga_jual_baru_3` varchar(255) DEFAULT NULL,
  `harga_jual_lama_4` varchar(255) DEFAULT NULL,
  `harga_jual_baru_4` varchar(255) DEFAULT NULL,
  `Operator` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.psaldoawal definition

CREATE TABLE `psaldoawal` (
  `kode` varchar(255) NOT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `kode_obat` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`kode`,`user_id`),
  KEY `kode` (`kode`),
  KEY `kode_obat` (`kode_obat`),
  KEY `tanggal` (`tanggal`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.psaldoawalhutang definition

CREATE TABLE `psaldoawalhutang` (
  `kode` varchar(255) DEFAULT NULL,
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `jatuh_tempo` varchar(255) DEFAULT NULL,
  `suplier` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.psaldoawalpiutang definition

CREATE TABLE `psaldoawalpiutang` (
  `kode` varchar(255) DEFAULT NULL,
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `jatuh_tempo` varchar(255) DEFAULT NULL,
  `pelanggan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.pstokopname definition

CREATE TABLE `pstokopname` (
  `kode` varchar(255) NOT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `kode_obat` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `harga_beli` varchar(255) DEFAULT NULL,
  `stok_komputer` varchar(255) DEFAULT NULL,
  `stok_nyata` varchar(255) DEFAULT NULL,
  `selisih` varchar(255) DEFAULT NULL,
  `total_selisih` varchar(255) DEFAULT NULL,
  `alasan` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`kode`,`user_id`),
  KEY `kode` (`kode`),
  KEY `kode_obat` (`kode_obat`),
  KEY `tanggal` (`tanggal`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.tbiaya definition

CREATE TABLE `tbiaya` (
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.tcashflow definition

CREATE TABLE `tcashflow` (
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `pemasukan` varchar(255) DEFAULT NULL,
  `pengeluaran` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `faktur` (`faktur`),
  KEY `tanggal` (`tanggal`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.thutang definition

CREATE TABLE `thutang` (
  `faktur` varchar(255) NOT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `tempo` varchar(255) DEFAULT NULL,
  `jatuh_tempo` varchar(255) DEFAULT NULL,
  `suplier` varchar(255) DEFAULT NULL,
  `tagihan_awal` varchar(255) DEFAULT NULL,
  `telah_dibayar` varchar(255) DEFAULT NULL,
  `sisa` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_bayar` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`faktur`,`user_id`),
  KEY `faktur` (`faktur`),
  KEY `tanggal` (`tanggal`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.tpembelian definition

CREATE TABLE `tpembelian` (
  `faktur` varchar(255) NOT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `tunai_kredit` varchar(255) DEFAULT NULL,
  `nhari` varchar(255) DEFAULT NULL,
  `jatuh_tempo` varchar(255) DEFAULT NULL,
  `kode_suplier` varchar(255) DEFAULT NULL,
  `suplier` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `dikson_persen` varchar(255) DEFAULT NULL,
  `diskon` varchar(255) DEFAULT NULL,
  `ppn` varchar(255) DEFAULT NULL,
  `ongkos` varchar(255) DEFAULT NULL,
  `bayar` varchar(255) DEFAULT NULL,
  `kembali` varchar(255) DEFAULT NULL,
  `no_pesanan` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`faktur`,`user_id`),
  UNIQUE KEY `faktur` (`faktur`),
  KEY `faktur_2` (`faktur`),
  KEY `tanggal` (`tanggal`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.tpembeliandetail definition

CREATE TABLE `tpembeliandetail` (
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(100) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `jumlah` varchar(100) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `harga_lama` varchar(100) DEFAULT NULL,
  `harga` varchar(100) DEFAULT NULL,
  `diskon_persen` varchar(100) DEFAULT NULL,
  `diskon` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `isi_1` varchar(100) DEFAULT NULL,
  `isi_2` varchar(100) DEFAULT NULL,
  `isi_3` varchar(100) DEFAULT NULL,
  `isi_4` varchar(100) DEFAULT NULL,
  `satuan_1` varchar(100) DEFAULT NULL,
  `satuan_2` varchar(100) DEFAULT NULL,
  `satuan_3` varchar(100) DEFAULT NULL,
  `satuan_4` varchar(100) DEFAULT NULL,
  `harga_jual_1` varchar(100) DEFAULT NULL,
  `harga_jual_2` varchar(100) DEFAULT NULL,
  `harga_jual_3` varchar(100) DEFAULT NULL,
  `harga_jual_4` varchar(100) DEFAULT NULL,
  `harga_resep_1` varchar(100) DEFAULT NULL,
  `harga_resep_2` varchar(100) DEFAULT NULL,
  `harga_resep_3` varchar(100) DEFAULT NULL,
  `harga_resep_4` varchar(100) DEFAULT NULL,
  `suplier` varchar(255) DEFAULT NULL,
  `expired` varchar(100) DEFAULT NULL,
  `no_batch` varchar(100) DEFAULT NULL,
  `input_baru` varchar(100) DEFAULT NULL,
  `jumlah_konversi` varchar(100) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `faktur` (`faktur`),
  KEY `kode` (`kode`),
  KEY `tanggal` (`tanggal`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.tpembelianpending definition

CREATE TABLE `tpembelianpending` (
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `tunai_kredit` varchar(255) DEFAULT NULL,
  `nhari` varchar(255) DEFAULT NULL,
  `jatuh_tempo` varchar(255) DEFAULT NULL,
  `kode_suplier` varchar(255) DEFAULT NULL,
  `suplier` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `dikson_persen` varchar(255) DEFAULT NULL,
  `diskon` varchar(255) DEFAULT NULL,
  `ppn` varchar(255) DEFAULT NULL,
  `ongkos` varchar(255) DEFAULT NULL,
  `bayar` varchar(255) DEFAULT NULL,
  `kembali` varchar(255) DEFAULT NULL,
  `no_pesanan` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `faktur` (`faktur`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.tpembelianpendingdetail definition

CREATE TABLE `tpembelianpendingdetail` (
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(100) DEFAULT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `jumlah` varchar(100) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `harga_lama` varchar(100) DEFAULT NULL,
  `harga` varchar(100) DEFAULT NULL,
  `diskon_persen` varchar(100) DEFAULT NULL,
  `diskon` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `isi_1` varchar(100) DEFAULT NULL,
  `isi_2` varchar(100) DEFAULT NULL,
  `isi_3` varchar(100) DEFAULT NULL,
  `isi_4` varchar(100) DEFAULT NULL,
  `satuan_1` varchar(100) DEFAULT NULL,
  `satuan_2` varchar(100) DEFAULT NULL,
  `satuan_3` varchar(100) DEFAULT NULL,
  `satuan_4` varchar(100) DEFAULT NULL,
  `harga_jual_1` varchar(100) DEFAULT NULL,
  `harga_jual_2` varchar(100) DEFAULT NULL,
  `harga_jual_3` varchar(100) DEFAULT NULL,
  `harga_jual_4` varchar(100) DEFAULT NULL,
  `harga_resep_1` varchar(100) DEFAULT NULL,
  `harga_resep_2` varchar(100) DEFAULT NULL,
  `harga_resep_3` varchar(100) DEFAULT NULL,
  `harga_resep_4` varchar(100) DEFAULT NULL,
  `suplier` varchar(255) DEFAULT NULL,
  `expired` varchar(100) DEFAULT NULL,
  `no_batch` varchar(100) DEFAULT NULL,
  `input_baru` varchar(100) DEFAULT NULL,
  `jumlah_konversi` varchar(100) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.tpenjualan definition

CREATE TABLE `tpenjualan` (
  `faktur` varchar(255) NOT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `tunai_kredit` varchar(255) DEFAULT NULL,
  `nhari` varchar(255) DEFAULT NULL,
  `jatuh_tempo` varchar(255) DEFAULT NULL,
  `jenis_penjualan` varchar(255) DEFAULT NULL,
  `kode_pelanggan` varchar(255) DEFAULT NULL,
  `pelanggan` varchar(255) DEFAULT NULL,
  `pasien` varchar(255) DEFAULT NULL,
  `kode_sales` varchar(255) DEFAULT NULL,
  `sales` varchar(255) DEFAULT NULL,
  `kode_dokter` varchar(255) DEFAULT NULL,
  `dokter` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `dikson_persen` varchar(255) DEFAULT NULL,
  `diskon` varchar(255) DEFAULT NULL,
  `ppn` varchar(255) DEFAULT NULL,
  `ongkos` varchar(255) DEFAULT NULL,
  `bayar` varchar(255) DEFAULT NULL,
  `kembali` varchar(255) DEFAULT NULL,
  `total_harga_beli` varchar(255) DEFAULT NULL,
  `total_laba` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`faktur`,`user_id`),
  UNIQUE KEY `faktur` (`faktur`),
  KEY `faktur_2` (`faktur`),
  KEY `tanggal` (`tanggal`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.tpenjualandetail definition

CREATE TABLE `tpenjualandetail` (
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `harga_beli` varchar(255) DEFAULT NULL,
  `harga_jual_lama` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `diskon` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `laba` varchar(255) DEFAULT NULL,
  `jumlah_konversi` varchar(255) DEFAULT NULL,
  `expired` varchar(255) DEFAULT NULL,
  `no_batch` varchar(250) NOT NULL DEFAULT '',
  `user_id` varchar(50) DEFAULT '',
  KEY `faktur` (`faktur`),
  KEY `kode` (`kode`),
  KEY `tanggal` (`tanggal`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.tpenjualanpending definition

CREATE TABLE `tpenjualanpending` (
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `tunai_kredit` varchar(255) DEFAULT NULL,
  `nhari` varchar(255) DEFAULT NULL,
  `jatuh_tempo` varchar(255) DEFAULT NULL,
  `jenis_penjualan` varchar(255) DEFAULT NULL,
  `kode_pelanggan` varchar(255) DEFAULT NULL,
  `pelanggan` varchar(255) DEFAULT NULL,
  `pasien` varchar(255) DEFAULT NULL,
  `kode_sales` varchar(255) DEFAULT NULL,
  `sales` varchar(255) DEFAULT NULL,
  `kode_dokter` varchar(255) DEFAULT NULL,
  `dokter` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `dikson_persen` varchar(255) DEFAULT NULL,
  `diskon` varchar(255) DEFAULT NULL,
  `ppn` varchar(255) DEFAULT NULL,
  `ongkos` varchar(255) DEFAULT NULL,
  `bayar` varchar(255) DEFAULT NULL,
  `kembali` varchar(255) DEFAULT NULL,
  `total_harga_beli` varchar(255) DEFAULT NULL,
  `total_laba` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `faktur` (`faktur`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.tpenjualanpendingdetail definition

CREATE TABLE `tpenjualanpendingdetail` (
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `harga_beli` varchar(255) DEFAULT NULL,
  `harga_jual_lama` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `diskon` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `laba` varchar(255) DEFAULT NULL,
  `jumlah_konversi` varchar(255) DEFAULT NULL,
  `expired` varchar(255) DEFAULT NULL,
  `no_batch` varchar(250) NOT NULL DEFAULT '',
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.tpiutang definition

CREATE TABLE `tpiutang` (
  `faktur` varchar(255) NOT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `tempo` varchar(255) DEFAULT NULL,
  `jatuh_tempo` varchar(255) DEFAULT NULL,
  `pelanggan` varchar(255) DEFAULT NULL,
  `tagihan_awal` varchar(255) DEFAULT NULL,
  `telah_dibayar` varchar(255) DEFAULT NULL,
  `sisa` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_bayar` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`faktur`,`user_id`),
  KEY `faktur` (`faktur`),
  KEY `tanggal` (`tanggal`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.treturpembelian definition

CREATE TABLE `treturpembelian` (
  `no_retur` varchar(255) NOT NULL,
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `suplier` varchar(255) DEFAULT NULL,
  `total_retur` varchar(255) DEFAULT NULL,
  `total_dibayar` varchar(255) DEFAULT NULL,
  `total_mengurangi_hutang` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`no_retur`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.treturpembeliandetail definition

CREATE TABLE `treturpembeliandetail` (
  `no_retur` varchar(255) DEFAULT NULL,
  `faktur` varchar(20) DEFAULT NULL,
  `tanggal` varchar(20) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`),
  KEY `idx_faktur` (`faktur`),
  KEY `idx_tanggal` (`tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.treturpenjualan definition

CREATE TABLE `treturpenjualan` (
  `no_retur` varchar(255) NOT NULL,
  `faktur` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `pelanggan` varchar(255) DEFAULT NULL,
  `total_retur` varchar(255) DEFAULT NULL,
  `total_dibayar` varchar(255) DEFAULT NULL,
  `total_mengurangi_piutang` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`no_retur`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;


-- aptk02.treturpenjualandetail definition

CREATE TABLE `treturpenjualandetail` (
  `no_retur` varchar(255) DEFAULT NULL,
  `faktur` varchar(20) DEFAULT NULL,
  `tanggal` varchar(20) DEFAULT NULL,
  `kode` varchar(200) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT '',
  KEY `user_id` (`user_id`),
  KEY `idx_faktur` (`faktur`),
  KEY `idx_tanggal` (`tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;