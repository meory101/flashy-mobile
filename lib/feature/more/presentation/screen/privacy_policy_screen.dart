import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/widget/app_bar/main_app_bar.dart';

/// Eng.Nour Othman(meory)*

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: "Privacypolicy"),

    );
  }
}
