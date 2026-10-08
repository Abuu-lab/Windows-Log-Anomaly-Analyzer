# Rancangan awal

Dokumen ini menggambarkan target pengembangan. Komponen di bawah belum diimplementasikan oleh starter.

## Alur data

Input log → parse field bernama → normalized event objects → detection rules → findings → terminal/GUI/export.

Pisahkan data dari tampilan. Engine nantinya mengembalikan objects; `Format-Table` dipakai di akhir untuk tampilan terminal. GUI dan export mengonsumsi data object, bukan hasil formatting terminal.

## Process event yang direncanakan

`UtcTime`, `ProcessGuid`, `ProcessId`, `Image`, `CommandLine`, `User`, `IntegrityLevel`, `ParentProcessGuid`, `ParentProcessId`, `ParentImage`, source/host, dan record identifier jika tersedia.

Parse menggunakan nama field, bukan urutan posisi yang diasumsikan tetap. Korelasi memakai host + ProcessGuid jika tersedia; PID bisa digunakan ulang. Field yang hilang dinyatakan tidak tersedia, bukan dianggap aktivitas aman.

## Finding yang direncanakan

| Field | Tujuan |
|---|---|
| RuleId / RuleVersion | Aturan yang menghasilkan finding |
| Title | Nama temuan |
| Priority | Prioritas pemeriksaan yang dijelaskan |
| Evidence | Field sumber dan pengenal event |
| Reason | Mengapa aturan cocok atau baseline terlampaui |
| RecommendedActions | Urutan langkah pemeriksaan |
| EscalationCriteria | Bukti tambahan yang memerlukan eskalasi |
| Limitations | Kondisi normal dan data yang belum tersedia |

Contoh rule pertama yang akan diuji: executable pada folder Temp. Ini merupakan indikator untuk diperiksa; installer atau updater sah juga bisa menggunakannya. Saran awal: periksa command line, parent process, kebutuhan instalasi, dan bila file masih tersedia signature/hash. File pada endpoint saat ini belum tentu identik dengan file ketika event direkam. Tidak ada auto-delete, auto-kill, atau auto-isolation dalam scope awal.

## GUI yang direncanakan

- Overview: event yang dianalisis dan findings yang perlu diperiksa.
- Input: sumber/file yang didukung dan tombol Analyze.
- Event Explorer: tabel, pencarian, dan filter.
- Finding Details: evidence, reason, recommended actions, limitations.
- Export: simpan hasil dan laporan.

Tema gelap dapat dipilih; gunakan kontras yang terbaca, label status selain warna, indikator loading, dan pesan error yang membantu. Status demo/data sintetis harus terlihat jelas. GUI adalah lapisan pada analyzer yang sama; bukan proyek aplikasi kedua.

Baseline login membutuhkan sumber log login tambahan, definisi pola normal, dan informasi waktu yang memadai. Sysmon process creation sendiri tidak cukup untuk mengimplementasikan semua contoh login.
