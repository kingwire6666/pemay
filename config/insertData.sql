REM INSERTING into KATEGORIOBAT
SET DEFINE OFF;
Insert into KATEGORIOBAT (NAMA)
values ('Antibiotik');
Insert into KATEGORIOBAT (NAMA)
values ('Vitamin');
Insert into KATEGORIOBAT (NAMA)
values ('Obat Cacing');
Insert into KATEGORIOBAT (NAMA)
values ('Obat Luka');
Insert into KATEGORIOBAT (NAMA)
values ('Obat Infeksi Kulit');
Insert into KATEGORIOBAT (NAMA)
values ('Obat Anti Jamur');
Insert into KATEGORIOBAT (NAMA)
values ('Obat Mata');
Insert into KATEGORIOBAT (NAMA)
values ('Obat Telinga');
Insert into KATEGORIOBAT (NAMA)
values ('Obat Perut');
Insert into KATEGORIOBAT (NAMA)
values ('Obat Nyeri Sendi');
REM INSERTING into KATEGORIPRODUK
SET DEFINE OFF;
Insert into KATEGORIPRODUK (NAMA)
values ('Makanan Hewan');
Insert into KATEGORIPRODUK (NAMA)
values ('Peralatan Hewan');
Insert into KATEGORIPRODUK (NAMA)
values ('Vitamin  Hewan');
Insert into KATEGORIPRODUK (NAMA)
values ('Mainan Hewan');
Insert into KATEGORIPRODUK (NAMA)
values ('Aksesoris Hewan');
REM INSERTING into JENISLAYANANMEDIS
SET DEFINE OFF;
Insert into JENISLAYANANMEDIS (NAMA, BIAYA)
values ('Pemeriksaan Umum', 75000);
Insert into JENISLAYANANMEDIS (NAMA, BIAYA)
values ('Vaksinasi', 150000);
Insert into JENISLAYANANMEDIS (NAMA, BIAYA)
values ('Sterilisasi', 500000);
Insert into JENISLAYANANMEDIS (NAMA, BIAYA)
values ('Pemeriksaan Kulit', 100000);
Insert into JENISLAYANANMEDIS (NAMA, BIAYA)
values ('Pengobatan Luka', 120000);
REM INSERTING into JENISLAYANANSALON
SET DEFINE OFF;
Insert into JENISLAYANANSALON (NAMA, BIAYA)
values ('Mandi', 50000);
Insert into JENISLAYANANSALON (NAMA, BIAYA)
values ('Grooming', 100000);
Insert into JENISLAYANANSALON (NAMA, BIAYA)
values ('Potong Kuku', 30000);
Insert into JENISLAYANANSALON (NAMA, BIAYA)
values ('Hair Styling', 80000);
Insert into JENISLAYANANSALON (NAMA, BIAYA)
values ('Potong Rambut', 60000);
REM INSERTING into KANDANG
SET DEFINE OFF;
Insert into KANDANG (UKURAN, STATUS)
values ('S', 'Empty');
Insert into KANDANG (UKURAN, STATUS)
values ('L', 'Empty');
Insert into KANDANG (UKURAN, STATUS)
values ('S', 'Booked');
Insert into KANDANG (UKURAN, STATUS)
values ('M', 'Fllled');
Insert into KANDANG (UKURAN, STATUS)
values ('L', 'Empty');
Insert into KANDANG (UKURAN, STATUS)
values ('S', 'Booked');
Insert into KANDANG (UKURAN, STATUS)
values ('L', 'Fllled');
Insert into KANDANG (UKURAN, STATUS)
values ('M', 'Empty');
REM INSERTING into LAPORAN
SET DEFINE OFF;
REM INSERTING into PEMILIKHEWAN
SET DEFINE OFF;
Insert into PEMILIKHEWAN (NAMA, EMAIL, NOMORTELPON)
values (
    'Andi Wijaya',
    'andi.wijaya@email.com',
    '081345678912'
  );
Insert into PEMILIKHEWAN (NAMA, EMAIL, NOMORTELPON)
values (
    'Rina Kartika',
    'rina.kartika@email.com',
    '081223344556'
  );
Insert into PEMILIKHEWAN (NAMA, EMAIL, NOMORTELPON)
values (
    'Dedi Pratama',
    'dedi.pratama@email.com',
    '081112223334'
  );
Insert into PEMILIKHEWAN (NAMA, EMAIL, NOMORTELPON)
values (
    'Budi Santoso',
    'budi.santoso@email.com',
    '081234567890'
  );
