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
  final String? projectPageUrl;
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
    this.projectPageUrl,
    this.pitchDeckUrl,
    this.appRepoUrl,
    this.pitchRepoUrl,
    this.privacyPolicyUrl,
  });

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Konnte URL nicht öffnen: $url');
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
        privacyPolicyUrl != null;

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
                    if (hasLinks) ...[
                      const SizedBox(height: 24),
                      Section(
                        title: 'Projektlinks',
                        subtitle:
                            'Weiterführende Informationen, Quellcode und rechtliche Hinweise.',
                        child: Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: [
                            if (projectPageUrl != null)
                              FilledButton.icon(
                                onPressed: () => _openUrl(projectPageUrl!),
                                icon: const Icon(Icons.language),
                                label: const Text('Projektwebsite öffnen'),
                              ),
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
                        title: 'Screenshots',
                        subtitle:
                            'Ausgewählte Ansichten aus der aktuellen Projektversion.',
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
