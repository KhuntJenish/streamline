import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:streamline/src/constants/app_sizes.dart';
import 'package:streamline/src/constants/constant_design.dart';
import 'package:streamline/src/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
        context,
        [
          SvgPicture.asset(AppIcons.bell),
          gapW8,
          SvgPicture.asset(AppIcons.setting),
          gapW16,
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 66,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Universal Search',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AppIcons.search,
                      ),
                    ).paddingOnly(right: 8),
                  ),
                ),
              ),
              gapH12,
              SizedBox(
                height: 176,
                child: Image.asset(
                  AppImages.currentBalanceCard,
                ),
              ),
              gapH6,
              SizedBox(
                height: 90,
                child: Image.asset(
                  AppImages.totalPayableCard,
                ),
              ),
              gapH6,
              const Row(
                children: [
                  OverdueCard(no: '21', label: 'Overdue Invoices'),
                  gapW6,
                  OverdueCard(no: '43', label: 'Overdue Bills'),
                ],
              ),
              gapH16,
              GridView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisExtent: 90,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: context.colorScheme.primary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shoots this Month',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: context.ts12(color: context.colorScheme.surface)?.regular,
                        ),
                        Row(
                          children: [
                            Text(
                              '12',
                              style: context.ts20(color: context.colorScheme.surface)?.bold,
                            ),
                            SvgPicture.asset(
                              AppIcons.arrowRightUp,
                              color: context.colorScheme.surface,
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OverdueCard extends StatelessWidget {
  const OverdueCard({super.key, required this.no, required this.label});
  final String no;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(),
        ),
        child: Row(
          children: [
            SvgPicture.asset(AppIcons.invoice),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(no, style: context.ts18()?.bold),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SvgPicture.asset(AppIcons.arrowRightUp),
                      ),
                    ],
                  ),
                  Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.ts14(color: context.colorScheme.secondary)?.regular,
                  ),
                ],
              ).paddingSymmetric(vertical: 6, horizontal: 8),
            )
          ],
        ),
      ),
    );
  }
}
