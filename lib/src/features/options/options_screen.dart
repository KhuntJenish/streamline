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
            constraints: const BoxConstraints(maxHeight: 81),
            decoration: BoxDecoration(
              color: context.colorScheme.surface,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: const Color(0xffECECEC)),
            ),
            child: GetBuilder<OptionsController>(
              builder: (controller) => ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: controller.widgetOptions.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () => controller.onItemTapped(index),
                    child: SvgPicture.asset(
                      controller.selectedIndex == index
                          ? controller.activeWidgetOptions[index]
                          : controller.widgetOptions[index],
                    ).paddingAll(5),
                  );
                },
              ),
            ),
          ),
        ),
        body: GetBuilder<OptionsController>(
          builder: (controller) => switch (controller.selectedIndex) {
            1 => const CrmScreen(),
            2 => const ProjectsScreen(),
            3 => const ShootsScreen(),
            4 => Container(),
            0 || _ => const HomeScreen(),
          },
        ));
  }
}
