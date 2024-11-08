import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:streamline/src/constants/app_sizes.dart';
import 'package:streamline/src/routes/app_pages.dart';
import 'package:streamline/src/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () => Get.offAllNamed(Routes.ON_BOARDING));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.splash),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      gapH80,
                      gapH60,
                      Image.asset(AppImages.logo)
                          .animate(delay: const Duration(milliseconds: 500))
                          .fadeIn()
                    ],
                  ),
                ),
                Image.asset(AppImages.streamlineTxt)
                    .animate(delay: const Duration(milliseconds: 500))
                    .fadeIn(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
