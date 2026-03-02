// src/features/projects/presentation/project_detail_page.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/portfolio/screenshot_gallery.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/section.dart';

class ProjectDetailPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String status;
  final String techStack;
  final String longDescription;
  final List<String> features;
  final List<String> screenshotAssets;

  const ProjectDetailPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.techStack,
    required this.longDescription,
    required this.features,
    required this.screenshotAssets,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
