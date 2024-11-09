import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamline/src/constants/app_sizes.dart';
import 'package:streamline/src/constants/constant_design.dart';
import 'package:streamline/src/utils/utils.dart';

class CrmScreen extends StatelessWidget {
  const CrmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
        context,
        [SvgPicture.asset(AppIcons.option), gapW16],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppImages.bag, height: 300, width: 300),
            gapH6,
            Text(
              'No CRM Added',
              textAlign: TextAlign.center,
              style: context
                  .ts32(color: context.colorScheme.primary)
                  ?.copyWith(fontFamily: 'Poppins')
                  .bold,
            ),
            gapH12,
            Text(
              '''You haven’t added any project. 
Please add a new project to get started.''',
              textAlign: TextAlign.center,
              style: context.ts18()?.regular,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: context.colorScheme.surface),
      ),
    );
  }
}
