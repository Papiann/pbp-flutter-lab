# Tugas 8: Flutter Form

Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

#

### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement!
Jawab :

Perbedaannya adalah ketika melakukan perpindahan layer, `Navigator.push` berfungsi untuk menambahkan rute lain keatas tumpukan screen (stack). Sedangkan `Navigator.pushReplacement` berfungsi untuk tidak menimpa layer sebelumnya namun mengganti dengan layer itu sendiri yang ditunjuk oleh page dari `Navigator.pushReplacement`.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!
Jawab :

- Drawer befungsi sebagai panel untuk melakukan perpindahan tampilan atau navigator.
- Form berfungsi membuat sebuah container untuk dijadikan parent dari input input yang dideklarasikan.
- Column, Row, dan Padding berfungsi sebagai positioning area.
- DatePicker berfungsi untuk memilih tanggal.
- Container berfungsi untuk menampung beberapa komponen seperti contohnya `div`.
- Card berfungsi untuk membentuk sebuah component yang berisi container dan diloop untuk tiap masing data.
- TextFormField berfungsi sebagai component untuk meminta text input dari user.
- ListTile berfungsi sebagai component yang didalamnya dapat digunakan widget.
- DropDownButton berfungsi untuk membuat fields untuk memilih input.
- TextStyle berfungsi untuk melakukan styling text.

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)!
Jawab :

- onPressed()
- onSaved()
- onChanged()
- OnComplete()
- OnTap()

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter!
Jawab :

Cara kerja navigator yaitu ketika navitagor push, maka akan menimpa layer sebelumnya dan tetap tersimpan di bawah layer yang baru. Bisa juga berpindah layer yang dituju tanpa menimpa dengan method navigator.pushReplacement --> berfungsi berpindah layer.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas!
Jawab :

- Pertama-tama, saya membuat file drawer yang berisi route untuk tiap masing class seperti counter, showBudget, atau formBudget.

- Kedua, saya membuat file addBudget.dart untuk membuat form yang nantinya dimasukkan kedalam List di dataBudget.

- Kemudian, file dataBudget tersebut diset agar memiliki fungsi untuk menambahkan object pada atribut classnya yang berfungsi untuk menampung data yang diinput.

- Terakhir, saya membuat showBudget dan melakukan loop dari dataBudget.len lalu diloop kembali dan ditampilkan dengan card view menggunakan ListView.Builder