# Penjelasan Dan Test Case Penugasan EAS Pemrograman Integratif

* Muhammad Irsyad Ali (05311840000041)
----------------------------------------------------------------
# A. Penjelasan Singkat Aplikasi
Aplikasi ini adalah sebuah penerapan mvc yang dapat mendata dan mengelompokan item atau barang donasi dengan jumlah yang bisa lebih dari
satu setiap melakukan donasi

# B. Fitur 

**1. Halaman Donasi**
Pada halaman ini user bisa melakukan donasi dengan memasukan data dan item yang sesuai   
**Penjelasan** 
Fitur pada halaman ini digunakan user untuk memasukan data nama, jenis kelamin, bentuk sumbangan dan jumlahnya. Data yang diinputkan 
oleh user akan di handling oleh controller `home.php` `jenis.php` dan lainnya dan akan dimasukan kedalam SQL database "integratif" yang 
nantinya akan ditampilkan pada halaman list donasi

**Contoh I/O dan Screenshot**
Melakukan input Data : ![Image description](link-to-image)

Contoh Sumbangan berhasil : ![Image description](link-to-image)

Contoh error message jika nama kosong : ![Image description](link-to-image)

Contoh error message jika jumlah sumbangan kosong : ![Image description](link-to-image)

Contoh error message jika jenis sumbangan kosong : ![Image description](link-to-image)



**2. Halaman Donate List**
Fitur pada halaman ini digunakan untuk melihat semua data dalam bentuk tabel yang telah dimasukkan oleh user pada halaman donasi, tabel 
ini akan menampilkan nama, jenis dan jumlah. Pada halaman ini juga terdepat beberapa sub feature pencarian, dan juga terdapat tabel yang 
menampilkan dan mengkategorikan semua donasi yang telah di sumbangkan.

**contoh I/O dan screenshot**
Contoh melakukan pencarian lewat tabel kategori : ![Image description](link-to-image)

Contoh melakukan pemcarian menggunakan search bar : ![Image description](link-to-image)


**NOTE** 
repository ini harus di jalankan dalam folder local directory `hellomvc`    

