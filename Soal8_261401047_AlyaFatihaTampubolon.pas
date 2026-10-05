program soal8;
uses crt;
var
    gol: char;
    jamKerja, jamLembur: integer;
    gajiPokok, gajiLembur, bonus, totalGaji: longint;

begin
    clrscr;
    write('Masukkan Golongan (A/B/C) : '); 

    readln(gol);
    write('Masukkan Jam Kerja/Minggu : '); 
    readln(jamKerja);

    gajiPokok := 0;
    gajiLembur := 0;
    bonus := 0;

    // penentuan gaji pokok berdasarkan golongan
    case gol of
        'A', 'a': gajiPokok := 1500000;
        'B', 'b': gajiPokok := 2000000;
        'C', 'c': gajiPokok := 2500000;
    else
        begin
            writeln('Golongan tidak valid!');
            readln;
        exit;
        end;
    end;

    // hitung gaji lembur untuk kelebihan jam di atas 40 jam
    if jamKerja > 40 then
    begin
        jamLembur := jamKerja - 40;
        gajiLembur := jamLembur * 20000;
    end;

    // bonus khusus golongan c jika total jam kerja > 50 jam
    if ((gol = 'C') or (gol ='c')) and (jamKerja > 50) then
        bonus := 100000;

    totalGaji := gajiPokok + gajiLembur + bonus;

    writeln;
    writeln('Gaji Pokok  : Rp ', gajiPokok);
    writeln('Gaji Lembur : Rp ', gajiLembur);
    writeln('Bonus       : Rp ', bonus);
    writeln('Total Gaji  : Rp ', totalGaji);
    readln;
end.