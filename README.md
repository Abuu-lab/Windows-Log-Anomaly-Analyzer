# Windows Log & Anomaly Analyzer

Proyek portofolio untuk belajar membuat aplikasi analisis log Windows secara bertahap, sambil mengikuti jalur Junior SOC Analyst.

**Status: learning starter (v0.0).** Saat ini `analyzer.ps1` membuat satu object berisi data proses fiktif dan menampilkannya sebagai tabel. Pembacaan log nyata, detection, recommendations, baseline, dan GUI masih berada dalam roadmap.

## Mulai di sini

1. Install VS Code dan extension **PowerShell** dari Microsoft.
2. Buka folder proyek di VS Code.
3. Buka terminal Windows PowerShell di folder proyek.
4. Jalankan:

```powershell
.\analyzer.ps1
```

Ikuti [Sesi 1](docs/sessions/SESSION-01.md) untuk menulis kode, mengubah data, dan menjelaskan hasilnya. Administrator dan Sysmon tidak diperlukan untuk starter ini. Jika muncul error execution policy, catat command dan pesan error untuk dibahas bersama mentor; tidak perlu langsung mengubah policy.

## Target aplikasi

- Membaca dan menormalkan process logs Windows/Sysmon.
- Menelusuri event menggunakan filter dan pencarian.
- Menghasilkan findings berbasis aturan dengan evidence dan alasan.
- Memberikan recommended actions yang sesuai konteks.
- Mengekspor hasil investigasi.
- Menambahkan GUI dan, pada tahap lebih lanjut, baseline-based anomaly detection.

Rule-based detection dan baseline-based anomaly detection merupakan kemampuan berbeda. Aktivitas yang cocok dengan aturan atau menyimpang dari baseline belum membuktikan serangan.

## Isi repository

| Path | Isi |
|---|---|
| `analyzer.ps1` | Program contoh pertama |
| `docs/ROADMAP.md` | Tahap pengembangan dan syarat selesai |
| `docs/DESIGN.md` | Rancangan awal alur data, findings, dan GUI |
| `docs/sessions/SESSION-01.md` | Praktik coding pertama |
| `docs/sessions/SESSION-TEMPLATE.md` | Commands, Materi, Evaluasi, Milestone |

## Cara belajar dan bukti portofolio

Contoh kecil → learner menulis → menjalankan → menjelaskan → menerima koreksi → menambah fitur. Starter dan panduan disiapkan dengan bantuan AI. Hasil praktik learner tidak dianggap selesai sebelum ada output dan penjelasan yang diperiksa.

**Validation per 9 Oktober 2026:** learner mengirim output Windows run dengan ProcessId 1001, lalu 2002 setelah edit dan run ulang. Data masih sintetis. Runtime PowerShell tidak tersedia di lingkungan persiapan; verifikasi run berdasarkan output learner. Pemahaman variable, property, dan pipeline masih perlu latihan. Lihat [hasil dan koreksi Sesi 1](docs/sessions/SESSION-01.md).

Gunakan hanya data sintetis atau contoh yang sudah ditinjau sebelum dipublikasikan. `.gitignore` membantu mengecualikan log, tetapi tidak otomatis menyamarkan data atau menghapus file yang sudah pernah dilacak Git.

## Referensi

- [VS Code](https://code.visualstudio.com/)
- [PowerShell extension — Microsoft](https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell)
- [Microsoft: PSCustomObject](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_pscustomobject?view=powershell-5.1)
- [Microsoft: Format-Table](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/format-table?view=powershell-5.1)
