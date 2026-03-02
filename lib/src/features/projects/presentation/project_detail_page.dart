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

  // 🔹 NEU: optionale Links
  final String? pitchDeckUrl;
  final String? appRepoUrl;
  final String? pitchRepoUrl;
  final String? privacyPolicyUrl;

  const ProjectDetailPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.techStack,
    required this.longDescription,
    required this.features,
    required this.screenshotAssets,
    this.pitchDeckUrl,
    this.appRepoUrl,
    this.pitchRepoUrl,
    this.privacyPolicyUrl,
  });

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      // optional: SnackBar oder Debug-Ausgabe
      debugPrint('Konnte URL nicht öffnen: $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final hasLinks =
        pitchDeckUrl != null ||
        appRepoUrl != null ||
        pitchRepoUrl != null ||
        privacyPolicyUrl != null;

    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: false),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1100),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Section(
                      title: title,
                      subtitle: subtitle,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
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
                              const SizedBox(width: 16),
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
                            ),
                          ),
                          const SizedBox(height: 16),
                          if (features.isNotEmpty) ...[
                            Text(
                              'Schwerpunkte & Features',
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: features
                                  .map(
                                    (f) => Padding(
                                      padding: const EdgeInsets.only(bottom: 4),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('• '),
                                          Expanded(child: Text(f)),
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

                    const SizedBox(height: 24),

                    // 🔹 NEU: Pitchdeck & Links, nur wenn vorhanden
                    if (hasLinks)
                      Section(
                        title: 'Pitchdeck & Ressourcen',
                        subtitle:
                            'Weitere Einblicke in GameRadar, Code und rechtliche Infos.',
                        child: Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: [
                            if (pitchDeckUrl != null)
                              FilledButton.icon(
                                onPressed: () => _openUrl(pitchDeckUrl!),
                                icon: const Icon(Icons.slideshow),
                                label: const Text('Pitchdeck ansehen'),
                              ),
                            if (appRepoUrl != null)
                              OutlinedButton.icon(
                                onPressed: () => _openUrl(appRepoUrl!),
                                icon: const Icon(Icons.code),
                                label: const Text('GitHub: GameRadar App'),
                              ),
                            if (pitchRepoUrl != null)
                              OutlinedButton.icon(
                                onPressed: () => _openUrl(pitchRepoUrl!),
                                icon: const Icon(Icons.picture_as_pdf),
                                label: const Text('GitHub: Pitchdeck'),
                              ),
                            if (privacyPolicyUrl != null)
                              OutlinedButton.icon(
                                onPressed: () => _openUrl(privacyPolicyUrl!),
                                icon: const Icon(Icons.privacy_tip_outlined),
                                label: const Text('Privacy Policy'),
                              ),
                          ],
                        ),
                      ),

                    const SizedBox(height: 24),

                    if (screenshotAssets.isNotEmpty)
                      Section(
                        title: 'Screenshots',
                        subtitle:
                            'Ein Einblick in das aktuelle Design und den Stand des Projekts.',
                        child: ScreenshotGallery(
                          screenshotAssets: screenshotAssets,
                        ),
                      ),
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
