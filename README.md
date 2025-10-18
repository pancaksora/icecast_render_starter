# Icecast on Render — Starter

Deploy Icecast server gratis di Render.com.

## Langkah
1. Buat repo GitHub baru → upload semua file ini.
2. Render dashboard → New Web Service → pilih repo → deploy.
3. Setelah aktif: `https://<appname>.onrender.com`
   - Stream: `https://<appname>.onrender.com/live`
   - Status: `https://<appname>.onrender.com/status.xsl`

## Env vars
Set di Render → Settings → Environment:
- ICECAST_SOURCE_PASSWORD, ICECAST_ADMIN_PASSWORD, ICECAST_RELAY_PASSWORD
- ICECAST_ADMIN_EMAIL, ICECAST_HOSTNAME
(Jangan ubah `PORT`, Render akan set otomatis)

## Kirim audio (BUTT)
- Host: `<appname>.onrender.com`
- Port: 80 (atau 443 jika mendukung TLS)
- Icecast v2
- Mount: `/live`
- Password: **ICECAST_SOURCE_PASSWORD**
- Format: MP3 64–128 kbps
