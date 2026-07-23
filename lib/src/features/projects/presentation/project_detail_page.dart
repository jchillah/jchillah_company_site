// src/features/projects/presentation/project_detail_page.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/portfolio/screenshot_gallery.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String status;
  final String techStack;
  final String longDescription;
  final List<String> features;
  final List<String> screenshotAssets;
  final String? showcaseImageUrl;
  final String? projectPageUrl;
  final String? pitchDeckUrl;
  final String? appRepoUrl;
  final String? pitchRepoUrl;
  final String? privacyPolicyUrl;
  final String? notionUrl;
  final String? supportEmail;

  const ProjectDetailPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.techStack,
    required this.longDescription,
    required this.features,
    required this.screenshotAssets,
    this.showcaseImageUrl,
    this.projectPageUrl,
    this.pitchDeckUrl,
    this.appRepoUrl,
    this.pitchRepoUrl,
    this.privacyPolicyUrl,
    this.notionUrl,
    this.supportEmail,
  });

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Konnte URL nicht öffnen: $url');
    }
  }

  Future<void> _openSupportEmail() async {
    if (supportEmail == null) return;
    final uri = Uri(
      scheme: 'mailto',
      path: supportEmail,
      queryParameters: {'subject': 'Supportanfrage – $title'},
    );
    if (!await launchUrl(uri, mode: LaunchMode.platformDefault)) {
      debugPrint('Konnte Support-E-Mail nicht öffnen: $supportEmail');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasLinks =
        projectPageUrl != null ||
        pitchDeckUrl != null ||
        appRepoUrl != null ||
        pitchRepoUrl != null ||
        privacyPolicyUrl != null ||
        notionUrl != null ||
        supportEmail != null;

    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: false),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1100),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Section(
                      title: title,
                      subtitle: subtitle,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: 16,
                            runSpacing: 8,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.circle,
                                    size: 10,
                                    color: Color(0xFF00FF5F),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    status,
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                techStack,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: const Color(0xFF00FF5F),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            longDescription,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: Colors.white70,
                              height: 1.55,
                            ),
                          ),
                          if (features.isNotEmpty) ...[
                            const SizedBox(height: 20),
                            Text(
                              'Funktionen und technische Schwerpunkte',
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: features
                                  .map(
                                    (feature) => Padding(
                                      padding: const EdgeInsets.only(bottom: 6),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('• '),
                                          Expanded(child: Text(feature)),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        ],
                      ),
                    ),
                    if (showcaseImageUrl != null) ...[
                      const SizedBox(height: 24),
                      Section(
                        title: 'Projekt-Showcase',
                        subtitle:
                            'Eine kompakte Übersicht der wichtigsten Benutzeroberflächen und Funktionen. Zum Vergrößern anklicken.',
                        child: _ProjectShowcase(
                          imageUrl: showcaseImageUrl!,
                          title: title,
                          onTap: () => _openUrl(showcaseImageUrl!),
                        ),
                      ),
                    ],
                    if (hasLinks) ...[
                      const SizedBox(height: 24),
                      Section(
                        title: 'Dokumentation und Projektlinks',
                        subtitle:
                            'Produktplanung, Pitchdeck, Quellcode, Projektseiten und direkte Kontaktmöglichkeiten.',
                        child: Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: [
                            if (notionUrl != null)
                              FilledButton.icon(
                                onPressed: () => _openUrl(notionUrl!),
                                icon: const Icon(Icons.description_outlined),
                                label: const Text('Notion-Dokumentation'),
                              ),
                            if (pitchDeckUrl != null)
                              FilledButton.icon(
                                onPressed: () => _openUrl(pitchDeckUrl!),
                                icon: const Icon(Icons.slideshow),
                                label: const Text('Pitchdeck ansehen'),
                              ),
                            if (projectPageUrl != null)
                              FilledButton.icon(
                                onPressed: () => _openUrl(projectPageUrl!),
                                icon: const Icon(Icons.language),
                                label: const Text('Projektwebsite öffnen'),
                              ),
                            if (supportEmail != null)
                              FilledButton.icon(
                                onPressed: _openSupportEmail,
                                icon: const Icon(Icons.support_agent),
                                label: Text('Support: $supportEmail'),
                              ),
                            if (appRepoUrl != null)
                              OutlinedButton.icon(
                                onPressed: () => _openUrl(appRepoUrl!),
                                icon: const Icon(Icons.code),
                                label: const Text('Quellcode auf GitHub'),
                              ),
                            if (pitchRepoUrl != null)
                              OutlinedButton.icon(
                                onPressed: () => _openUrl(pitchRepoUrl!),
                                icon: const Icon(Icons.folder_outlined),
                                label: const Text('Pitchdeck-Repository'),
                              ),
                            if (privacyPolicyUrl != null)
                              OutlinedButton.icon(
                                onPressed: () => _openUrl(privacyPolicyUrl!),
                                icon: const Icon(Icons.privacy_tip_outlined),
                                label: const Text('Datenschutzerklärung'),
                              ),
                          ],
                        ),
                      ),
                    ],
                    if (screenshotAssets.isNotEmpty) ...[
                      const SizedBox(height: 24),
                      Section(
                        title: 'Einzelne Screenshots',
                        subtitle:
                            'Zusätzliche Ansichten aus der aktuellen Projektversion.',
                        child: ScreenshotGallery(
                          screenshotAssets: screenshotAssets,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ProjectShowcase extends StatelessWidget {
  const _ProjectShowcase({
    required this.imageUrl,
    required this.title,
    required this.onTap,
  });

  final String imageUrl;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: '$title Projekt-Showcase in voller Größe öffnen',
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Ink(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0xFF00FF5F).withValues(alpha: 0.28),
              ),
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF00FF5F).withValues(alpha: 0.14),
                  Colors.white.withValues(alpha: 0.035),
                ],
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x55000000),
                  blurRadius: 26,
                  offset: Offset(0, 12),
                ),
              ],
            ),
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    final expectedBytes = loadingProgress.expectedTotalBytes;
                    final progress = expectedBytes == null
                        ? null
                        : loadingProgress.cumulativeBytesLoaded / expectedBytes;
                    return Center(
                      child: CircularProgressIndicator(value: progress),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.black26,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(24),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.broken_image_outlined, size: 42),
                        SizedBox(height: 10),
                        Text('Die Showcase-Grafik konnte nicht geladen werden.'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
