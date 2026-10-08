# Sesi Proyek 1 — Program pertama

**Status: panduan siap; praktik learner belum dikonfirmasi.** Target: menulis dan menjalankan program pertama, bukan investigasi ulang log SOC harian. Perkiraan 20–30 menit, boleh lebih lama.

## Commands

Buka folder proyek di VS Code, lalu buka terminal Windows PowerShell melalui Terminal → New Terminal. Pastikan terminal berada di folder yang berisi `analyzer.ps1`.

```powershell
$PSVersionTable.PSVersion
.\analyzer.ps1
```

Ketik ulang kode berikut di `analyzer.ps1` untuk latihan, lalu simpan dengan Ctrl+S:

```powershell
#requires -Version 5.1
# Learning starter: fictional data, not a real Sysmon event.
# This script only displays data. It does not start the sample process.

$processSample = [PSCustomObject]@{
    ProcessId   = 1001
    Image       = 'C:\Windows\System32\notepad.exe'
    ParentImage = 'C:\Windows\explorer.exe'
    Source      = 'Synthetic sample'
}

$processSample | Format-Table ProcessId, Image, ParentImage, Source -AutoSize -Wrap
```

Jalankan `.\analyzer.ps1`. Hasil yang diharapkan adalah satu baris data dengan PID `1001`, Image notepad, ParentImage explorer, dan Source `Synthetic sample`. Pembungkusan kolom tergantung lebar terminal. Ini expected output, bukan bukti pengujian yang sudah dilakukan.

**Latihanmu:** ubah `ProcessId` dari `1001` menjadi `2002`, simpan, dan jalankan kembali. Pastikan tabel ikut berubah. Tidak ada proses Windows yang diubah oleh latihan ini; hanya nilai data contoh.

Jika ada error, kirim command dan pesan error persis. Jangan langsung mengubah execution policy atau menjalankan sebagai administrator.

## Materi

`$processSample` adalah **variable**, tempat menyimpan data. Tanda `=` memberi nilai ke variable. `[PSCustomObject]@{ ... }` membuat **object** dengan fields/properties: `ProcessId`, `Image`, `ParentImage`, dan `Source`. Angka `1001` adalah nilai numeric; teks dalam tanda petik adalah **string**.

Tanda `|` adalah **pipeline**: object diteruskan ke command berikutnya. `Format-Table` menampilkan properties sebagai kolom. `-AutoSize` mengatur lebar kolom dan `-Wrap` membungkus teks yang panjang. Baris `#` adalah komentar; `#requires -Version 5.1` adalah directive yang menetapkan versi minimum.

Nama path di dalam string hanya data. Menuliskan path notepad tidak menjalankan aplikasi itu. Kita belum membaca log nyata dan belum melakukan detection.

## Evaluasi

Kirim format berikut setelah praktik:

```text
1. Versi PowerShell:
2. Output sebelum perubahan:
3. Output sesudah ProcessId menjadi 2002:
4. Menurutku fungsi $processSample:
5. Bedanya ProcessId dan Image dalam contoh ini:
6. Apa yang diteruskan melalui tanda | ?
7. Apakah script ini sudah mendeteksi malware? Alasanku:
8. Error/kendala, jika ada:
9. Lama pengerjaan:
```

**Jawaban learner:** belum diterima.

**Koreksi konkret dan penilaian:** diisi mentor setelah output dan jawaban diterima. Tidak ada klaim sesi selesai sebelum bukti tersedia.

## 📌 Catatan Penting / Milestone Hari Ini

Belum dikonfirmasi. Setelah praktik diperiksa, isi hanya poin yang benar-benar berhasil dipelajari, seperti membuat file `.ps1`, memakai variable/object, dan mengubah nilai data. Jangan mencatat Sysmon reader atau anomaly detection sebagai capaian sesi ini.

## Referensi

- [Microsoft: PSCustomObject](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_pscustomobject?view=powershell-5.1)
- [Microsoft: Format-Table](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/format-table?view=powershell-5.1)
