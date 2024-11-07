import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:streamline/src/routes/app_pages.dart';
import 'package:streamline/src/utils/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shoppe',
      theme: AppTheme.lightThemeData(context),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: Routes.SPLASH,
      initialBinding: BindingsX.initialBindings(),
      builder: (BuildContext context, Widget? child) => ResponsiveBreakpoints.builder(
        child: child!,
        debugLog: !kReleaseMode,
        breakpoints: <Breakpoint>[
          const Breakpoint(start: 0, end: 600, name: 'COMPACT'),
          const Breakpoint(start: 601, end: 840, name: 'MEDIUM'),
          const Breakpoint(start: 841, end: double.infinity, name: 'EXPANDED'),
        ],
      ),
    );
  }
}
