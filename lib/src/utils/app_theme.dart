import 'package:flutter/material.dart';

import '../constants/constants.dart';

abstract class AppTheme {
  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: "SFProText",
      cardColor: Colors.white,
      hintColor: const Color(0xff8CA9C2),
      primaryColor: const Color(0xff4E55F5),
      indicatorColor: const Color(0xff2490EF),
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xff2490EF),
        primary: const Color(0xff4E55F5),
        onPrimary: Colors.white,
        surface: Colors.white,
        onSurface: const Color(0xff04002E),
        background: const Color(0xffFDFDFD),
        onBackground: const Color(0xff8CA9C2),
        error: const Color(0xffF62E46),
        onError: Colors.white,
        outline: const Color(0xff8CA9C2),
        shadow: const Color(0x0f00498a),
        secondary: const Color(0xff87888E),
      ),
      extensions: const <ThemeExtension<AppColors>>[
        AppColors(
          green: Color(0xff52B85C),
          warning: Color(0xffFFBE1D),
          gradientColor1: Color(0xff00C0FF),
          gradientColor2: Color(0xff4E55F5),
        ),
      ],
      dividerTheme: const DividerThemeData(thickness: 1, color: Color(0xffE6E9F4)),
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: const Color(0xff222322),
            displayColor: const Color(0xff222322),
          ),
      bottomSheetTheme: const BottomSheetThemeData(
        showDragHandle: true,
        surfaceTintColor: Colors.white,
        dragHandleColor: Color(0xffE2E6F2),
        dragHandleSize: Size(double.infinity, 5),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        alignLabelWithHint: true,
        fillColor: Colors.white,
        prefixIconColor: const Color(0xff1a191e),
        suffixIconColor: const Color(0xff1A191E),
        contentPadding: const EdgeInsets.all(Sizes.p16),
        hintStyle: const TextStyle(
          fontSize: 19,
          color: Color(0xff87888E),
          fontFamily: 'SFProText',
          fontWeight: FontWeight.w600,
        ).regular,
        labelStyle: const TextStyle(fontSize: 16, color: Color(0xffD2D2D2)).regular,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.p32),
          borderSide: const BorderSide(color: Color(0xffE6E9F4)),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.p32),
          borderSide: const BorderSide(color: Color(0xffE6E9F4)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.p32),
          borderSide: const BorderSide(color: Color(0xffE6E9F4)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.p32),
          borderSide: const BorderSide(color: Color(0xffC32033)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.p32),
          borderSide: const BorderSide(color: Color(0x80C32033)),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(cursorColor: Color(0xff222322)),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 66),
          side: const BorderSide(color: Color(0xff222322)),
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
          textStyle: const TextStyle(fontSize: 16, color: Color(0xff222322)),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          shadowColor: Colors.white,
          backgroundColor: const Color(0xff4E55F5),
          minimumSize: const Size(double.infinity, 66),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          visualDensity: VisualDensity.compact,
          padding: const EdgeInsets.all(Sizes.p8),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        height: 65,
        indicatorColor: Colors.white24,
        backgroundColor: const Color(0xff4E55F5),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return const IconThemeData(color: Colors.white);
          }
          return const IconThemeData(color: Colors.white);
        }),
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return const TextStyle(color: Colors.white).semiBold;
            }
            return const TextStyle(color: Colors.white).semiBold;
          },
        ),
      ),
      appBarTheme: AppBarTheme(
        toolbarHeight: 56,
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xffffffff),
        iconTheme: const IconThemeData(color: Color(0xff4E55F5)),
        actionsIconTheme: const IconThemeData(color: Color(0xff8BA2C5)),
        titleTextStyle: const TextStyle(fontSize: 18, color: Color(0xff04002E)).semiBold,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(double.infinity, 56),
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.p16)),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xff4E55F5),
        shape: CircleBorder(side: BorderSide()),
      ),
      listTileTheme: const ListTileThemeData(
        dense: true,
      ),
      popupMenuTheme: PopupMenuThemeData(
        elevation: 5,
        surfaceTintColor: Colors.white,
        position: PopupMenuPosition.under,
        shadowColor: const Color(0x33455CD9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.p16),
        ),
      ),
    );
  }
}

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.green,
    required this.warning,
    required this.gradientColor1,
    required this.gradientColor2,
  });

  final Color? green;
  final Color? warning;

  final Color? gradientColor1;
  final Color? gradientColor2;

  @override
  AppColors copyWith({
    Color? green,
    Color? warning,
    Color? onSurface2,
    Color? gradientColor1,
    Color? gradientColor2,
  }) {
    return AppColors(
      green: green ?? this.green,
      warning: warning ?? warning,
      gradientColor1: gradientColor1 ?? this.gradientColor1,
      gradientColor2: gradientColor2 ?? this.gradientColor2,
    );
  }

  @override
  AppColors lerp(AppColors? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      green: Color.lerp(green, other.green, t),
      warning: Color.lerp(warning, other.warning, t),
      gradientColor1: Color.lerp(gradientColor1, other.gradientColor1, t),
      gradientColor2: Color.lerp(gradientColor2, other.gradientColor2, t),
    );
  }

  @override
  String toString() {
    return 'AppColors(green: $green, warning: $warning, gradientColor1: $gradientColor1, gradientColor2: $gradientColor2)';
  }
}

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextStyle? get textFields => ts16()?.medium;

  TextStyle? ts12({Color? color}) =>
      theme.textTheme.bodySmall?.medium.copyWith(fontSize: 12, color: color, letterSpacing: -0.24);
  TextStyle? ts14({Color? color}) =>
      theme.textTheme.bodyMedium?.medium.copyWith(fontSize: 14, color: color, letterSpacing: -0.24);
  TextStyle? ts16({Color? color}) =>
      theme.textTheme.bodyLarge?.medium.copyWith(fontSize: 16, color: color, letterSpacing: -0.24);
  TextStyle? ts18({Color? color}) => theme.textTheme.titleMedium?.medium
      .copyWith(fontSize: 18, color: color, letterSpacing: -0.24);
  TextStyle? ts20({Color? color}) => theme.textTheme.titleMedium?.medium
      .copyWith(fontSize: 20, color: color, letterSpacing: -0.24);
  TextStyle? ts24({Color? color}) =>
      theme.textTheme.titleLarge?.medium.copyWith(fontSize: 24, color: color);

  Color? get green => theme.extension<AppColors>()?.green;
  Color? get warning => theme.extension<AppColors>()?.warning;
  Color? get gradientColor1 => theme.extension<AppColors>()?.gradientColor1;
  Color? get gradientColor2 => theme.extension<AppColors>()?.gradientColor2;

  ScaffoldMessengerState? errorSnackBar([String? text]) =>
      text == null || text.isEmpty ? null : ScaffoldMessenger.of(this)
        ?..clearSnackBars()
        ..showSnackBar(
          SnackBar(
            showCloseIcon: true,
            backgroundColor: colorScheme.error,
            behavior: SnackBarBehavior.floating,
            content: Text(
              text!,
              style: ts14(color: colorScheme.surface)?.semiBold,
            ),
          ),
        );

  ScaffoldMessengerState successSnackBar([
    String? text,
  ]) =>
      ScaffoldMessenger.of(this)
        ..clearSnackBars()
        ..showSnackBar(
          SnackBar(
            showCloseIcon: true,
            backgroundColor: green,
            behavior: SnackBarBehavior.floating,
            content: Text(
              text ?? "Success",
              style: ts14(color: colorScheme.surface)?.semiBold,
            ),
          ),
        );

  ScaffoldMessengerState infoSnackBar([
    String? text,
  ]) =>
      ScaffoldMessenger.of(this)
        ..clearSnackBars()
        ..showSnackBar(
          SnackBar(
            showCloseIcon: true,
            backgroundColor: warning,
            behavior: SnackBarBehavior.floating,
            content: Text(
              text ?? "Info",
              style: ts14(color: colorScheme.surface)?.semiBold,
            ),
          ),
        );
}

extension TextStyleX on TextStyle {
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
}
