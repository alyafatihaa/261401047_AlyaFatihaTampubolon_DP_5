program soal9;
uses crt;
var
  tahun, bulan, jumlahHari: integer;
  kabisat: boolean;

begin
    clrscr;
    write('Masukkan Tahun          : '); 
    readln(tahun);
    write('Masukkan Bulan (1 - 12) : '); 
    readln(bulan);

    // mengecek apakah tahun merupakan tahun kabisat
    if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
        kabisat := true
    else
        kabisat := false;

    // penentuan jumlah hari dalam satu bulan
    case bulan of
        1, 3, 5, 7, 8, 10, 12: jumlahHari := 31;
        4, 6, 9, 11:          jumlahHari := 30;
        2: begin
            if kabisat then
                jumlahHari := 29
            else
                jumlahHari := 28;
        end;
    else
        begin
            writeln('Nomor bulan tidak valid! (Harus angka 1 - 12)');
            readln;
            exit; 
        end;
    end;

    writeln;
    if kabisat then
        writeln('Tahun ', tahun, ' adalah Tahun Kabisat.')
    else
        writeln('Tahun ', tahun, ' bukan Tahun Kabisat.');

    writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' adalah: ', jumlahHari, ' hari.');
    readln;
end.