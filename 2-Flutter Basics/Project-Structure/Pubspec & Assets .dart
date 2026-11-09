
// Pubspec & Assets :-

// In Flutter, We Use `pubspec.yaml` To Manage
// Our Project's Configuration, Packages & Assets.
//
// It Is One Of The Important Files
// That We Work With In Almost Every Flutter Project.

// UNDERSTANDING `pubspec.yaml` :-

// `pubspec.yaml` Is Located In The Root Of Our Project.
//
// It Contains Information About Our App,
// Dependencies, Assets, Fonts & Other Configurations.
//
// We Use YAML Format To Write Its Configuration.

// PROJECT INFORMATION :-

// Inside `pubspec.yaml`, We Can Define
// The Name, Description & Version Of Our App.
//
// For Example:
//
// name: my_flutter_app
// description: A Flutter Application
// version: 1.0.0

// Here `name` Is The Project Name.
// `description` Describes Our Project.
// `version` Defines The Current App Version.

// ADDING PACKAGES & DEPENDENCIES :-

// Sometimes We Need Additional Packages
// To Add More Features To Our App.
//
// We Add Those Packages Under `dependencies`.


// dependencies:
//   flutter:
//     sdk: flutter
//   cupertino_icons: ^1.0.8

// `flutter` Is The Flutter SDK Dependency.
// `cupertino_icons` Is A Package
// That Provides Cupertino Style Icons.
//
// After Adding A Package,
// We Run `flutter pub get`
// To Download & Update Our Dependencies.

// UNDERSTANDING ASSETS :-

// Assets Are Files That We Use Inside Our App.
//
// For Example:
// Images, Fonts, Icons & Other Files.
//
// We Usually Create An `assets` Folder
// In The Root Of Our Project
// To Keep These Files Organized.

// PROJECT STRUCTURE WITH ASSETS :-

// my_flutter_app/
//   assets/
//     images/
//       logo.png
//       profile.png
//   lib/
//     main.dart
//   pubspec.yaml

// Here `assets/images/` Contains Our Images.
// We Can Use These Images Inside Our Flutter UI.

// CONFIGURING ASSETS :-

// Before Using An Image In Flutter,
// We Need To Register It Inside `pubspec.yaml`.
//
// Under The `flutter` Section,
// We Add The Asset Path.

// flutter:
//   assets:
//     - assets/images/

// Here We Register The Images Folder.
// Flutter Can Now Access Images
// From This Folder Inside Our App.

// USING ASSETS IN FLUTTER :-

// After Registering An Asset,
// We Can Use It With The `Image.asset()` Widget.


// Image.asset('assets/images/logo.png');

// Here `Image.asset()` Loads An Image
// From Our Project's Assets Folder.

// ADDING CUSTOM FONTS :-

// We Can Also Add Our Own Fonts
// To Customize The Text Style Of Our App.
//
// First, We Put The Font File Inside Our Project.

// assets/
//   fonts/
//     Poppins-Regular.ttf

// Then We Register It Inside `pubspec.yaml`.

// flutter:
//   fonts:
//     - family: Poppins
//       fonts:
//         - asset: assets/fonts/Poppins-Regular.ttf

// Here `Poppins` Is The Font Family Name.
// We Can Use This Font Family
// Inside Our Text Styles.

// USING CUSTOM FONTS :-

// We Can Apply Our Registered Font
// Using `TextStyle`.

// Text(
//   'Hello Flutter!',
//   style: TextStyle(
//     fontFamily: 'Poppins',
//   ),
// );

// Here `fontFamily` Uses The Font
// That We Registered In `pubspec.yaml`.

// A SIMPLE RULE :-

// Use `pubspec.yaml` To Configure Your Flutter Project.
// Add Packages Under `dependencies`.
// Register Images & Other Files Under `assets`.
// Register Custom Fonts Under `fonts`.
// Run `flutter pub get` After Adding Packages.
// Always Keep Your Asset Paths Correct.
