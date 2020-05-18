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
Melakukan input Data : ![Input Data](https://github.com/irsyadali1/EAS_Pemrograman-Intergratif_Muhammad-Irsyad-Ali_05311840000041/blob/master/screenshot/input%20data%20halaman%20donasi.png)

Contoh Sumbangan berhasil : ![Sumbangan Berhasil](https://github.com/irsyadali1/EAS_Pemrograman-Intergratif_Muhammad-Irsyad-Ali_05311840000041/blob/master/screenshot/contoh%20sumbangan%20berhasil.png)

Contoh error message jika nama kosong : ![Error Nama](https://github.com/irsyadali1/EAS_Pemrograman-Intergratif_Muhammad-Irsyad-Ali_05311840000041/blob/master/screenshot/contoh%20error%20nama%20kosong.png)

Contoh error message jika jumlah sumbangan kosong : ![Error Jumlah Sumbangan](https://github.com/irsyadali1/EAS_Pemrograman-Intergratif_Muhammad-Irsyad-Ali_05311840000041/blob/master/screenshot/contoh%20error%20jumlah%20sumbangan%20kosong.png)

Contoh error message jika jenis sumbangan kosong : ![Error Jenis Sumbangan](https://github.com/irsyadali1/EAS_Pemrograman-Intergratif_Muhammad-Irsyad-Ali_05311840000041/blob/master/screenshot/contoh%20error%20jenis%20sumbangan%20kosong.png)



**2. Halaman Donate List**  
Fitur pada halaman ini digunakan untuk melihat semua data dalam bentuk tabel yang telah dimasukkan oleh user pada halaman donasi, tabel 
ini akan menampilkan nama, jenis dan jumlah. Pada halaman ini juga terdepat beberapa sub feature pencarian, dan juga terdapat tabel yang 
menampilkan dan mengkategorikan semua donasi yang telah di sumbangkan.

**contoh I/O dan screenshot**
Contoh melakukan pencarian lewat tabel kategori : ![Kategori](https://github.com/irsyadali1/EAS_Pemrograman-Intergratif_Muhammad-Irsyad-Ali_05311840000041/blob/master/screenshot/contoh%20kategori.png)

Contoh melakukan pemcarian menggunakan search bar : ![Search Bar](https://github.com/irsyadali1/EAS_Pemrograman-Intergratif_Muhammad-Irsyad-Ali_05311840000041/blob/master/screenshot/CONTOH%20search%20bar.png)


**NOTE** 
repository ini harus di jalankan dalam folder local directory `hellomvc`    
Jika terjadi masalah pada `.htaccess`, sudah di sediakan `public.rar` yang menyimpan file `.htacces` yang bisa di extract pada repo ini 
