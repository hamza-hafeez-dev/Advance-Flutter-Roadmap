import 'package:flutter/material.dart';

// BuildContext :-

// BuildContext Is Used To Understand The Location
// Of A Widget Inside The Widget Tree.
//
// Every Widget Has Its Own BuildContext.
//
// We Use BuildContext To Access Things Like :-
//
// Theme
// Navigator
// MediaQuery
// ScaffoldMessenger
//
// BuildContext Is Passed Into The build() Method.


// UNDERSTANDING BUILD CONTEXT :-
//
// When We Create A Widget, Flutter Provides
// Its BuildContext Inside The build() Method.
//
// We Can Use This Context To Access
// Other Widgets And Services Around It.

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    // context Represents The Location
    // Of This Widget Inside The Widget Tree.

    return Scaffold(

      appBar: AppBar(
        title: const Text('BuildContext'),
      ),

      body: Center(

        child: ElevatedButton(

          onPressed: () {

            // Using BuildContext To Show A SnackBar.

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Hello Flutter'),
              ),
            );

          },

          child: const Text('Show SnackBar'),
        ),
      ),
    );
  }
}


// 1. BUILD CONTEXT WITH THEME :-
//
// We Can Access The Current Theme
// Using Theme.of(context).
//
// It Helps Us Use App Theme Colors And Styles.

class ThemeExample extends StatelessWidget {

  const ThemeExample({super.key});

  @override
  Widget build(BuildContext context) {

    // Getting The Current Theme.

    final theme = Theme.of(context);

    return Text(
      'Hello Flutter',
      style: theme.textTheme.headlineMedium,
    );
  }
}


// 2. BUILD CONTEXT WITH MEDIA QUERY :-
//
// MediaQuery.of(context) Gives Us Information
// About The Available Screen Size.
//
// We Can Use It To Create Responsive UI.

class ResponsiveExample extends StatelessWidget {

  const ResponsiveExample({super.key});

  @override
  Widget build(BuildContext context) {

    // Getting Screen Width And Height.

    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeight = MediaQuery.sizeOf(context).height;

    return Container(

      // Using Screen Width To Adjust Container Size.

      width: screenWidth * 0.8,
      height: screenHeight * 0.2,

      color: Colors.blue,

      child: const Center(
        child: Text(
          'Responsive Container',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}


// 3. BUILD CONTEXT WITH NAVIGATOR :-
//
// Navigator Uses BuildContext To Find
// The Navigator Available In The Widget Tree.
//
// We Use It To Move Between Screens.

class NavigationExample extends StatelessWidget {

  const NavigationExample({super.key});

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(

      onPressed: () {

        // Opening Another Screen Using Context.

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SecondPage(),
          ),
        );

      },

      child: const Text('Open Second Page'),
    );
  }
}

class SecondPage extends StatelessWidget {

  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('Second Page'),
      ),

      body: Center(

        child: ElevatedButton(

          onPressed: () {

            // Going Back To Previous Screen.

            Navigator.pop(context);

          },

          child: const Text('Go Back'),
        ),
      ),
    );
  }
}


// 4. BUILD CONTEXT WITH SCAFFOLD MESSENGER :-
//
// ScaffoldMessenger Uses Context To Find
// The ScaffoldMessenger In The Widget Tree.
//
// We Use It To Show SnackBars.

void showMessage(BuildContext context) {

  ScaffoldMessenger.of(context).showSnackBar(

    const SnackBar(
      content: Text('Message Sent Successfully'),
    ),

  );
}


// 5. IMPORTANT BUILD CONTEXT RULES :-
//
// Every Widget Has Its Own BuildContext.
//
// Context Represents A Widget's Location
// Inside The Widget Tree.
//
// We Use Context To Access Nearby Widgets
// And Flutter Services.
//
// Context Should Not Be Used After
// Its Widget Has Been Removed.
//
// Avoid Using BuildContext Across Async Gaps
// Without Checking Whether It Is Still Valid.
//
// Example :-
//
// if (!context.mounted) return;
//
// Navigator.pop(context);


// SIMPLE RULE :-
//
// Theme.of(context)              -> Access Theme
//
// MediaQuery.sizeOf(context)     -> Access Screen Size
//
// Navigator.of(context)          -> Navigation
//
// ScaffoldMessenger.of(context)  -> SnackBar
//
// BuildContext                   -> Widget Location
