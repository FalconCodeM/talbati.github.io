import 'package:flutter/material.dart';
import 'package:talbati/app/data/values/colors.dart';

class ReusableGreenBackground extends StatelessWidget {
  final List<Widget> children;

  const ReusableGreenBackground({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.colorsGreen,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: AppColors.colorsGreen,
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
