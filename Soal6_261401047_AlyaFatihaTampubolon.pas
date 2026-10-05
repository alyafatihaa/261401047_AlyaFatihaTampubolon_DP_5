program soal6;
uses crt;
var
    tugas, uts, uas, akhir, kehadiran: real;
    indeks : char;
    lulus : boolean;

begin
    clrscr;
    write('Masukkan nilai tugas   : ');
    readln(tugas);
    write('Masukkan nilai UTS     : ');
    readln(uts);
    write('Masukkan nilai UAS     : ');
    readln(uas);
    write('Masukkan kehadiran (%) : ');
    readln(kehadiran);
    writeln;

    // hitung nilai akhir berdasarkan persentase bobot
    akhir := (tugas * 0.3) + (uts * 0.3) + (uas * 0.4);
    // syarat kelulusan
    lulus := (akhir >= 60) and (kehadiran >= 80);
    
    // penentuan indeks huruf
    if akhir >= 85 then
    indeks := 'A'
    else if (akhir >= 75) then
    indeks := 'B'
    else if (akhir >= 60) then
    indeks := 'C'
    else if (akhir >= 50) then
    indeks := 'D'
    else
    indeks := 'E';

    writeln('Nilai Akhir = ', akhir:0:2);
    writeln('Indeks = ', indeks);
    if lulus then
    writeln('Status : LULUS')
    else
    writeln('Status : TIDAK LULUS');
    readln;
end.