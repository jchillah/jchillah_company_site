// src/core/widgets/homepage/sections/portfolio/portfolio_card.dart
import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  final String title;
  final String description;
  final String techStack;
  final String status;
  final VoidCallback onTap;
  final String? iconAsset; // NEU: optionales Icon

  const PortfolioCard({
    super.key,
    required this.title,
    required this.description,
    required this.techStack,
    required this.status,
    required this.onTap,
    this.iconAsset,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black.withOpacity(0.9),
          border: Border.all(color: const Color(0xFF00FF5F).withOpacity(0.25)),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF00FF5F).withOpacity(0.15),
              blurRadius: 18,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Titel + optionales Icon
            if (iconAsset != null)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      iconAsset!,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: 40,
                          height: 40,
                          color: Colors.black.withOpacity(0.6),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.broken_image,
                            size: 20,
                            color: Colors.white54,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            else
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            const SizedBox(height: 8),
            Text(
              description,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              techStack,
              style: theme.textTheme.bodySmall?.copyWith(
                color: const Color(0xFF00FF5F),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.circle, size: 8, color: Color(0xFF00FF5F)),
                const SizedBox(width: 6),
                Text(
                  status,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.white60,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              'Mehr erfahren (Eigenprojekt)',
              style: theme.textTheme.bodySmall?.copyWith(
                color: const Color(0xFF00FF5F),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
