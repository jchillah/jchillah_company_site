// src/core/widgets/homepage/sections/portfolio/screenshot_gallery.dart
import 'dart:ui';

import 'package:flutter/material.dart';

class ScreenshotGallery extends StatefulWidget {
  final List<String> screenshotAssets;

  const ScreenshotGallery({super.key, required this.screenshotAssets});

  @override
  State<ScreenshotGallery> createState() => _ScreenshotGalleryState();
}

class _ScreenshotGalleryState extends State<ScreenshotGallery> {
  final ScrollController _scrollController = ScrollController();

  void _openFullscreen(BuildContext context, String assetPath) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withValues(alpha: 0.85),
      builder: (context) {
        return GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: const EdgeInsets.all(16),
            child: InteractiveViewer(
              maxScale: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(assetPath, fit: BoxFit.contain),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.screenshotAssets.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Horizontal scrollen oder die Scrollleiste ziehen, um alle Screenshots zu sehen.',
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: Colors.white60),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 236,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: const {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
                PointerDeviceKind.trackpad,
                PointerDeviceKind.stylus,
              },
            ),
            child: Scrollbar(
              controller: _scrollController,
              thumbVisibility: true,
              trackVisibility: true,
              interactive: true,
              scrollbarOrientation: ScrollbarOrientation.bottom,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: ListView.separated(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.screenshotAssets.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    final path = widget.screenshotAssets[index];

                    return GestureDetector(
                      onTap: () => _openFullscreen(context, path),
                      child: Container(
                        width: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.black.withValues(alpha: 0.6),
                          border: Border.all(
                            color: const Color(
                              0xFF00FF5F,
                            ).withValues(alpha: 0.2),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(path, fit: BoxFit.contain),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
