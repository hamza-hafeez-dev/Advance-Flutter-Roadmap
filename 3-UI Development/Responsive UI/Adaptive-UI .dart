// Adaptive UI :-


// Adaptive UI Helps Us Build Interfaces
// According To Different Platforms.
//
// It Adjusts UI According To Platform Design
// And Device Behavior.
//
//
// RESPONSIVE VS ADAPTIVE UI :-
//
// Responsive UI -> Adjusts Layout According To Screen Size.
// Adaptive UI   -> Adjusts UI According To Platform.
//
//
// WHY WE USE ADAPTIVE UI :-
//
// 1. To Support Android And iOS.
// 2. To Follow Platform Design Guidelines.
// 3. To Use Platform-Specific Widgets.


// 1. DETECTING PLATFORM :-
//
// defaultTargetPlatform Helps Us Check
// Which Platform Our App Is Running On.


import 'package:flutter/foundation.dart';


if (defaultTargetPlatform == TargetPlatform.android) {

  print('Android');

} else if (defaultTargetPlatform == TargetPlatform.iOS) {

  print('iOS');

}


// 2. MATERIAL WIDGETS :-
//
// Material Widgets Are Commonly Used
// For Android-Style Interfaces.


ElevatedButton(
  onPressed: () {},
  child: Text('Login'),
);


// 3. CUPERTINO WIDGETS :-
//
// Cupertino Widgets Follow Apple's
// iOS Design Style.


CupertinoButton(
  onPressed: () {},
  child: Text('Login'),
);


// 4. PLATFORM-SPECIFIC BUTTON :-
//
// We Can Show Different Buttons
// According To The Platform.


Widget adaptiveButton() {

  if (defaultTargetPlatform == TargetPlatform.iOS) {

    return CupertinoButton(
      onPressed: () {},
      child: Text('Continue'),
    );

  } else {

    return ElevatedButton(
      onPressed: () {},
      child: Text('Continue'),
    );

  }

}


// 5. ADAPTIVE SWITCH :-
//
// Flutter Provides Adaptive Widgets
// That Adjust Their Appearance Automatically.


SwitchListTile.adaptive(
  value: true,
  onChanged: (value) {},
  title: Text('Notifications'),
);


// IMPORTANT DIFFERENCE :-
//
// Responsive UI  -> Changes Layout According To Screen Size.
// Adaptive UI    -> Changes UI According To Platform.
//
//
// IMPORTANT RULE :-
//
// Use Responsive UI For Different Screen Sizes.
// Use Adaptive UI For Platform-Specific Interfaces.
//
// Both Help Us Build Better Flutter Applications.
