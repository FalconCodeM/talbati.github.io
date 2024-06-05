import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talbati/app/data/widgets/reusable_text_lato.dart';

class ReusableAuthAppBar extends StatelessWidget {
  final String title;
  final String supTitle;

  const ReusableAuthAppBar({
    super.key,
    required this.title,
    required this.supTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ReusableTextLato(text: title),
          ReusableTextLato(
            text: supTitle,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ],
      ),
    );
  }
}
