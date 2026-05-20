# Jchillah’s Design & Coding Forge

Professional Flutter web portfolio for **Jchillah’s Design & Coding Forge**, the developer brand of Michael Winkler / jchillah.

The site presents released apps, portfolio projects, technical skills, contact options, legal information and developer resources in one central place.

## Live URLs

| Platform | URL |
| --- | --- |
| GitHub Pages | https://jchillah.github.io/jchillah_company_site/ |
| Firebase Hosting | https://jchillah-company-site.web.app/ |
| Firebase Hosting fallback | https://jchillah-company-site.firebaseapp.com/ |

## Purpose

This project is the public company and portfolio website for Michael Winkler. It is designed to support:

- App portfolio presentation
- Developer branding
- Project inquiries
- Contact information
- Legal pages and imprint information
- GitHub Pages and Firebase Hosting deployment
- Showcase material for released and in-development apps

## Featured Project

### ASA Server Eye

**ASA Server Eye** is a released Android companion app for **ARK: Survival Ascended** players. It helps users inspect official server data, view server details and save relevant servers as favorites.

Repository:

```txt
https://github.com/jchillah/asa-server-eye
```

Privacy Policy:

```txt
https://jchillah.github.io/asa-server-eye-privacy-policy/
```

## Portfolio Projects

The website currently highlights:

- **ASA Server Eye** — released Flutter Android app for ARK: Survival Ascended server tracking
- **GameRadar** — Kotlin / Jetpack Compose gaming discovery app
- **CryptoTracker** — Kotlin / Jetpack Compose cryptocurrency tracking app

## Tech Stack

- Flutter
- Dart
- Material 3
- Firebase Hosting
- GitHub Pages
- GitHub Actions
- Responsive Web Layout

## Project Structure

```txt
lib/
├── src/
│   ├── app.dart
│   ├── core/
│   │   ├── theme/
│   │   └── widgets/
│   └── features/
│       ├── contact/
│       ├── home/
│       ├── legal/
│       ├── projects/
│       └── services/
assets/
└── images/
    └── branding/
web/
.github/
└── workflows/
```

## Development

Install dependencies:

```bash
flutter pub get
```

Run locally in Chrome:

```bash
flutter run -d chrome
```

Build for Firebase Hosting:

```bash
flutter build web --release
```

Build for GitHub Pages:

```bash
flutter build web --release --base-href /jchillah_company_site/
```

## Automatic Deployment

This repository uses GitHub Actions for deployment.

On every push to `main`:

1. The site is built for GitHub Pages.
2. The generated `build/web` output is deployed to the `gh-pages` branch.
3. The site is built and deployed to Firebase Hosting.

Workflow files:

```txt
.github/workflows/deploy-gh-pages.yml
.github/workflows/deploy-firebase-hosting.yml
```

Do not run `firebase init hosting:github` again unless the workflows intentionally need to be regenerated. The Firebase CLI can create duplicate workflows that do not install Flutter before running `flutter build`.

## Deployment Workflow

For normal changes:

```bash
git add .
git commit -m "Update company site"
git push origin main
```

Then check:

```txt
https://github.com/jchillah/jchillah_company_site/actions
```

## Developer

Michael Winkler  
Jchillah’s Design & Coding Forge

```txt
jchillah@gmail.com
```

GitHub:

```txt
https://github.com/jchillah
```

## License

This portfolio website is a personal brand and showcase project. Reuse of source code, images, branding assets or written content requires permission from the owner unless explicitly stated otherwise.
