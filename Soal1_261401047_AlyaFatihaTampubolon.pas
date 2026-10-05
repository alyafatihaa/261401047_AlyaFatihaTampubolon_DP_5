program soal1;
uses crt;
var
    n, i : integer;
    harga, total, besarDiskon, totalBayar : real;
    diskonPersen : integer;

begin
    clrscr;
    write('Masukkan Jumlah Barang yang ingin Dibeli : ');
    readln(n);
    writeln;

    // jumlah barang harus lebih dari 0
    if n <= 0 then
        writeln('Jumlah barang harus lebih dari 0!')
    else
    begin
        total := 0;
        // Perulangan 'for-to-do' utk menginput harga barang ke-1 hingga ke-N
        for i := 1 to n do 
        begin
            write('Masukkan harga barang ke-', i, ': Rp ');
            readln(harga);
            total := total + harga;
        end;

        //persentase diskon dengan logika if-then-else
        if (total < 100000) then
            diskonPersen := 0
        else if (total < 500000) then
            diskonPersen := 10
        else
            diskonPersen := 20;

        // besar diskon dan total bayar akhir
        besarDiskon := total * (diskonPersen / 100);
        totalBayar := total - besarDiskon;

        writeln;
        writeln('RINCIAN BELANJA');
        writeln('Total sebelum diskon : Rp ', total:0:0);
        writeln('Besar Diskon : ', diskonPersen, '% : Rp ', besarDiskon:0:0);
        writeln('Total Bayar Akhir : Rp ', totalBayar:0:0);
    end;
    readln;
end.