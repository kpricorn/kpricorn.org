# kpricorn.org

One screen: every run, ride and hike since August 2026, from Strava, as matte pastel tubes in three dimensions, all laid on one starting point, grown in order while the view turns. Three.js from jsdelivr, two Google fonts, nothing else.

- `index.html` – the page, the activity points embedded (east, up, north in metres relative to each start)
- `404.html`, `favicon.svg`
- `deploy.sh` – copies the three files into `public/` (the `kpricorn/kpricorn.github.io` submodule) and pushes

To refresh the data, rebuild `index.html` from the activity streams (Strava API: `location` and `altitude`, resolution 60) as the build in the session did.
