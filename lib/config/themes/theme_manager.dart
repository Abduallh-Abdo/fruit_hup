// import 'package:flutter/material.dart';

// import '../../core/utils/color_manager.dart';
// import '../../core/utils/font_manager.dart';
// import '../../core/utils/styles_manager.dart';
// import '../../core/utils/values_manager.dart';

// ThemeData getAppTheme() {
//   return ThemeData(
//     scaffoldBackgroundColor: ColorManager.background,
//     //main colors
//     primaryColor: ColorManager.primary,
//     disabledColor: ColorManager.grey,
//     splashColor: ColorManager.lightGrey,

//     // Icons
//     iconTheme:
//         const IconThemeData(color: ColorManager.darkBlue, size: AppSize.s24),

//     // app bar theme
//     appBarTheme: AppBarTheme(
//       foregroundColor: ColorManager.black,
//       elevation: 0.0,
//       titleTextStyle:
//           getSemiBoldStyle(color: ColorManager.black, fontSize: FontSize.s20),
//     ),

//     //button theme
//     buttonTheme: const ButtonThemeData(
//       shape: StadiumBorder(),
//       buttonColor: ColorManager.primary,
//       disabledColor: ColorManager.grey,
//       splashColor: ColorManager.lightGrey,
//     ),

//     // toggle button theme
//     toggleButtonsTheme: ToggleButtonsThemeData(
//       color: ColorManager.white,
//       selectedColor: ColorManager.primary,
//       borderRadius: BorderRadius.circular(AppSize.s10),
//       textStyle:
//           getMediumStyle(color: ColorManager.black, fontSize: FontSize.s16),
//     ),

//     // elevated button theme
//     elevatedButtonTheme: ElevatedButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         fixedSize: const Size(189, 49),
//         backgroundColor: ColorManager.primary,
//         textStyle:
//             getMediumStyle(color: ColorManager.white, fontSize: FontSize.s18),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(AppSize.s12),
//         ),
//       ),
//     ),

//     // floating action button theme
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//       backgroundColor: ColorManager.primary,
//     ),

//     // text theme
//     textTheme: TextTheme(
//       // Chat
//       displayLarge:
//           getMediumStyle(color: ColorManager.black, fontSize: FontSize.s17),
//       // AppBar
//       displayMedium:
//           getMediumStyle(color: ColorManager.darkGrey, fontSize: FontSize.s14),
//       // Home, Chat
//       displaySmall:
//           getLightStyle(color: ColorManager.black, fontSize: FontSize.s10),
//       // Onboarding Headline
//       headlineLarge: getSemiBoldStyle(
//           color: ColorManager.darkBlue, fontSize: FontSize.s24),
//       // Home
//       headlineMedium:
//           getMediumStyle(color: ColorManager.black, fontSize: FontSize.s20),
//       // Profile
//       headlineSmall:
//           getRegularStyle(color: ColorManager.white, fontSize: FontSize.s15),
//       // Registration
//       titleLarge:
//           getMediumStyle(color: ColorManager.darkBlue, fontSize: FontSize.s17),
//       // AppBar , Home
//       titleMedium:
//           getMediumStyle(color: ColorManager.black, fontSize: FontSize.s12),
//       // Registration
//       titleSmall:
//           getMediumStyle(color: ColorManager.darkBlue, fontSize: FontSize.s12),
//       // Onboarding Body
//       bodyLarge:
//           getMediumStyle(color: ColorManager.darkBlue, fontSize: FontSize.s16),
//       // Home, Chat
//       bodyMedium:
//           getMediumStyle(color: ColorManager.black, fontSize: FontSize.s10),
//       // Registration
//       bodySmall:
//           getLightStyle(color: ColorManager.darkBlue, fontSize: FontSize.s12),
//       // Home
//       labelLarge:
//           getRegularStyle(color: ColorManager.black, fontSize: FontSize.s10),
//       // Registration
//       labelMedium:
//           getLightStyle(color: ColorManager.darkBlue, fontSize: FontSize.s14),
//       // Onboarding skip text,
//       labelSmall:
//           getMediumStyle(color: ColorManager.darkBlue, fontSize: FontSize.s14),
//     ),

//     // input decoration theme
//     inputDecorationTheme: InputDecorationTheme(
//       contentPadding: const EdgeInsets.symmetric(
//           horizontal: AppPadding.p14, vertical: AppPadding.p12),
//       hintStyle:
//           getLightStyle(color: ColorManager.darkBlue, fontSize: FontSize.s14),
//       labelStyle:
//           getLightStyle(color: ColorManager.darkBlue, fontSize: FontSize.s14),
//       errorStyle: getRegularStyle(color: ColorManager.red),
//       enabledBorder: const OutlineInputBorder(
//         borderSide: BorderSide(
//           color: ColorManager.grey,
//           width: AppSize.s1_5,
//         ),
//         borderRadius: BorderRadius.all(
//           Radius.circular(AppSize.s10),
//         ),
//       ),
//       focusedBorder: const OutlineInputBorder(
//         borderSide: BorderSide(
//           color: ColorManager.lightBlue,
//           width: AppSize.s1_5,
//         ),
//         borderRadius: BorderRadius.all(
//           Radius.circular(AppSize.s10),
//         ),
//       ),
//       errorBorder: const OutlineInputBorder(
//         borderSide: BorderSide(
//           color: ColorManager.red,
//           width: AppSize.s1_5,
//         ),
//         borderRadius: BorderRadius.all(
//           Radius.circular(AppSize.s10),
//         ),
//       ),
//       focusedErrorBorder: const OutlineInputBorder(
//         borderSide: BorderSide(
//           color: ColorManager.lightBlue,
//           width: AppSize.s1_5,
//         ),
//         borderRadius: BorderRadius.all(
//           Radius.circular(AppSize.s10),
//         ),
//       ),
//     ),

//     // bottom navigation bar theme
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: ColorManager.white,
//       selectedItemColor: ColorManager.primary,
//       unselectedItemColor: ColorManager.darkBlue,
//       selectedLabelStyle:
//           getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s10),
//       unselectedLabelStyle:
//           getMediumStyle(color: ColorManager.darkBlue, fontSize: FontSize.s10),
//     ),

//     // text button theme
//     textButtonTheme: TextButtonThemeData(
//       style: TextButton.styleFrom(
//         backgroundColor: ColorManager.white,
//         fixedSize: const Size(double.infinity - 40, 60),
//         textStyle:
//             getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s14),
//         alignment: Alignment.center,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(AppSize.s20),
//         ),
//       ),
//     ),
//   );
// }
