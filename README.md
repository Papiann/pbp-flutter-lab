# Tugas 7: Elemen Dasar Flutter

Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

#

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya!
Jawab :

- Stateless Widget merupakan widget yang tidak bergantung pada sebuah state. Sejak awal, seluruh konfigurasi yang berada dalam widget stateless sudah diinisiasi, sehingga ketika di-build perubahan tidak akan terjadi. Contoh statetless widget adalah `Icon` dan `Text`.

- Stateful Widget merupakan widget yang bersifat dinamis dan bergantung pada sebuah state. Ketika terjadi perubahan data / adanya user actions, maka perubahan dapat terjadi. Contoh statefull widget adalah `Checkbox` dan `Textfield`.

Perbedaan dari keduanya terletak pada kondisi penggunaan widget, stateless widget digunakan ketika ingin membuat komponen sederhana dan bersifat statis. Sedangkan, stateful widget digunakan ketika ingin membuat komponen yang dinamis atau ingin mengubah reference state yang sudah diset.

###  Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!
Jawab :

- Text --> Fungsinya untuk menampilkan tulisan seperti `COUNTER`, `GANJIL`, `GENAP`. 

- FloatingAcitonButton --> Fungsinya untuk membuat floating button. Pada tugas kali ini terdapat 2 button FloatingAcitonButton yang digunakan untuk menambahkan dan mengurangi jumlah counter.

- Padding --> Fungsinya untuk memberikan padding. Pada tugas kali ini digunakan sebagai parent widget dari FloatingAcitonButton agar memiliki jarak antara ujung layar dan FloatingAcitonButton.
- Stack --> Fungsinya untuk menampilkan child widget seperti tumpukan. Pada tugas kali ini digunakan untuk menampilkan 2 button FloatingAcitonButton.
- Scaffold --> Fungsinya untuk mengatur struktur visual layout dengan mengimplementasikan material design.
- Padding --> Fungsinya untuk membuat layout pada tampilan aplikasi untuk masing-masing widget

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut!
Jawab :

setState() berfungsi untuk memberi informasi kepada flutter framework bahwa terdapat state yang mengalami perubahan. setState() digunakan ketika terdapat perubahan yang ingin ditampilkan di user interface. Method build akan dijalankan (run) ulang dan menampilkan tampilan yang sesuai dengan perubahan terbaru. 

Variabel yang terdampak yaitu _counter karena yang mengalami perubahan adalah counter. Dari counter, selanjutnya akan berpengaruh ke text yang sudah dibuat yaitu antara ganjil atau genap.

### Jelaskan perbedaan antara const dengan final!
Jawab :

Const adalah modifier yang membuat sebuah value menjadi tetap dan tidak dapat diubah lagi. Ketika compile time, nilai sebuah value yang memiliki modifier const harus diketahui. Sedangkan Final adalah modifier yang membuat sebuah variabel menjadi tetap dan tidak dapat diubah lagi. Ketika compile time, nilai sebuah variabel yang memiliki modifier final tidak harus diketahui.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas!
Jawab :

- Create new program flutter dengan cara menjalankan `flutter create counter_7`
- Membuat variabel _counter pada `class _MyHomePageState extends State<MyHomePage>` yang nantinya digunakan sebagai counter angka.

- Menambahkan fungsi `_incrementCounter()` dan `_decrementCounter`. Di dalam masing-masing fungsi terdapat setState() yang berfungsi untuk menambah/mengurangi counter. _counter hanya akan dikurangi jika kondisi _counter > 0.

- Selanjutnya membuat isi field FloatingAcitonButton sesuai dengan kebutuhan tugas ini, yaitu berisi 2 buah button. Button decrement berada di kiri bawah dan button increment berada di kanan bawah. Kedua button tersebut di bind dengan properti onPressed agar dapat tersambung.

- Terakhir, mengganti tulisan diatas button counter dengan menambahkan text untuk menampilkan tulisan `GANJIL` berwarna merah dan `GENAP` berwarna biru. Kedua text tersebut dimasukkan ke dalam conditional, sehingga text ditampilkan sesuai dengan kondisi _counter.

