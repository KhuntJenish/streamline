import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:streamline/src/constants/app_sizes.dart';
import 'package:streamline/src/features/options/options_controller.dart';
import 'package:streamline/src/utils/utils.dart';

import 'crm/crm_screen.dart';
import 'home/home_screen.dart';
import 'projects/projects_screen.dart';
import 'shoots/shoots_screen.dart';

class OptionsScreen extends GetWidget<OptionsController> {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // int selectedIndex = 0;

    // final List<String> widgetOptions = <String>[
    //   AppIcons.home,
    //   AppIcons.crm,
    //   AppIcons.projects,
    //   AppIcons.shoots,
    //   AppIcons.profile,
    // ];

    // void onItemTapped(int index) {
    //   selectedIndex = index;
    // }

    return Scaffold(
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.all(Sizes.p16),
        child: Container(
          constraints: BoxConstraints(maxHeight: 81, maxWidth: Get.width),
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: const Color(0xffECECEC)),
          ),
          child: GetBuilder<OptionsController>(
            builder: (controller) => Row(
              children: [
                for (int i = 0; i < controller.widgetOptions.length; i++)
                  Expanded(
                    child: SizedBox(
                      height: 81,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () => controller.onItemTapped(i),
                        child: SvgPicture.asset(
                          controller.selectedIndex == i
                              ? controller.activeWidgetOptions[i]
                              : controller.widgetOptions[i],
                        ).paddingAll(4),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      body: GetBuilder<OptionsController>(
        builder: (controller) => switch (controller.selectedIndex) {
          1 => const CrmScreen(),
          2 => const ProjectsScreen(),
          3 => const ShootsScreen(),
          4 => Center(
              child: Text(
                'Last Menu selected, But Ui Not Found!',
                style: context.ts14(color: context.colorScheme.primary)?.semiBold,
              ),
            ),
          0 || _ => const HomeScreen(),
        },
      ),
    );
  }
}