Insert into PEMILIKHEWAN (NAMA, EMAIL, NOMORTELPON)
values (
    'Siti Aminah',
    'siti.aminah@email.com',
    '081987654321'
  );
REM INSERTING into HEWAN
SET DEFINE OFF;
Insert into HEWAN (
    NAMA,
    RAS,
    SPESIES,
    GENDER,
    BERAT,
    TANGGALLAHIR,
    TINGGI,
    LEBAR,
    PEMILIKHEWAN_ID
  )
values (
    'Milo',
    'Persian',
    'Kucing',
    'Male',
    4.5,
    to_date('10-MAY-20', 'DD-MON-RR'),
    25,
    15,
    1
  );
Insert into HEWAN (
    NAMA,
    RAS,
    SPESIES,
    GENDER,
    BERAT,
    TANGGALLAHIR,
    TINGGI,
    LEBAR,
    PEMILIKHEWAN_ID
  )
values (
    'Bella',
    'Labrador',
    'Anjing',
    'Female',
    18,
    to_date('23-NOV-19', 'DD-MON-RR'),
    50,
    20,
    2
  );
Insert into HEWAN (
    NAMA,
    RAS,
    SPESIES,
    GENDER,
    BERAT,
    TANGGALLAHIR,
    TINGGI,
    LEBAR,
    PEMILIKHEWAN_ID
  )
values (
    'Charlie',
    'Siamese',
    'Kucing',
    'Male',
    5,
    to_date('15-MAR-21', 'DD-MON-RR'),
    30,
    18,
    3
  );
Insert into HEWAN (
    NAMA,
    RAS,
    SPESIES,
    GENDER,
    BERAT,
    TANGGALLAHIR,
    TINGGI,
    LEBAR,
    PEMILIKHEWAN_ID
  )
values (
    'Luna',
    'Poodle',
    'Anjing',
    'Female',
    10,
    to_date('20-JAN-22', 'DD-MON-RR'),
    40,
    25,
    4
  );
Insert into HEWAN (
    NAMA,
    RAS,
    SPESIES,
    GENDER,
    BERAT,
    TANGGALLAHIR,
    TINGGI,
    LEBAR,
    PEMILIKHEWAN_ID
  )
values (
    'Max',
    'Bengal',
    'Kucing',
    'Male',
    4.8,
    to_date('05-JUL-21', 'DD-MON-RR'),
    28,
    16,
    5
  );
REM INSERTING into PRODUK
SET DEFINE OFF;
Insert into PRODUK (NAMA, JUMLAH, HARGA, PEGAWAI_ID, KATEGORIPRODUK_ID)
values ('Dog Food Pedigree', 60, 220000, 4, 1);
Insert into PRODUK (NAMA, JUMLAH, HARGA, PEGAWAI_ID, KATEGORIPRODUK_ID)
values ('Cat Toy Ball', 50, 30000, 4, 4);
Insert into PRODUK (NAMA, JUMLAH, HARGA, PEGAWAI_ID, KATEGORIPRODUK_ID)
values ('Anjing Muzzle', 20, 50000, 4, 5);
Insert into PRODUK (NAMA, JUMLAH, HARGA, PEGAWAI_ID, KATEGORIPRODUK_ID)
values ('Multivitamin Hewan', 30, 120000, 4, 3);
Insert into PRODUK (NAMA, JUMLAH, HARGA, PEGAWAI_ID, KATEGORIPRODUK_ID)
values ('Cat Litter Sand', 40, 70000, 4, 2);
Insert into PRODUK (NAMA, JUMLAH, HARGA, PEGAWAI_ID, KATEGORIPRODUK_ID)
values ('Royal Canin Adult', 50, 250000, 4, 1);
Insert into PRODUK (NAMA, JUMLAH, HARGA, PEGAWAI_ID, KATEGORIPRODUK_ID)
values ('Whiskas Junior', 30, 200000, 4, 1);
Insert into PRODUK (NAMA, JUMLAH, HARGA, PEGAWAI_ID, KATEGORIPRODUK_ID)
values ('Shampoo Anjing', 20, 80000, 4, 2);
Insert into PRODUK (NAMA, JUMLAH, HARGA, PEGAWAI_ID, KATEGORIPRODUK_ID)
values ('Vitamin C Hewan', 40, 100000, 4, 3);
Insert into PRODUK (NAMA, JUMLAH, HARGA, PEGAWAI_ID, KATEGORIPRODUK_ID)
values ('Kalung Anjing', 25, 150000, 4, 5);
REM INSERTING into LAYANANSALON
SET DEFINE OFF;
Insert into LAYANANSALON (
    TANGGAL,
    TOTALBIAYA,
    JENISLAYANAN,
    STATUS,
    HEWAN_ID,
    PEGAWAI_ID
  )
