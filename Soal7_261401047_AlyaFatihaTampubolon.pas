program soal7;
uses crt;
var
    kodeKendaraan : char;
    lama : integer;
    totalTarif : real;

begin
    clrscr;
    writeln('KODE KENDARAAN:');
    writeln('M = Mobil');
    writeln('K = Motor');
    writeln('B = Bus');
    write('Masukkan Kode Kendaraan Anda (M/K/B) : ');
    readln(kodeKendaraan);
    write('Masukkan Lama Parkir (Jam) : ');
    readln(lama);

    // validasi input jam parkir
    if lama <= 0 then
        begin
            writeln('Lama parkir tidak valid!');
            readln;
            exit;
        end;

        // perhitungan tarif parkir menggunakan case-of
        case kodeKendaraan of
            'M', 'm' : begin
                if lama > 10 then
                    totalTarif := 30000
                else
                    totalTarif := 5000 + ((lama - 1) * 3000);
            end;     

            'K', 'k': begin
                if lama > 10 then
                    totalTarif := 10000
                else
                    totalTarif := 2000 + ((lama - 1) * 1000);
            end;            

            'B', 'b': begin
                if lama > 10 then
                    totalTarif := 50000
                else
                    totalTarif := 10000 + ((lama - 1) * 5000);
            end
        else
            begin
                writeln('Kode kendaraan tidak valid!');
                readln;
                exit;
            end;
        end;
    writeln;
    writeln('Total Tarif Parkir : Rp ', totalTarif:0:0);
    readln;
end.