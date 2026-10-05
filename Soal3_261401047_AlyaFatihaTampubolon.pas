program soal3;
uses crt;
var
    n, kategori, i : integer;

begin
    clrscr;
    write('Masukkan bilangan bulat : ');
    readln(n);
    writeln;
    writeln('Pilih Kategori Deret:');
    writeln('1: Ganjil');
    writeln('2: Genap');
    write('Pilih kategori deret (1/2) : ');
    readln(kategori);
    writeln;

    // validasi kategori sebelum deret ditampilkan
    if (kategori <> 1) and (kategori <> 2) then
        writeln('Kategori tidak valid! Pilih 1 atau 2.')
    else
    begin
        writeln('Hasil Deret Angka : ');
        i := 0;

        // perulangan while dari 1 hingga n
        while i < n do
        begin
            i := i + 1;

            // pengabaian angka kelipatan 5 dengan continue
            if i mod 5 = 0 then 
                continue;

            // pengabaian angka yg tdk sesuai kategori dengan continue
            if (kategori = 1) and (i mod 2 = 0) then
                continue
            else if (kategori = 2) and (i mod 2 <> 0) then
                continue;

            // menampilkan angka yang lolos penyaringan
            write(i, ' ');
        end;
        writeln;
    end;
    readln;
end.