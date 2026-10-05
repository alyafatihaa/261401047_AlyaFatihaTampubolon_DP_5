program soal4;
uses crt;
var 
a, b : real;
tambah, kurang, kali, bagi1, bagi2, sisa : real;
menu : integer;
ulang: char;

begin
    clrscr;
repeat
    clrscr;
    writeln('Menu Pilihan Operasi');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. Pembagian DIV & MOD');
    write('Pilih Menu Operasi (1-5) : ');
    readln(menu);
    writeln;

    // validasi menu DULU, sebelum meminta angka
    if (menu >= 1) and (menu <= 5) then
    begin
        write('Masukkan Angka Pertama : ');
        readln(a);
        write('Masukkan Angka Kedua : ');
        readln(b);
        writeln;

    // pilihan eksekusi aritmatika berdasarkan input menu
    case menu of
    1 : begin
    tambah := a + b;
    writeln(a:0:2, ' + ', b:0:2);
    writeln('Hasil Operasi = ', tambah:0:2);
    end;

    2 : begin
    kurang := a - b;
    writeln(a:0:2, ' - ', b:0:2);
    writeln('Hasil Operasi = ', kurang:0:2);
    end;

    3 : begin
    writeln(a:0:2, ' * ', b:0:2);
    kali := a * b;
    writeln('Hasil Operasi = ', kali:0:2);
    end;

    4 : begin
    if b <> 0 then
    begin
    writeln(a:0:2, ' / ', b:0:2);
    bagi1 := a / b;
    writeln('Hasil Operasi = ', bagi1:0:2);
    end
    else // validasi agar tidak terjadi error pembagian dgn 0
    writeln('TIDAK DAPAT MELAKUKAN PEMBAGIAN DENGAN 0');
    end;

    5 : begin
    // operasi pembagian bilangan bulat dan sisa bagi
    if trunc(b) <> 0 then
    begin
    bagi2 := trunc(a) div trunc(b); // trunc untuk mengonversi variabel real ke integer
    sisa := trunc(a) mod trunc(b);
    writeln(trunc(a), ' DIV ', trunc(b));
    writeln('Hasil Operasi = ', bagi2:0:0);
    writeln('Sisa bagi = ', sisa:0:0);
    end
    else
    writeln('TIDAK DAPAT MELAKUKAN PEMBAGIAN DENGAN 0');
    end;
    end; // penutup case
    end  // penutup begin milik if menu valid
    else
    writeln('Menu tidak valid! Pilih 1-5.');

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T) : ');
    readln(ulang);

until(ulang = 't') or (ulang = 'T');
end.