values (
    to_timestamp(
      '20-NOV-24 10.00.00.000000000 AM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    150000,
    ARRAYJENISLAYANANSALON(1, 3),
    'Selesai',
    1,
    4
  );
Insert into LAYANANSALON (
    TANGGAL,
    TOTALBIAYA,
    JENISLAYANAN,
    STATUS,
    HEWAN_ID,
    PEGAWAI_ID
  )
values (
    to_timestamp(
      '21-NOV-24 02.30.00.000000000 PM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    200000,
    ARRAYJENISLAYANANSALON(2, 1),
    'Proses',
    2,
    4
  );
Insert into LAYANANSALON (
    TANGGAL,
    TOTALBIAYA,
    JENISLAYANAN,
    STATUS,
    HEWAN_ID,
    PEGAWAI_ID
  )
values (
    to_timestamp(
      '22-NOV-24 09.15.00.000000000 AM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    180000,
    ARRAYJENISLAYANANSALON(2),
    'Selesai',
    3,
    4
  );
Insert into LAYANANSALON (
    TANGGAL,
    TOTALBIAYA,
    JENISLAYANAN,
    STATUS,
    HEWAN_ID,
    PEGAWAI_ID
  )
values (
    to_timestamp(
      '23-NOV-24 11.00.00.000000000 AM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    120000,
    ARRAYJENISLAYANANSALON(3),
    'Batal',
    5,
    4
  );
Insert into LAYANANSALON (
    TANGGAL,
    TOTALBIAYA,
    JENISLAYANAN,
    STATUS,
    HEWAN_ID,
    PEGAWAI_ID
  )
values (
    to_timestamp(
      '24-NOV-24 03.45.00.000000000 PM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    250000,
    ARRAYJENISLAYANANSALON(4, 1),
    'Selesai',
    4,
    4
  );
REM INSERTING into LAYANANMEDIS
SET DEFINE OFF;
Insert into LAYANANMEDIS (
    TANGGAL,
    TOTALBIAYA,
    DESCRIPTION,
    STATUS,
    JENISLAYANAN,
    PEGAWAI_ID,
    HEWAN_ID
  )
values (
    to_timestamp(
      '20-NOV-24 10.00.00.000000000 AM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    300000,
    'Pemeriksaan lengkap',
    'Selesai',
    ARRAYJENISLAYANANMEDIS(1, 4),
    4,
    1
  );
Insert into LAYANANMEDIS (
    TANGGAL,
    TOTALBIAYA,
    DESCRIPTION,
    STATUS,
    JENISLAYANAN,
    PEGAWAI_ID,
    HEWAN_ID
  )
values (
    to_timestamp(
      '21-NOV-24 03.30.00.000000000 PM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    450000,
    'Vaksinasi dan sterilisasi',
    'Proses',
    ARRAYJENISLAYANANMEDIS(2, 3),
    4,
    2
  );
Insert into LAYANANMEDIS (
    TANGGAL,
    TOTALBIAYA,
    DESCRIPTION,
    STATUS,
    JENISLAYANAN,
    PEGAWAI_ID,
    HEWAN_ID
  )
values (
    to_timestamp(
      '22-NOV-24 11.45.00.000000000 AM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    200000,
    'Pengobatan luka ringan',
    'Selesai',
    ARRAYJENISLAYANANMEDIS(5),
    4,
    3
  );
Insert into LAYANANMEDIS (
    TANGGAL,
    TOTALBIAYA,
    DESCRIPTION,
    STATUS,
    JENISLAYANAN,
    PEGAWAI_ID,
    HEWAN_ID
  )
values (
    to_timestamp(
      '23-NOV-24 09.00.00.000000000 AM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    150000,
    'Pemeriksaan kulit',
    'Batal',
    ARRAYJENISLAYANANMEDIS(4),
    4,
    4
  );
Insert into LAYANANMEDIS (
    TANGGAL,
    TOTALBIAYA,
    DESCRIPTION,
    STATUS,
    JENISLAYANAN,
    PEGAWAI_ID,
    HEWAN_ID
  )
values (
    to_timestamp(
      '24-NOV-24 04.15.00.000000000 PM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    500000,
    'Pemeriksaan umum dan vaksinasi',
    'Selesai',
    ARRAYJENISLAYANANMEDIS(1, 2),
    4,
    5
  );
REM INSERTING into OBAT
SET DEFINE OFF;
Insert into OBAT (
    DOSIS,
    NAMA,
    FREKUENSI,
    INSTRUKSI,
    HARGA,
    LAYANANMEDIS_ID,
    KATEGORIOBAT_ID
  )
values (
    '1x/hari',
    'Antibiotik',
    '1 Minggu',
    'Setelah makan',
    75000,
    1,
    1
  );
Insert into OBAT (
    DOSIS,
    NAMA,
    FREKUENSI,
    INSTRUKSI,
    HARGA,
    LAYANANMEDIS_ID,
    KATEGORIOBAT_ID
  )
values (
    '2x/hari',
    'Vitamin',
    '2 Minggu',
    'Sebelum makan',
    120000,
    2,
    2
  );
Insert into OBAT (
    DOSIS,
    NAMA,
    FREKUENSI,
    INSTRUKSI,
    HARGA,
    LAYANANMEDIS_ID,
    KATEGORIOBAT_ID
  )
values (
    '1x/hari',
    'Obat Luka',
    '1 Bulan',
    'Teteskan di bagian luka',
    80000,
    3,
    4
  );
Insert into OBAT (
    DOSIS,
    NAMA,
    FREKUENSI,
    INSTRUKSI,
    HARGA,
    LAYANANMEDIS_ID,
    KATEGORIOBAT_ID
  )
values (
    '3x/hari',
    'Obat Anti Jamur',
    '2 Minggu',
    'Oleskan di kulit',
    120000,
    5,
    6
  );
REM INSERTING into LAYANANHOTEL
SET DEFINE OFF;
Insert into LAYANANHOTEL (
    CHECKIN,
    CHECKOUT,
    TOTALBIAYA,
    STATUS,
    HEWAN_ID,
    PEGAWAI_ID,
    KANDANG_NOMOR
  )
values (
    to_timestamp(
      '20-NOV-24 10.00.00.000000000 AM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    to_timestamp(
      '22-NOV-24 10.00.00.000000000 AM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    500000,
    'Selesai',
    1,
    4,
    1
  );
Insert into LAYANANHOTEL (
    CHECKIN,
    CHECKOUT,
    TOTALBIAYA,
    STATUS,
    HEWAN_ID,
    PEGAWAI_ID,
    KANDANG_NOMOR
  )
values (
    to_timestamp(
      '21-NOV-24 02.00.00.000000000 PM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    to_timestamp(
      '23-NOV-24 02.00.00.000000000 PM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    750000,
    'Proses',
    2,
    4,
    2
  );
Insert into LAYANANHOTEL (
    CHECKIN,
    CHECKOUT,
    TOTALBIAYA,
    STATUS,
    HEWAN_ID,
    PEGAWAI_ID,
    KANDANG_NOMOR
  )
values (
    to_timestamp(
      '22-NOV-24 09.00.00.000000000 AM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    to_timestamp(
      '25-NOV-24 09.00.00.000000000 AM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    1000000,
    'Selesai',
    3,
    4,
    3
  );
Insert into LAYANANHOTEL (
    CHECKIN,
    CHECKOUT,
    TOTALBIAYA,
    STATUS,
    HEWAN_ID,
    PEGAWAI_ID,
    KANDANG_NOMOR
  )
values (
    to_timestamp(
      '23-NOV-24 11.00.00.000000000 AM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    to_timestamp(
      '24-NOV-24 11.00.00.000000000 AM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    300000,
    'Batal',
    4,
    4,
    5
  );
Insert into LAYANANHOTEL (
    CHECKIN,
    CHECKOUT,
    TOTALBIAYA,
    STATUS,
    HEWAN_ID,
    PEGAWAI_ID,
    KANDANG_NOMOR
  )
values (
    to_timestamp(
      '24-NOV-24 03.00.00.000000000 PM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    to_timestamp(
      '26-NOV-24 03.00.00.000000000 PM',
      'DD-MON-RR HH.MI.SSXFF AM'
    ),
    600000,
    'Selesai',
    5,
    4,
    8
  );