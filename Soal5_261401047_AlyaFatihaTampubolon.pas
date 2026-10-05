program soal5;
uses crt;
var
  m, n, i, j: integer;
  nilai, totalNilai, rataRata: real;
  jumlahLulus, jumlahTidakLulus: integer;

begin
  clrscr;
  write('Masukkan jumlah mahasiswa : '); 
  readln(m);
  write('Masukkan jumlah tugas     : '); 
  readln(n);

  // M dan N harus lebih dari 0 (mencegah pembagian dengan nol)
  if (m <= 0) or (n <= 0) then
    writeln('Jumlah mahasiswa dan jumlah tugas harus lebih dari 0!')
  else
  begin
    jumlahLulus := 0;
    jumlahTidakLulus := 0;
  
  // outer loop untuk memproses data per mahasiswa
  for i := 1 to m do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);
    totalNilai := 0;

    // inner loop untuk mengumpulkan nilai seluruh tugas mahasiswa
    for j := 1 to n do
    begin
      write('Input Nilai Tugas ', j, ': ');
      readln(nilai);
      totalNilai := totalNilai + nilai;
    end;
    
    // perhitungan rata-rata & status kelulusan
    rataRata := totalNilai / n;
    write('Rata-rata Nilai: ', rataRata:0:2, ' - Status: ');

    if rataRata >= 65 then
    begin
      writeln('LULUS');
      jumlahLulus := jumlahLulus + 1; // menambah penghitung LULUS
    end
    else
    begin
      writeln('TIDAK LULUS');
      jumlahTidakLulus := jumlahTidakLulus + 1; // menambah penghitung TIDAK LULUS
    end;
  end;
  writeln;
  writeln('Jumlah Mahasiswa LULUS       : ', jumlahLulus);
  writeln('Jumlah Mahasiswa TIDAK LULUS : ', jumlahTidakLulus);
  end;
  writeln;
  readln;
end.