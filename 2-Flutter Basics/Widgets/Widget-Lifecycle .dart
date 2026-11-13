import 'package:flutter/material.dart';

// Widgets Lifecycle :-

// Every StatefulWidget Has A Lifecycle.
//
// Lifecycle Means The Different Stages
// A Widget Goes Through During Its Lifetime.
//
// Understanding Lifecycle Helps Us Know :-
//
// When A Widget Is Created.
// When Its Data Changes.
// When Its UI Rebuilds.
// When A Widget Is Removed.
//
// IMPORTANT LIFECYCLE METHODS :-
//
// 1. createState()
// 2. initState()
// 3. didChangeDependencies()
// 4. build()
// 5. didUpdateWidget()
// 6. setState()
// 7. deactivate()
// 8. dispose()


// 1. createState() :-
//
// This Method Creates The State Object
// For Our StatefulWidget.
//
// Flutter Calls It When The Widget Is Created.

class LifecycleDemo extends StatefulWidget {

  const LifecycleDemo({super.key});

  @override
  State<LifecycleDemo> createState() {

    return _LifecycleDemoState();
  }
}


// 2. initState() :-
//
// initState() Is Called Only Once
// When The State Object Is First Created.
//
// We Use It For Initial Setup Such As :-
//
// Starting A Timer.
// Creating Controllers.
// Loading Initial Data.
// Adding Listeners.
//
// Always Call super.initState() First.

class _LifecycleDemoState extends State<LifecycleDemo> {

  int counter = 0;

  @override
  void initState() {
    super.initState();

    // Called Only Once.

    debugPrint('initState Called');
  }


// 3. didChangeDependencies() :-
//
// Called After initState().
//
// It Is Also Called When Dependencies
// Of This Widget Change.
//
// For Example :-
// Theme Changes.
// MediaQuery Changes.
//
// We Can Access Inherited Widgets Here.

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    debugPrint('didChangeDependencies Called');
  }


// 4. build() :-
//
// build() Creates The UI Of Our Widget.
//
// Flutter Calls It When :-
//
// Widget Is First Displayed.
// setState() Is Called.
// Dependencies Change.
// Parent Widget Rebuilds.

  @override
  Widget build(BuildContext context) {

    debugPrint('build Called');

    return Scaffold(

      appBar: AppBar(
        title: const Text('Widget Lifecycle'),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // Showing Current Counter Value.

            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 40,
              ),
            ),

            const SizedBox(height: 20),

            // Updating State Rebuilds The UI.

            ElevatedButton(
              onPressed: () {

                setState(() {
                  counter++;
                });

                debugPrint('setState Called');
              },

              child: const Text('Increase Counter'),
            ),

          ],
        ),
      ),
    );
  }


// 5. didUpdateWidget() :-
//
// Called When The Parent Widget Rebuilds
// And Provides A New Widget Configuration
// For The Same State Object.
//
// We Use It When We Need To React
// To Changes In Widget Properties.
//
// It Is Not Called For Every setState().

  @override
  void didUpdateWidget(covariant LifecycleDemo oldWidget) {
    super.didUpdateWidget(oldWidget);

    debugPrint('didUpdateWidget Called');
  }


// 6. deactivate() :-
//
// Called When This State Object
// Is Removed From Its Current Location.
//
// The Widget May Be Inserted Again
// Into Another Location In The Same Frame.
//
// This Is Not The Final Cleanup Method.

  @override
  void deactivate() {
    debugPrint('deactivate Called');

    super.deactivate();
  }


// 7. dispose() :-
//
// Called When The State Object
// Is Permanently Removed.
//
// We Use It To Release Resources Such As :-
//
// TextEditingController.
// AnimationController.
// StreamSubscription.
// FocusNode.
//
// Always Call super.dispose().

  @override
  void dispose() {

    debugPrint('dispose Called');

    super.dispose();
  }
}


// LIFECYCLE FLOW :-
//
// createState()
//      |
// initState()
//      |
// didChangeDependencies()
//      |
// build()
//      |
// UI Displayed
//      |
// setState() / Dependency Change
//      |
// build() Again
//      |
// Widget Removed
//      |
// deactivate()
//      |
// dispose()


// IMPORTANT RULE :-
//
// initState() -> Initial Setup
//
// didChangeDependencies() -> Dependency Changes
//
// build() -> Create UI
//
// didUpdateWidget() -> New Widget Configuration
//
// deactivate() -> Temporary Removal
//
// dispose() -> Final Cleanup
