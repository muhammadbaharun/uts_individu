-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Nov 2022 pada 11.18
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblusi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post'),
(29, 'Can add guest', 8, 'add_guest'),
(30, 'Can change guest', 8, 'change_guest'),
(31, 'Can delete guest', 8, 'delete_guest'),
(32, 'Can view guest', 8, 'view_guest'),
(33, 'Can add kategori', 9, 'add_kategori'),
(34, 'Can change kategori', 9, 'change_kategori'),
(35, 'Can delete kategori', 9, 'delete_kategori'),
(36, 'Can view kategori', 9, 'view_kategori');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$GIT1uf3icKMqlJQuf1F6sm$hkl5B8ppnAn+O0Z7Ld3wG3cOrV8iQVLUVSEz3BHcGHQ=', '2022-11-20 07:54:26.975584', 1, 'lusi', '', '', 'lusianastasia8@gmail.com', 1, 1, '2022-11-20 07:50:45.343181');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_kategori`
--

CREATE TABLE `buku_kategori` (
  `id` bigint(20) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku_kategori`
--

INSERT INTO `buku_kategori` (`id`, `kategori`) VALUES
(1, 'Kalkulus'),
(2, 'IPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_post`
--

CREATE TABLE `buku_post` (
  `id` bigint(20) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `sinopsis` longtext NOT NULL,
  `kategori_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku_post`
--

INSERT INTO `buku_post` (`id`, `judul`, `sinopsis`, `kategori_id`) VALUES
(1, 'Matematika', 'Merupakan pelajaran yang menyenangkan', 1),
(2, 'IPA', 'Ilmu Pengetahuan Alam', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-11-20 08:09:53.707739', '1', 'post object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-11-20 08:10:11.367025', '2', 'post object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-11-20 10:01:28.623828', '1', 'Kalkulus', 1, '[{\"added\": {}}]', 9, 1),
(4, '2022-11-20 10:01:45.528282', '2', 'IPA', 1, '[{\"added\": {}}]', 9, 1),
(5, '2022-11-20 10:06:05.763836', '2', 'IPA', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1),
(6, '2022-11-20 10:06:11.566277', '1', 'Matematika', 2, '[{\"changed\": {\"fields\": [\"Kategori\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'buku', 'kategori'),
(7, 'buku', 'post'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'tamu', 'guest');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-20 07:48:41.533845'),
(2, 'auth', '0001_initial', '2022-11-20 07:48:42.267985'),
(3, 'admin', '0001_initial', '2022-11-20 07:48:42.424185'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-20 07:48:42.439806'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-20 07:48:42.486666'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-20 07:48:42.580386'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-20 07:48:42.658486'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-20 07:48:42.683576'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-20 07:48:42.699197'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-20 07:48:42.777297'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-20 07:48:42.808538'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-20 07:48:42.824157'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-20 07:48:42.855398'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-20 07:48:42.886637'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-20 07:48:42.917877'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-20 07:48:42.933500'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-20 07:48:42.964744'),
(18, 'sessions', '0001_initial', '2022-11-20 07:48:43.027217'),
(19, 'buku', '0001_initial', '2022-11-20 08:00:52.398548'),
(20, 'tamu', '0001_initial', '2022-11-20 09:26:13.735102'),
(21, 'buku', '0002_kategori', '2022-11-20 09:58:44.077925'),
(22, 'buku', '0003_post_kategori', '2022-11-20 10:03:44.022077');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('w7jllcuuncz0vzc5ui0n9j83v4j8r710', '.eJxVjMEOwiAQRP-FsyFsKIV69O43kIXdlaqhSWlPxn9Xkh70Mod5b-alIu5biXvjNc6kzgrU6bdLmB9cO6A71tui81K3dU66K_qgTV8X4uflcP8OCrbS1xgGHgQ4iAHnbUqIPowoFoiYCMWNGdh8U0xmMUwepsmJDxYsO_X-ABXPOPc:1owf9m:3MY8r_12IMGe0tU1AELquzIUtS5xUK1lyrxxQka2iRU', '2022-12-04 07:54:26.983393');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu_guest`
--

CREATE TABLE `tamu_guest` (
  `id` bigint(20) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kegiatan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tamu_guest`
--

INSERT INTO `tamu_guest` (`id`, `nim`, `nama`, `kegiatan`) VALUES
(1, '1901013008', 'Lusi Anastasia', 'Membaca'),
(2, '1901013008', 'Lusi Anastasia', 'Membaca'),
(3, '1901013008', 'Lusi Anastasia', 'Membaca');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `buku_kategori`
--
ALTER TABLE `buku_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku_post`
--
ALTER TABLE `buku_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buku_post_kategori_id_0a807e43_fk_buku_kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeks untuk tabel `tamu_guest`
--
ALTER TABLE `tamu_guest`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `buku_kategori`
--
ALTER TABLE `buku_kategori`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `buku_post`
--
ALTER TABLE `buku_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tamu_guest`
--
ALTER TABLE `tamu_guest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `buku_post`
--
ALTER TABLE `buku_post`
  ADD CONSTRAINT `buku_post_kategori_id_0a807e43_fk_buku_kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `buku_kategori` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
