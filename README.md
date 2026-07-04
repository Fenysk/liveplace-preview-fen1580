# liveplace-preview-fen1580 — isolated neobrutalism preview

Ephemeral, **build-artifact-only** repo consumed by a dedicated Coolify app to
serve an isolated preview of the neobrutalism UI restore on a `liveplace.tv`
subpath — **without touching the live stack** (additive Traefik PathPrefix).

- **Source branch:** `restore/fen-1580-neobrutalism` @ `42f3c62` (CSS-only port
  of the neobrutalism layer onto the live backend `feat/fen-1564`).
- **URL:** https://liveplace.tv/preview/fen-1580-neobrutalism/fenysk
- **Topology:** static SPA built with `base=/preview/fen-1580-neobrutalism/`;
  `VITE_CONVEX_URL=https://liveplace.tv/convex`,
  `VITE_CONVEX_SITE_URL=https://liveplace.tv`. Convex + WS + auth all hit the
  **prod backend on the same origin**, so a signed-in `liveplace.tv` session
  (shared cookie) authenticates the gauge. No Twitch OAuth callback change.
- **Router:** a preview-only base-path shim (`import.meta.env.BASE_URL`) lets the
  custom History router mount under the subpath. NOT merged to prod/restore.

Rollback = delete the Coolify app; the Traefik router vanishes, live stack
untouched. Tracking: FEN-1594.
