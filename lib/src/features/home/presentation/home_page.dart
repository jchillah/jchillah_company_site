// src/features/home/presentation/home_page.dart
import 'package:flutter/material.dart';
import 'package:jchillah_company_site/src/core/widgets/hero/hero_section.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/about_section.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/contact_section.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/footer.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/header.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/impressum_section.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/portfolio/portfolio_section.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/process/process_section.dart';
import 'package:jchillah_company_site/src/core/widgets/homepage/sections/service/service_section.dart';
import 'package:jchillah_company_site/src/features/services/presentation/services_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth > 900;

            return SingleChildScrollView(
              child: Center(
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
                        Header(isWide: isWide),
                        const SizedBox(height: 32),
                        HeroSection(
                          isWide: isWide,
                          onShowServices: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const ServicesPage(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 32),
                        const ServicesSection(),
                        const SizedBox(height: 32),
                        const PortfolioSection(),
                        const SizedBox(height: 32),
                        const ProcessSection(),
                        const SizedBox(height: 32),
                        const AboutSection(),
                        const SizedBox(height: 32),
                        const ContactSection(),
                        const SizedBox(height: 32),
                        const ImpressumSection(),
                        const SizedBox(height: 48),
                        Footer(theme: theme),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
