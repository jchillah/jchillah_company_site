// src/core/widgets/homepage/sections/portfolio/screenshot_gallery.dart
import 'package:flutter/material.dart';

class ScreenshotGallery extends StatelessWidget {
  final List<String> screenshotAssets;

  const ScreenshotGallery({super.key, required this.screenshotAssets});

  void _openFullscreen(BuildContext context, String assetPath) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.85),
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
  Widget build(BuildContext context) {
    if (screenshotAssets.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: screenshotAssets.length,
        separatorBuilder: (_, __) => const SizedBox(width: 6),
        itemBuilder: (context, index) {
          final path = screenshotAssets[index];

          return GestureDetector(
            onTap: () => _openFullscreen(context, path),
            child: Container(
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.6),
                border: Border.all(
                  color: const Color(0xFF00FF5F).withOpacity(0.2),
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
    );
  }
}
