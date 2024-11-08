import 'package:flutter/material.dart';
import 'package:streamline/src/constants/app_sizes.dart';
import 'package:streamline/src/utils/utils.dart';

AppBar cAppBar(BuildContext context, List<Widget>? actions) {
  return AppBar(
    toolbarHeight: 80,
    centerTitle: false,
    title: Row(
      children: [
        Image.asset(AppImages.profile, height: 66, width: 66),
        gapW6,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Ray',
              style: context.ts18()?.copyWith(fontFamily: 'Poppins').semiBold,
            ),
            Text('Studio Owner', style: context.ts18()?.copyWith().regular),
          ],
        )
      ],
    ),
    actions: actions,
  );
}
