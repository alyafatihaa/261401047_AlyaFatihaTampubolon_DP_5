program soal10;
uses crt;
var
    nomorHari: integer;

begin
    clrscr;
    write('Masukkan Nomor Hari (1-7): ');
    readln(nomorHari);

    // memetakan angka 1-7 menjadi nama hari
    case nomorHari of
        1: writeln('Hari Senin');
        2: writeln('Hari Selasa');
        3: writeln('Hari Rabu');
        4: writeln('Hari Kamis');
        5: writeln('Hari Jumat');
        6: writeln('Hari Sabtu');
        7: writeln('Hari Minggu');
    else
        writeln('Nomor hari tidak valid! (Pilih angka 1 - 7)');
    end;
    readln;
end.