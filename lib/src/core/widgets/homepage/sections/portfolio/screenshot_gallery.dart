// src/core/widgets/homepage/sections/portfolio/screenshot_gallery.dart
import 'package:flutter/material.dart';

class ScreenshotGallery extends StatelessWidget {
  final List<String> screenshotAssets;

  const ScreenshotGallery({super.key, required this.screenshotAssets});

  @override
  Widget build(BuildContext context) {
    if (screenshotAssets.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 260,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: screenshotAssets.length,
        separatorBuilder: (_, _) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final path = screenshotAssets[index];
          return AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                path,
                fit: BoxFit.scaleDown,
                errorBuilder: (context, error, stackTrace) {
                  // Fallback, falls Asset noch nicht existiert
                  return Container(
                    color: Colors.black.withOpacity(0.6),
                    alignment: Alignment.center,
                    child: const Text(
                      'Screenshot-Platzhalter',
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
