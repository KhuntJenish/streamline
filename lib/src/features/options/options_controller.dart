import 'package:get/get.dart';
import 'package:streamline/src/utils/utils.dart';

class OptionsController extends GetxController {
  int selectedIndex = 0;

  final List<String> widgetOptions = <String>[
    AppIcons.home,
    AppIcons.crm,
    AppIcons.projects,
    AppIcons.shoots,
    AppIcons.profile,
  ];
  final List<String> activeWidgetOptions = <String>[
    AppIcons.homeActive,
    AppIcons.crmActive,
    AppIcons.projectsActive,
    AppIcons.shootsActive,
    AppIcons.profile,
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
