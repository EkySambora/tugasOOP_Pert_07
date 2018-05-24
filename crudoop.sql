-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24 Mei 2018 pada 05.39
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudoop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_blog`
--

CREATE TABLE `category_blog` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category_blog`
--

INSERT INTO `category_blog` (`id`, `category_name`) VALUES
(1, 'PHP'),
(2, 'HTML & CSS'),
(3, 'FRAMEWORK'),
(4, 'SEO'),
(5, 'DESIGN GRAFIC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `reply` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `username`, `reply`) VALUES
(30, 1, 'Indah Utari', 'hai '),
(31, 6, 'Jodi', 'hai bro');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(40) NOT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `image_news` varchar(100) NOT NULL,
  `news` varchar(10000) NOT NULL,
  `date_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `id_category`, `title`, `image_news`, `news`, `date_post`) VALUES
(1, 1, 'Sekilas PHP Mengenai Pengertian Software', 'dumet-foto.jpg', 'Pengertian software adalah sebuah program yang berupa serangkaian instruksi sehingga komputer bisa mengerjakan tugas spesifik yang disebutkan dalam instruksi. Yang mengerjakan tugas tersebut adalah hardware. Jadi software adalah penghubung antara user dan hardware komputer karena hardware baru bisa bekerja ketika ada instruksi dari software. Namun software baru bisa bekerja ketika hardware sudah lengkap.\r\n\r\n\r\n Software komputer termasuk program atau aplikasi yang tersimpan dalam sistem komputer. Contoh-contoh software adalah antivirus, aplikasi pemutar video, browser internet, sistem operasi, aplikasi pemutar musik, games, e-mail, word processor, dan masih banyak lagi lainnya. Sebagian pakar berpendapat bahwa file yang diinput dalam sistem komputer atau file yang dihasilkan oleh sebuah program tidak termasuk software contohnya document hasil word processor. Tapi sebagian lainnya berpendapat bahwa software merupakan semua data yang tersimpan dalam komputer termasuk program dan file-filenya.\r\n\r\nSoftware harus diinstal dahulu dalam sistem komputer sebelum bisa digunakan. Software bisa didapat dalam bentuk disk yang dibeli dari toko-toko retail komputer atau diunduh melalui internet. Sama seperti hardware, software pun perlu perawatan dan pemeliharaan. Caranya adalah dengan mengupdate software secara berkala. Update-an ini berfungsi menemukan eror atau bug pada sistem software serta memperbaikinya.\r\n\r\nKerusakan software biasanya sistematik tapi kerusakan ini tidak dipengaruhi oleh usia software. Tidak seperti hardware yang semakin tua usianya maka hardware akan berubah menjadi usang dan semakin gampang rusak. Tapi perlu diketahui jika software yang dipakai adalah versi lama maka ada kemungkinan versi tersebut sudah tidak didukung lagi oleh penyedia software. Dengan kata lain sudah tidak ada updatean yang kompatibel dengan versi lama tersebut. Hal ini bisa mengakibatkan munculnya bug pada software dan menurunkan performa software dalam mengerjakan task.\r\n\r\nSoftware tidak bisa disentuh secara nyata, namun performanya bisa dirasakan dan disaksikan. Tingkat performanya pun bisa diatur melalui bahasa pemrograman jadi human user atau orang yang mengoperasikan komputer bisa berinteraksi lebih efisien lagi dengan hardware. Jadi kesimpulannya, pengertian software adalah perangkat logika dalam sistem komputer.', '2018-05-22 05:39:11'),
(2, 2, 'Pengertian dan Macam-Macam Hardware', 'ggsdfghsf.jpg', 'Pengertian hardware adalah komponen-komponen fisik dari sebuah komputer. Hardware tidak hanya yang tampak dari luar saja seperti keyboard, printer, mouse, atau monitor, tapi juga termasuk bagian internal komputer yang tertutupi casing seperti motherboard, CPU, kartu grafiks, kipas, power supply dan lain-lain. Hardware baru bisa berfungsi ketika ada instruksi dari software.\r\n\r\n\r\nTapi software juga tidak akan berfungsi jika hardware tidak tersedia lengkap. Jadi hubungan antara hardware dan software adalah hubungan timbal balik. Hardware terbagi atas empat komponen utama yaitu:\r\n\r\n1. Perangkat input – merupakan perangkat yang digunakan untuk menginput data atau informasi ke dalam sistem komputer. Contoh perangkat input adalah keyboard, mouse, touchpad, scanner, webcams, microphone, dan joystick.\r\n\r\n2. Perangkat output – merupakan perangkat yang bisa menampilkan data atau informasi yang bisa dibaca atau dianalisis oleh manusia (brainware). Contoh perangkat output adalah monitor, speaker, dan printer.\r\n\r\n3. Perangkat proses – merupakan perangkat yang memproses semua data atau informasi yang masuk ke dalam sistem komputer. Contoh perangkat proses adalah motherboard, CPU, RAM, chipset, CD / DVD Drive, ROM, graphic card, dan sound card.\r\n\r\n4. Perangkat penyimpanan – merupakan perangkat yang bertanggung jawab menyimpan semua data dan informasi yang diinput ke dalam sistem komputer. Perangkat penyimpanan terbagi atas dua tipe. Pertama adalah media penyimpanan yang terpasang tetap dalam komputer seperti hard drive (HD) dan solid-state drive (SSD).\r\n\r\nTipe kedua adalah media penyimpanan yang bisa dilepas pasang seperti USB flash disk dan HD external yang disambungkan pada komputer melalui USB port, dan optical disk seperti CD dan DVD yang hanya bisa digunakan ketika komputer tersebut memiliki optical disk drive. Laptop-laptop generasi terbaru yang memakai istilah ultra umumnya tidak memiliki optical disk drive agar laptop bisa berwujud tipis. Sebagai alternative, Anda bisa menggunakan optical disk drive external yang bisa dilepas pasang.\r\n\r\nAda juga perangkat tambahan seperti casing untuk melindungi perangkat internal komputer, dan power supply sebagai penyedia energi bagi komputer. Jadi kesimpulannya, pengertian hardware adalah perangkat keras komputer yang bisa dilihat dan disentuh secara langsung karena ada bentuk fisiknya.', '2018-05-22 04:39:09'),
(3, 3, 'hardware baru bisa bekerja ketika ada instruksi dari software', 'gambar-satu.jpg', 'Jadi software adalah penghubung antara user dan hardware komputer karena hardware baru bisa bekerja ketika ada instruksi dari software. Namun software baru bisa bekerja ketika hardware sudah lengkap.\r\n\r\n\r\n Software komputer termasuk program atau aplikasi yang tersimpan dalam sistem komputer. Contoh-contoh software adalah antivirus, aplikasi pemutar video, browser internet, sistem operasi, aplikasi pemutar musik, games, e-mail, word processor, dan masih banyak lagi lainnya. Sebagian pakar berpendapat bahwa file yang diinput dalam sistem komputer atau file yang dihasilkan oleh sebuah program tidak termasuk software contohnya document hasil word processor. Tapi sebagian lainnya berpendapat bahwa software merupakan semua data yang tersimpan dalam komputer termasuk program dan file-filenya.\r\n\r\nSoftware harus diinstal dahulu dalam sistem komputer sebelum bisa digunakan. Software bisa didapat dalam bentuk disk yang dibeli dari toko-toko retail komputer atau diunduh melalui internet. Sama seperti hardware, software pun perlu perawatan dan pemeliharaan. Caranya adalah dengan mengupdate software secara berkala. Update-an ini berfungsi menemukan eror atau bug pada sistem software serta memperbaikinya.\r\n\r\nKerusakan software biasanya sistematik tapi kerusakan ini tidak dipengaruhi oleh usia software. Tidak seperti hardware yang semakin tua usianya maka hardware akan berubah menjadi usang dan semakin gampang rusak. Tapi perlu diketahui jika software yang dipakai adalah versi lama maka ada kemungkinan versi tersebut sudah tidak didukung lagi oleh penyedia software. Dengan kata lain sudah tidak ada updatean yang kompatibel dengan versi lama tersebut. Hal ini bisa mengakibatkan munculnya bug pada software dan menurunkan performa software dalam mengerjakan task.\r\n\r\nSoftware tidak bisa disentuh secara nyata, namun performanya bisa dirasakan dan disaksikan. Tingkat performanya pun bisa diatur melalui bahasa pemrograman jadi human user atau orang yang mengoperasikan komputer bisa berinteraksi lebih efisien lagi dengan hardware. Jadi kesimpulannya, pengertian software adalah perangkat logika dalam sistem komputer.', '2018-05-22 04:39:39'),
(4, 4, 'Pengertian hardware adalah komponen-komponen fisik dari ', 'detective-conan.jpg', 'sebuah komputer. Hardware tidak hanya yang tampak dari luar saja seperti keyboard, printer, mouse, atau monitor, tapi juga termasuk bagian internal komputer yang tertutupi casing seperti motherboard, CPU, kartu grafiks, kipas, power supply dan lain-lain. Hardware baru bisa berfungsi ketika ada instruksi dari software.\r\n\r\n\r\nTapi software juga tidak akan berfungsi jika hardware tidak tersedia lengkap. Jadi hubungan antara hardware dan software adalah hubungan timbal balik. Hardware terbagi atas empat komponen utama yaitu:\r\n\r\n1. Perangkat input – merupakan perangkat yang digunakan untuk menginput data atau informasi ke dalam sistem komputer. Contoh perangkat input adalah keyboard, mouse, touchpad, scanner, webcams, microphone, dan joystick.\r\n\r\n2. Perangkat output – merupakan perangkat yang bisa menampilkan data atau informasi yang bisa dibaca atau dianalisis oleh manusia (brainware). Contoh perangkat output adalah monitor, speaker, dan printer.\r\n\r\n3. Perangkat proses – merupakan perangkat yang memproses semua data atau informasi yang masuk ke dalam sistem komputer. Contoh perangkat proses adalah motherboard, CPU, RAM, chipset, CD / DVD Drive, ROM, graphic card, dan sound card.\r\n\r\n4. Perangkat penyimpanan – merupakan perangkat yang bertanggung jawab menyimpan semua data dan informasi yang diinput ke dalam sistem komputer. Perangkat penyimpanan terbagi atas dua tipe. Pertama adalah media penyimpanan yang terpasang tetap dalam komputer seperti hard drive (HD) dan solid-state drive (SSD).\r\n\r\nTipe kedua adalah media penyimpanan yang bisa dilepas pasang seperti USB flash disk dan HD external yang disambungkan pada komputer melalui USB port, dan optical disk seperti CD dan DVD yang hanya bisa digunakan ketika komputer tersebut memiliki optical disk drive. Laptop-laptop generasi terbaru yang memakai istilah ultra umumnya tidak memiliki optical disk drive agar laptop bisa berwujud tipis. Sebagai alternative, Anda bisa menggunakan optical disk drive external yang bisa dilepas pasang.\r\n\r\nAda juga perangkat tambahan seperti casing untuk melindungi perangkat internal komputer, dan power supply sebagai penyedia energi bagi komputer. Jadi kesimpulannya, pengertian hardware adalah perangkat keras komputer yang bisa dilihat dan disentuh secara langsung karena ada bentuk fisiknya.', '2018-05-22 04:46:50'),
(5, 1, 'Pengertian software adalah sebuah program yang berupa ', 'andi-gambar.gif', ' mengerjakan tugas spesifik yang disebutkan dalam instruksi. Yang mengerjakan tugas tersebut adalah hardware. Jadi software adalah penghubung antara user dan hardware komputer karena hardware baru bisa bekerja ketika ada instruksi dari software. Namun software baru bisa bekerja ketika hardware sudah lengkap.\r\n\r\n\r\n Software komputer termasuk program atau aplikasi yang tersimpan dalam sistem komputer. Contoh-contoh software adalah antivirus, aplikasi pemutar video, browser internet, sistem operasi, aplikasi pemutar musik, games, e-mail, word processor, dan masih banyak lagi lainnya. Sebagian pakar berpendapat bahwa file yang diinput dalam sistem komputer atau file yang dihasilkan oleh sebuah program tidak termasuk software contohnya document hasil word processor. Tapi sebagian lainnya berpendapat bahwa software merupakan semua data yang tersimpan dalam komputer termasuk program dan file-filenya.\r\n\r\nSoftware harus diinstal dahulu dalam sistem komputer sebelum bisa digunakan. Software bisa didapat dalam bentuk disk yang dibeli dari toko-toko retail komputer atau diunduh melalui internet. Sama seperti hardware, software pun perlu perawatan dan pemeliharaan. Caranya adalah dengan mengupdate software secara berkala. Update-an ini berfungsi menemukan eror atau bug pada sistem software serta memperbaikinya.\r\n\r\nKerusakan software biasanya sistematik tapi kerusakan ini tidak dipengaruhi oleh usia software. Tidak seperti hardware yang semakin tua usianya maka hardware akan berubah menjadi usang dan semakin gampang rusak. Tapi perlu diketahui jika software yang dipakai adalah versi lama maka ada kemungkinan versi tersebut sudah tidak didukung lagi oleh penyedia software. Dengan kata lain sudah tidak ada updatean yang kompatibel dengan versi lama tersebut. Hal ini bisa mengakibatkan munculnya bug pada software dan menurunkan performa software dalam mengerjakan task.\r\n\r\nSoftware tidak bisa disentuh secara nyata, namun performanya bisa dirasakan dan disaksikan. Tingkat performanya pun bisa diatur melalui bahasa pemrograman jadi human user atau orang yang mengoperasikan komputer bisa berinteraksi lebih efisien lagi dengan hardware. Jadi kesimpulannya, pengertian software adalah perangkat logika dalam sistem komputer.\r\n mengerjakan tugas spesifik yang disebutkan dalam instruksi. Yang mengerjakan tugas tersebut adalah hardware. Jadi software adalah penghubung antara user dan hardware komputer karena hardware baru bisa bekerja ketika ada instruksi dari software. Namun software baru bisa bekerja ketika hardware sudah lengkap.\r\n\r\n\r\n Software komputer termasuk program atau aplikasi yang tersimpan dalam sistem komputer. Contoh-contoh software adalah antivirus, aplikasi pemutar video, browser internet, sistem operasi, aplikasi pemutar musik, games, e-mail, word processor, dan masih banyak lagi lainnya. Sebagian pakar berpendapat bahwa file yang diinput dalam sistem komputer atau file yang dihasilkan oleh sebuah program tidak termasuk software contohnya document hasil word processor. Tapi sebagian lainnya berpendapat bahwa software merupakan semua data yang tersimpan dalam komputer termasuk program dan file-filenya.\r\n\r\nSoftware harus diinstal dahulu dalam sistem komputer sebelum bisa digunakan. Software bisa didapat dalam bentuk disk yang dibeli dari toko-toko retail komputer atau diunduh melalui internet. Sama seperti hardware, software pun perlu perawatan dan pemeliharaan. Caranya adalah dengan mengupdate software secara berkala. Update-an ini berfungsi menemukan eror atau bug pada sistem software serta memperbaikinya.\r\n\r\nKerusakan software biasanya sistematik tapi kerusakan ini tidak dipengaruhi oleh usia software. Tidak seperti hardware yang semakin tua usianya maka hardware akan berubah menjadi usang dan semakin gampang rusak. Tapi perlu diketahui jika software yang dipakai adalah versi lama maka ada kemungkinan versi tersebut sudah tidak didukung lagi oleh penyedia software. Dengan kata lain sudah tidak ada updatean yang kompatibel dengan versi lama tersebut. Hal ini bisa mengakibatkan munculnya bug pada software dan menurunkan performa software dalam mengerjakan task.\r\n\r\nSoftware tidak bisa disentuh secara nyata, namun performanya bisa dirasakan dan disaksikan. Tingkat performanya pun bisa diatur melalui bahasa pemrograman jadi human user atau orang yang mengoperasikan komputer bisa berinteraksi lebih efisien lagi dengan hardware. Jadi kesimpulannya, pengertian software adalah perangkat logika dalam sistem komputer.', '2018-05-22 04:40:26'),
(6, 2, 'Pengertian hardware adalah komponen-komponen fisik', 'javascript-es6.jpg', ' dari sebuah komputer. Hardware tidak hanya yang tampak dari luar saja seperti keyboard, printer, mouse, atau monitor, tapi juga termasuk bagian internal komputer yang tertutupi casing seperti motherboard, CPU, kartu grafiks, kipas, power supply dan lain-lain. Hardware baru bisa berfungsi ketika ada instruksi dari software.\r\n\r\n\r\nTapi software juga tidak akan berfungsi jika hardware tidak tersedia lengkap. Jadi hubungan antara hardware dan software adalah hubungan timbal balik. Hardware terbagi atas empat komponen utama yaitu:\r\n\r\n1. Perangkat input – merupakan perangkat yang digunakan untuk menginput data atau informasi ke dalam sistem komputer. Contoh perangkat input adalah keyboard, mouse, touchpad, scanner, webcams, microphone, dan joystick.\r\n\r\n2. Perangkat output – merupakan perangkat yang bisa menampilkan data atau informasi yang bisa dibaca atau dianalisis oleh manusia (brainware). Contoh perangkat output adalah monitor, speaker, dan printer.\r\n\r\n3. Perangkat proses – merupakan perangkat yang memproses semua data atau informasi yang masuk ke dalam sistem komputer. Contoh perangkat proses adalah motherboard, CPU, RAM, chipset, CD / DVD Drive, ROM, graphic card, dan sound card.\r\n\r\n4. Perangkat penyimpanan – merupakan perangkat yang bertanggung jawab menyimpan semua data dan informasi yang diinput ke dalam sistem komputer. Perangkat penyimpanan terbagi atas dua tipe. Pertama adalah media penyimpanan yang terpasang tetap dalam komputer seperti hard drive (HD) dan solid-state drive (SSD).\r\n\r\nTipe kedua adalah media penyimpanan yang bisa dilepas pasang seperti USB flash disk dan HD external yang disambungkan pada komputer melalui USB port, dan optical disk seperti CD dan DVD yang hanya bisa digunakan ketika komputer tersebut memiliki optical disk drive. Laptop-laptop generasi terbaru yang memakai istilah ultra umumnya tidak memiliki optical disk drive agar laptop bisa berwujud tipis. Sebagai alternative, Anda bisa menggunakan optical disk drive external yang bisa dilepas pasang.\r\n\r\nAda juga perangkat tambahan seperti casing untuk melindungi perangkat internal komputer, dan power supply sebagai penyedia energi bagi komputer. Jadi kesimpulannya, pengertian hardware adalah perangkat keras komputer yang bisa dilihat dan disentuh secara langsung karena ada bentuk fisiknya.\r\n dari sebuah komputer. Hardware tidak hanya yang tampak dari luar saja seperti keyboard, printer, mouse, atau monitor, tapi juga termasuk bagian internal komputer yang tertutupi casing seperti motherboard, CPU, kartu grafiks, kipas, power supply dan lain-lain. Hardware baru bisa berfungsi ketika ada instruksi dari software.\r\n\r\n\r\nTapi software juga tidak akan berfungsi jika hardware tidak tersedia lengkap. Jadi hubungan antara hardware dan software adalah hubungan timbal balik. Hardware terbagi atas empat komponen utama yaitu:\r\n\r\n1. Perangkat input – merupakan perangkat yang digunakan untuk menginput data atau informasi ke dalam sistem komputer. Contoh perangkat input adalah keyboard, mouse, touchpad, scanner, webcams, microphone, dan joystick.\r\n\r\n2. Perangkat output – merupakan perangkat yang bisa menampilkan data atau informasi yang bisa dibaca atau dianalisis oleh manusia (brainware). Contoh perangkat output adalah monitor, speaker, dan printer.\r\n\r\n3. Perangkat proses – merupakan perangkat yang memproses semua data atau informasi yang masuk ke dalam sistem komputer. Contoh perangkat proses adalah motherboard, CPU, RAM, chipset, CD / DVD Drive, ROM, graphic card, dan sound card.\r\n\r\n4. Perangkat penyimpanan – merupakan perangkat yang bertanggung jawab menyimpan semua data dan informasi yang diinput ke dalam sistem komputer. Perangkat penyimpanan terbagi atas dua tipe. Pertama adalah media penyimpanan yang terpasang tetap dalam komputer seperti hard drive (HD) dan solid-state drive (SSD).\r\n\r\nTipe kedua adalah media penyimpanan yang bisa dilepas pasang seperti USB flash disk dan HD external yang disambungkan pada komputer melalui USB port, dan optical disk seperti CD dan DVD yang hanya bisa digunakan ketika komputer tersebut memiliki optical disk drive. Laptop-laptop generasi terbaru yang memakai istilah ultra umumnya tidak memiliki optical disk drive agar laptop bisa berwujud tipis. Sebagai alternative, Anda bisa menggunakan optical disk drive external yang bisa dilepas pasang.\r\n\r\nAda juga perangkat tambahan seperti casing untuk melindungi perangkat internal komputer, dan power supply sebagai penyedia energi bagi komputer. Jadi kesimpulannya, pengertian hardware adalah perangkat keras komputer yang bisa dilihat dan disentuh secara langsung karena ada bentuk fisiknya.', '2018-05-22 04:41:08'),
(7, 3, 'Jadi software adalah penghubung antara user dan hardware ', 'yoyo-yoyo.jpg', 'komputer karena hardware baru bisa bekerja ketika ada instruksi dari software. Namun software baru bisa bekerja ketika hardware sudah lengkap.\r\n\r\n\r\n Software komputer termasuk program atau aplikasi yang tersimpan dalam sistem komputer. Contoh-contoh software adalah antivirus, aplikasi pemutar video, browser internet, sistem operasi, aplikasi pemutar musik, games, e-mail, word processor, dan masih banyak lagi lainnya. Sebagian pakar berpendapat bahwa file yang diinput dalam sistem komputer atau file yang dihasilkan oleh sebuah program tidak termasuk software contohnya document hasil word processor. Tapi sebagian lainnya berpendapat bahwa software merupakan semua data yang tersimpan dalam komputer termasuk program dan file-filenya.\r\n\r\nSoftware harus diinstal dahulu dalam sistem komputer sebelum bisa digunakan. Software bisa didapat dalam bentuk disk yang dibeli dari toko-toko retail komputer atau diunduh melalui internet. Sama seperti hardware, software pun perlu perawatan dan pemeliharaan. Caranya adalah dengan mengupdate software secara berkala. Update-an ini berfungsi menemukan eror atau bug pada sistem software serta memperbaikinya.\r\n\r\nKerusakan software biasanya sistematik tapi kerusakan ini tidak dipengaruhi oleh usia software. Tidak seperti hardware yang semakin tua usianya maka hardware akan berubah menjadi usang dan semakin gampang rusak. Tapi perlu diketahui jika software yang dipakai adalah versi lama maka ada kemungkinan versi tersebut sudah tidak didukung lagi oleh penyedia software. Dengan kata lain sudah tidak ada updatean yang kompatibel dengan versi lama tersebut. Hal ini bisa mengakibatkan munculnya bug pada software dan menurunkan performa software dalam mengerjakan task.\r\n\r\nSoftware tidak bisa disentuh secara nyata, namun performanya bisa dirasakan dan disaksikan. Tingkat performanya pun bisa diatur melalui bahasa pemrograman jadi human user atau orang yang mengoperasikan komputer bisa berinteraksi lebih efisien lagi dengan hardware. Jadi kesimpulannya, pengertian software adalah perangkat logika dalam sistem komputer.\r\nkomputer karena hardware baru bisa bekerja ketika ada instruksi dari software. Namun software baru bisa bekerja ketika hardware sudah lengkap.\r\n\r\n\r\n Software komputer termasuk program atau aplikasi yang tersimpan dalam sistem komputer. Contoh-contoh software adalah antivirus, aplikasi pemutar video, browser internet, sistem operasi, aplikasi pemutar musik, games, e-mail, word processor, dan masih banyak lagi lainnya. Sebagian pakar berpendapat bahwa file yang diinput dalam sistem komputer atau file yang dihasilkan oleh sebuah program tidak termasuk software contohnya document hasil word processor. Tapi sebagian lainnya berpendapat bahwa software merupakan semua data yang tersimpan dalam komputer termasuk program dan file-filenya.\r\n\r\nSoftware harus diinstal dahulu dalam sistem komputer sebelum bisa digunakan. Software bisa didapat dalam bentuk disk yang dibeli dari toko-toko retail komputer atau diunduh melalui internet. Sama seperti hardware, software pun perlu perawatan dan pemeliharaan. Caranya adalah dengan mengupdate software secara berkala. Update-an ini berfungsi menemukan eror atau bug pada sistem software serta memperbaikinya.\r\n\r\nKerusakan software biasanya sistematik tapi kerusakan ini tidak dipengaruhi oleh usia software. Tidak seperti hardware yang semakin tua usianya maka hardware akan berubah menjadi usang dan semakin gampang rusak. Tapi perlu diketahui jika software yang dipakai adalah versi lama maka ada kemungkinan versi tersebut sudah tidak didukung lagi oleh penyedia software. Dengan kata lain sudah tidak ada updatean yang kompatibel dengan versi lama tersebut. Hal ini bisa mengakibatkan munculnya bug pada software dan menurunkan performa software dalam mengerjakan task.\r\n\r\nSoftware tidak bisa disentuh secara nyata, namun performanya bisa dirasakan dan disaksikan. Tingkat performanya pun bisa diatur melalui bahasa pemrograman jadi human user atau orang yang mengoperasikan komputer bisa berinteraksi lebih efisien lagi dengan hardware. Jadi kesimpulannya, pengertian software adalah perangkat logika dalam sistem komputer.', '2018-05-22 04:48:31'),
(8, 4, 'sebuah komputer. Hardware tidak hanya yang tampak dari luar saja seperti', 'input-upload.gif', ' keyboard, printer, mouse, atau monitor, tapi juga termasuk bagian internal komputer yang tertutupi casing seperti motherboard, CPU, kartu grafiks, kipas, power supply dan lain-lain. Hardware baru bisa berfungsi ketika ada instruksi dari software.\r\n\r\n\r\nTapi software juga tidak akan berfungsi jika hardware tidak tersedia lengkap. Jadi hubungan antara hardware dan software adalah hubungan timbal balik. Hardware terbagi atas empat komponen utama yaitu:\r\n\r\n1. Perangkat input – merupakan perangkat yang digunakan untuk menginput data atau informasi ke dalam sistem komputer. Contoh perangkat input adalah keyboard, mouse, touchpad, scanner, webcams, microphone, dan joystick.\r\n\r\n2. Perangkat output – merupakan perangkat yang bisa menampilkan data atau informasi yang bisa dibaca atau dianalisis oleh manusia (brainware). Contoh perangkat output adalah monitor, speaker, dan printer.\r\n\r\n3. Perangkat proses – merupakan perangkat yang memproses semua data atau informasi yang masuk ke dalam sistem komputer. Contoh perangkat proses adalah motherboard, CPU, RAM, chipset, CD / DVD Drive, ROM, graphic card, dan sound card.\r\n\r\n4. Perangkat penyimpanan – merupakan perangkat yang bertanggung jawab menyimpan semua data dan informasi yang diinput ke dalam sistem komputer. Perangkat penyimpanan terbagi atas dua tipe. Pertama adalah media penyimpanan yang terpasang tetap dalam komputer seperti hard drive (HD) dan solid-state drive (SSD).\r\n\r\nTipe kedua adalah media penyimpanan yang bisa dilepas pasang seperti USB flash disk dan HD external yang disambungkan pada komputer melalui USB port, dan optical disk seperti CD dan DVD yang hanya bisa digunakan ketika komputer tersebut memiliki optical disk drive. Laptop-laptop generasi terbaru yang memakai istilah ultra umumnya tidak memiliki optical disk drive agar laptop bisa berwujud tipis. Sebagai alternative, Anda bisa menggunakan optical disk drive external yang bisa dilepas pasang.\r\n\r\nAda juga perangkat tambahan seperti casing untuk melindungi perangkat internal komputer, dan power supply sebagai penyedia energi bagi komputer. Jadi kesimpulannya, pengertian hardware adalah perangkat keras komputer yang bisa dilihat dan disentuh secara langsung karena ada bentuk fisiknya.\r\n keyboard, printer, mouse, atau monitor, tapi juga termasuk bagian internal komputer yang tertutupi casing seperti motherboard, CPU, kartu grafiks, kipas, power supply dan lain-lain. Hardware baru bisa berfungsi ketika ada instruksi dari software.\r\n\r\n\r\nTapi software juga tidak akan berfungsi jika hardware tidak tersedia lengkap. Jadi hubungan antara hardware dan software adalah hubungan timbal balik. Hardware terbagi atas empat komponen utama yaitu:\r\n\r\n1. Perangkat input – merupakan perangkat yang digunakan untuk menginput data atau informasi ke dalam sistem komputer. Contoh perangkat input adalah keyboard, mouse, touchpad, scanner, webcams, microphone, dan joystick.\r\n\r\n2. Perangkat output – merupakan perangkat yang bisa menampilkan data atau informasi yang bisa dibaca atau dianalisis oleh manusia (brainware). Contoh perangkat output adalah monitor, speaker, dan printer.\r\n\r\n3. Perangkat proses – merupakan perangkat yang memproses semua data atau informasi yang masuk ke dalam sistem komputer. Contoh perangkat proses adalah motherboard, CPU, RAM, chipset, CD / DVD Drive, ROM, graphic card, dan sound card.\r\n\r\n4. Perangkat penyimpanan – merupakan perangkat yang bertanggung jawab menyimpan semua data dan informasi yang diinput ke dalam sistem komputer. Perangkat penyimpanan terbagi atas dua tipe. Pertama adalah media penyimpanan yang terpasang tetap dalam komputer seperti hard drive (HD) dan solid-state drive (SSD).\r\n\r\nTipe kedua adalah media penyimpanan yang bisa dilepas pasang seperti USB flash disk dan HD external yang disambungkan pada komputer melalui USB port, dan optical disk seperti CD dan DVD yang hanya bisa digunakan ketika komputer tersebut memiliki optical disk drive. Laptop-laptop generasi terbaru yang memakai istilah ultra umumnya tidak memiliki optical disk drive agar laptop bisa berwujud tipis. Sebagai alternative, Anda bisa menggunakan optical disk drive external yang bisa dilepas pasang.\r\n\r\nAda juga perangkat tambahan seperti casing untuk melindungi perangkat internal komputer, dan power supply sebagai penyedia energi bagi komputer. Jadi kesimpulannya, pengertian hardware adalah perangkat keras komputer yang bisa dilihat dan disentuh secara langsung karena ada bentuk fisiknya.', '2018-05-22 04:48:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_blog`
--
ALTER TABLE `category_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_blog`
--
ALTER TABLE `category_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
