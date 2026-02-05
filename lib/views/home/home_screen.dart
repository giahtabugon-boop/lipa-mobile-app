import 'package:flutter/material.dart';
import "package:lipa_mobile_app/views/widgets/top_banner.dart";
import 'package:lipa_mobile_app/views/widgets/quick_actions.dart';
import 'package:lipa_mobile_app/views/widgets/discover_section.dart';
import 'package:lipa_mobile_app/views/widgets/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBanner(),
              SizedBox(height: 16),
              QuickActions(),
              SizedBox(height: 24),
              DiscoverSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
