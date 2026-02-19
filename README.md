# golang-pg-client-docker

A minimal Docker image combining the official `golang:*-alpine` image with `postgresql-client` (for `pg_dump`/`pg_restore`). Published to GHCR.

## Images

```
ghcr.io/dcelasun/golang-pg-client-docker:<go-version>
```

For example:

```
ghcr.io/dcelasun/golang-pg-client-docker:1.24.2
```

## Automatic builds

A GitHub Actions workflow runs every 6 hours. It checks Docker Hub for new `golang:*-alpine` patch releases and builds a new image for any version not yet present in GHCR. No manual intervention is needed for routine Go updates.

To trigger a build manually (e.g. to force a rebuild or backfill a specific version):

1. Go to **Actions → Build Golang PostgreSQL Client**
2. Click **Run workflow**
3. Optionally enter a specific Go version (e.g. `1.24.2`); leave blank to run the normal new-version check