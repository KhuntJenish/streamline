import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:streamline/src/routes/app_pages.dart';
import 'package:streamline/src/utils/utils.dart';

import '../../constants/app_sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Image.asset(AppImages.bottomWave),
      body: SafeArea(
        child: Column(
          children: [
            gapH40,
            Image.asset(AppImages.blueLogo),
            SafeArea(
              minimum: const EdgeInsets.all(Sizes.p16),
              child: Column(
                children: [
                  Text(
                    'Explore the app',
                    style: context
                        .ts24(
                          color: context.colorScheme.primary,
                        )
                        ?.copyWith(fontSize: 32, fontFamily: 'Poppins')
                        .bold,
                  ),
                  gapH16,
                  Text(
                    'Take a tour of our app and see how we can help you plan and execute your dream event.',
                    textAlign: TextAlign.center,
                    style: context.ts18()?.regular,
                  ),
                  gapH32,
                  gapH12,
                  ElevatedButton(
                    onPressed: () => Get.offAllNamed(Routes.HOME),
                    child: Text(
                      'Sign In',
                      style: context.ts20(color: context.colorScheme.surface)?.bold,
                    ),
                  ),
                  gapH8,
                  OutlinedButton(
                    onPressed: () => Get.offAllNamed(Routes.HOME),
                    child: Text(
                      'Create Account',
                      style: context.ts20()?.bold,
                    ),
                  ),
                  gapH32,
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      Text(
                        'or continue with',
                        style: context.ts16(color: context.colorScheme.primary)?.regular,
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),
                  gapH32,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.google),
                      gapW6,
                      SvgPicture.asset(AppIcons.facebook),
                      gapW6,
                      SvgPicture.asset(AppIcons.apple),
                    ],
                  ),
                  gapH16,
                  Text(
                    'If you continue means you accept streamline',
                    style: context.ts14()?.regular,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Terms of Service ',
                        style: context.ts14(color: context.colorScheme.primary)?.bold,
                      ),
                      Text(
                        'and',
                        style: context.ts14()?.regular,
                      ),
                      Text(
                        ' Privacy Policy.',
                        style: context.ts14(color: context.colorScheme.primary)?.bold,
                      ),
                    ],
                  ),
                  gapH16,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
