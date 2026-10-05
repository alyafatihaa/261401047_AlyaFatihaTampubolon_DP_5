program soal2;
uses crt;
const
    SANDI = 'pascal123'; // kata sandi rahasia internal
var
    kataSandi : string;
    percobaan : integer;
    
begin
    clrscr;
    percobaan := 0;
    // verifikasi kata sandi dengan repeat-until
    repeat
        percobaan := percobaan + 1;
        write('Masukkan kata sandi (percobaan ', percobaan, '/3): ');
        readln(kataSandi);

        // pengecekan kata sandi
        if kataSandi = SANDI then
        begin
            writeln('Login Berhasil! Selamat Datang');
            break; // menghentikan perulangan jika berhasil
        end
        else
        begin
            if percobaan < 3 then
                writeln('Kata sandi salah! Coba lagi.')
            else
            begin
                writeln;
                writeln('Akses Ditolak! Akun Terkunci. ');
            end;
        end;
    until (percobaan >= 3);

readln;
end.