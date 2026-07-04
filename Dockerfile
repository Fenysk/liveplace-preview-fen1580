# FEN-1594 — isolated neobrutalism preview (restore/fen-1580-neobrutalism @42f3c62).
# Pure static serve: the SPA (built with base=/preview/fen-1580-neobrutalism/ and
# VITE_CONVEX_URL/VITE_CONVEX_SITE_URL pointing at the PROD backend on the same
# origin) is baked here; Caddy serves it on the liveplace.tv subpath. No backend
# in this image — auth/gauge use the shared liveplace.tv session against prod.
FROM caddy:2-alpine
COPY Caddyfile /etc/caddy/Caddyfile
COPY srv /srv
EXPOSE 80
