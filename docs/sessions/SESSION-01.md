# Sesi Proyek 1 — Program pertama

**Status per 9 Oktober 2026 (Asia/Jakarta): praktik menjalankan dan mengubah data berhasil; pemahaman variable, property, dan pipeline masih perlu latihan.** Target: menulis dan menjalankan program pertama, bukan investigasi ulang log SOC harian. Perkiraan 20–30 menit, boleh lebih lama.

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

### Hasil praktik yang dilaporkan

- Script berhasil dijalankan di terminal PowerShell VS Code pada Windows.
- Output pertama: ProcessId 1001, Image `C:\Windows\System32\notepad.exe`, ParentImage `C:\Windows\explorer.exe`, Source `Synthetic sample`.
- Setelah learner mengubah kode dan menjalankan ulang, ProcessId pada output menjadi 2002. Field lainnya tetap sama.
- Source membungkus ke beberapa baris karena lebar terminal dan opsi Wrap; bukan error.
- Kendala sebelumnya: scripts disabled, lalu script not digitally signed. Langkah troubleshooting yang diarahkan: membaca execution policies, memakai RemoteSigned pada scope Process, dan Unblock-File khusus analyzer.ps1. Output sukses dikirim setelah arahan tersebut; tidak semua command perbaikan dikirim ulang oleh learner.
- Versi PowerShell dan durasi pengerjaan belum dilaporkan.

### Jawaban learner dan koreksi

Learner menjawab **"belum tau semua jawabannya"** untuk tiga pertanyaan pemahaman.

| Pertanyaan | Jawaban learner | Jawaban ideal / penjelasan mentor |
|---|---|---|
| Fungsi $processSample | Belum tahu | Variable yang menyimpan satu object berisi data proses contoh. |
| Perbedaan ProcessId dan Image | Belum tahu | ProcessId berisi angka identitas proses contoh; Image berisi string path executable contoh. Di sini keduanya data fiktif, bukan hasil pembacaan proses nyata. |
| Fungsi tanda pipeline | Belum tahu | Meneruskan object di kiri ke command di kanan. Dalam script ini, object dikirim ke Format-Table untuk ditampilkan. |

**Evaluasi:** run dan edit-output terverifikasi melalui output yang dikirim learner. Pemahaman tiga konsep belum terverifikasi; tidak diberikan skor numerik atau klaim penguasaan. Jawaban tentang perubahan PID hanya data contoh juga belum diberikan secara eksplisit oleh learner. Penjelasan diberikan dan perlu dicek melalui latihan kecil.

**Latihan pemahaman berikutnya:** ubah Source menjadi `Latihan saya`, prediksi kolom yang berubah, simpan, jalankan ulang, dan bandingkan hasil. Belum dikerjakan.

## 📌 Catatan Penting / Milestone Hari Ini

Milestone praktik terverifikasi pada 9 Oktober 2026:

- Menjalankan analyzer.ps1 melalui terminal PowerShell di VS Code.
- Menampilkan satu object data sintetis sebagai tabel.
- Mengubah ProcessId dari 1001 menjadi 2002 dan memverifikasi perubahan output.
- Berhasil menjalankan script setelah troubleshooting pemblokiran eksekusi.

Pemahaman variable, property, dan pipeline masih perlu latihan. Pembacaan Sysmon nyata, detection, dan GUI belum diimplementasikan.

## Referensi

- [Microsoft: PSCustomObject](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_pscustomobject?view=powershell-5.1)
- [Microsoft: Format-Table](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/format-table?view=powershell-5.1)
