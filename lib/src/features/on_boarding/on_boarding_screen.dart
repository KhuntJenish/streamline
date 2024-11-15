import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:streamline/src/constants/app_sizes.dart';
import 'package:streamline/src/routes/app_pages.dart';
import 'package:streamline/src/utils/utils.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.onboarding,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.cover,
          ),
          SafeArea(
            minimum: const EdgeInsets.all(Sizes.p16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Plan Your Shoots',
                  style: context
                      .ts24(
                        color: context.colorScheme.primary,
                      )
                      ?.copyWith(fontSize: 32, fontFamily: 'Poppins')
                      .bold,
                ),
                gapH16,
                Text(
                  'Easily find the perfect photographer or videographer to capture your special event.',
                  textAlign: TextAlign.center,
                  style: context.ts18()?.regular,
                ),
                gapH40,
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.next).paddingOnly(top: 8),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Get.offAllNamed(Routes.LOGIN),
                        child: Text(
                          'Next',
                          style: context.ts20(color: context.colorScheme.surface)?.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                gapH24,
                Text(
                  '© 2024-2025 streamline. All Rights Reserved.',
                  style: context.ts14()?.regular,
                ),
                gapH16,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
