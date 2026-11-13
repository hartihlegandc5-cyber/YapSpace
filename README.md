# Web client (iPhone Safari supported)

This is a separate Flutter Web client project for YapSpace. It contains the same application source as the Android client, but its own Web platform scaffold and web app metadata. Run `prepare.ps1` or `prepare.sh`, then `build-web.ps1 -ApiUrl https://...` or `API_URL=https://... ./build-web.sh`.

Deploy the contents of `build/web/` to a static HTTPS host. On iPhone, open the site in Safari; users may use Share → Add to Home Screen. This does not create a native iOS binary.
