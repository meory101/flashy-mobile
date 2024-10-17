import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/widget/app_bar/main_app_bar.dart';

/// Eng.Nour Othman(meory)*


class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: "aboutus"),

    );
  }
}
