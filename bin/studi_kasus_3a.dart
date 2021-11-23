import 'dart:io';
import 'dart:math';
void main() {
  int option;

  stdout.write(""" 
============== Selamat Datang ==============
=== Program Menghitung Luas Bangun Datar ===
======== Ghauzar Andhika Akbar (3A) ========
  """);

  do{
stdout.write("""
        Opsi Tersedia>
          \t 1. Hitung Luas Segitiga        
          \t 2. Hitung Luas Lingkaran        
          \t 3. Hitung Luas Persegi         
          \t 4. Hitung Luas Persegi Panjang 
          \t 5. Keluar dari program         
Masukkan pilihan sesuai nomor: """);
option = int.parse(stdin.readLineSync()!);

  switch(option) {
    case 1: stdout.write(calculateArea(option, "segitiga") + "\n"); break;
    case 2: stdout.write(calculateArea(option, "lingkaran") + "\n"); break;
    case 3: stdout.write(calculateArea(option, "persegi") + "\n"); break;
    case 4: stdout.write(calculateArea(option, "persegi panjang") + "\n"); break;
    case 5: stdout.write(calculateArea(option)); break;
    default: stdout.write("Pilihan tidak tersedia \n");
  }
stdout.write("""
----------------------------------------------------------------
""");

  } while(option != 5);
}

String calculateArea(int option, [String form=""]){
  int width, height, side, radius;
  double area = 0;

  //SEGITIGA
  if (option == 1) {
    //input
    stdout.write("Masukkan alas: ");
    width = int.parse(stdin.readLineSync()!);
    stdout.write("Masukkan tinggi: ");
    height = int.parse(stdin.readLineSync()!);

    //process
    area = (width*height)/2;
  } 

  //LINGKARAN
  else if(option == 2){
    //input
    stdout.write("Masukkan jari-jari: ");
    radius = int.parse(stdin.readLineSync()!);

    //process
    area = pi * radius * radius;
  }

  //PERSEGI
  else if(option == 3){
    //input
    stdout.write("Masukkan sisi: ");
    side = int.parse(stdin.readLineSync()!);

    //process
    area = (side * side)/1;
  }

  //PERSEGI PANJANG
  else if (option == 4){
    //input
    stdout.write("Masukkan panjang: ");
    width = int.parse(stdin.readLineSync()!);
    stdout.write("Masukkan lebar: ");
    height = int.parse(stdin.readLineSync()!);

    //process
    area = (width * height)/1;
  }

  else if(option == 5){
    stdout.write("Terima kasih telah menggunakan program ini!");
    exit(0);
  }
  return "Hasil luas $form: $area";
}

