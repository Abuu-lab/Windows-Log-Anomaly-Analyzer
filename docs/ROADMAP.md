# Roadmap

Satu aplikasi, dikembangkan bertahap. Nomor versi adalah target, bukan fitur yang sudah selesai. Durasi disesuaikan dengan hasil praktik; tidak ada janji aplikasi komersial pada tanggal tertentu.

| Tahap | Target | Syarat selesai |
|---|---|---|
| v0.0 — Coding foundation | Variable, object, tabel data sintetis | Learner menjalankan, mengubah, dan menjelaskan starter |
| v0.1 — Process log reader | Membaca Sysmon Event ID 1 dan parse XML menggunakan nama field | Field hasil sesuai event sumber; input kosong dan error ditangani |
| v0.2 — Investigation tools | Filter, pencarian, ekspor CSV | Filter sesuai query; file ekspor berisi data yang diharapkan |
| v0.3 — Rule-based findings | Aturan awal dengan rule ID, evidence, reason | Contoh yang cocok dan tidak cocok diuji; false positives dijelaskan |
| v0.4 — Recommended actions | Langkah pemeriksaan dan escalation criteria per rule | Saran sesuai bukti, kondisi, dan batas kemampuan rule |
| v0.5 — GUI | Pilih input, Analyze, tabel, detail finding, export | GUI memanggil analyzer yang sama; error dan status kosong terlihat jelas |
| Berikutnya — Baseline | Membandingkan aktivitas dengan pola normal | Sumber data, periode baseline, timezone, coverage, dan kasus uji ditentukan |
| Release preparation | Dokumentasi, packaging, regression checks | Instalasi dan alur utama diuji pada lingkungan Windows yang dinyatakan |

## Prioritas berikutnya

**Sesi 1:** tulis dan jalankan program dengan satu process object fiktif. Tidak mengulang latihan investigasi Sysmon harian.

**Sesi 2 (setelah Sesi 1 selesai):** beberapa object, array, dan memilih kolom. Materi berikutnya ditentukan dari hasil praktik, bukan dipaksakan sekaligus.

## Kebijakan perkembangan

- Roadmap SOC harian tetap berjalan terpisah dari sesi pembuatan tool.
- Catat fitur yang sudah dibuat, hasil pengujian, batasan, dan kontribusi learner.
- Semua sesi memakai Commands, Materi, Evaluasi, dan 📌 Milestone.
- Evaluasi memuat jawaban learner dan koreksi konkret. Kesalahan kecil diingatkan pada sesi berikutnya.
- GUI Windows dan dashboard web lokal masih pilihan; kita memilih satu setelah kebutuhan dan engine lebih jelas.
- Penilaian kelayakan komersial dilakukan setelah manfaat dan keandalan terbukti.
