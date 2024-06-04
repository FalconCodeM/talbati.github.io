import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talbati/data/values/app_strings.dart';
import 'package:talbati/data/values/assets_images.dart';
import 'package:talbati/data/values/colors.dart';
import 'package:talbati/pages/login/login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Future<void> initState() async {
    super.initState();
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElementText,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.islamicGreen.withOpacity(0.7),
        ),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppStraings.AppName,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryElementText,
                  ),
                ),
              ),
              Container(
                width: 150.w,
                height: 150.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.w),
                    boxShadow: const [
                      BoxShadow(
                        color: AppColors.primaryFourthElementText,
                        blurRadius: 5,
                        offset: Offset(1, 1),
                      ),
                    ]),
                child: const Image(
                  image: AssetImage(AppImages.APPLOGO),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
