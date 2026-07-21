# Jchillah’s Design & Coding Forge

Professional Flutter web portfolio for **Jchillah’s Design & Coding Forge**, the developer brand of Michael Winkler.

The site presents released apps, portfolio projects, technical skills, contact options, legal information and developer resources in one central place.

## Live URLs

| Platform | URL |
| --- | --- |
| GitHub Pages | https://jchillah.github.io/jchillah_company_site/ |
| Firebase Hosting | https://jchillah-company-site.web.app/ |
| Firebase Hosting fallback | https://jchillah-company-site.firebaseapp.com/ |

## Portfolio projects

### ASA Server Eye

Released Flutter Android companion app for official ARK: Survival Ascended server data, search, details and favorites.

- Repository: https://github.com/jchillah/asa-server-eye
- Project page: https://jchillah.github.io/asa-server-eye/
- Pitchdeck: https://jchillah.github.io/asa-server-eye-pitchdeck/
- Privacy policy: https://jchillah.github.io/asa-server-eye-privacy-policy/

### GameRadar

Android application for game discovery, favorites, wishlist management, offline storage and personal statistics.

- Repository: https://github.com/jchillah/GameRadar
- Pitchdeck: https://jchillah.github.io/gameradar-pitchdeck/
- Privacy policy: https://jchillah.github.io/GameRadar-Privacy-Policy/

### CryptoTracker

Native iOS application for cryptocurrency market data, historical charts, authentication and synchronized favorites.

- Repository: https://github.com/jchillah/CryptoTracker
- Pitchdeck: https://jchillah.github.io/cryptotracker-pitchdeck/
- Tech stack: Swift, SwiftUI, MVVM, Firebase Auth, Firestore, SwiftData and Keychain

The CryptoTracker project detail page in the company site contains a direct **Pitchdeck ansehen** button linking to the public pitchdeck.

## Tech stack

- Flutter and Dart
- Material 3
- Responsive web layout
- Firebase Hosting
- GitHub Pages
- GitHub Actions

## Development

```bash
flutter pub get
flutter run -d chrome
```

Build for GitHub Pages:

```bash
flutter build web --release --base-href /jchillah_company_site/
```

## Automatic deployment

Every push to `main` triggers the configured GitHub Actions workflows. The Flutter web build is deployed to GitHub Pages and Firebase Hosting.

## Developer

Michael Winkler  
Jchillah’s Design & Coding Forge  
jchillah@gmail.com  
https://github.com/jchillah

## License

This portfolio website is a personal brand and showcase project. Reuse of source code, images, branding assets or written content requires permission from the owner unless explicitly stated otherwise.
