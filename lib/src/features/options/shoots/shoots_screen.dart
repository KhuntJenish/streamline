import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamline/src/constants/app_sizes.dart';
import 'package:streamline/src/constants/constant_design.dart';
import 'package:streamline/src/utils/utils.dart';

class ShootsScreen extends StatelessWidget {
  const ShootsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
        context,
        [
          SvgPicture.asset(AppIcons.bell),
          gapW8,
          SvgPicture.asset(AppIcons.calendar),
          gapW16,
        ],
      ),
      body: Center(child: Image.asset(AppImages.noShoots)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: context.colorScheme.surface),
      ),
    );
  }
}
