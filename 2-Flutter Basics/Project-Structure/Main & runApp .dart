
// main() & runApp() :-

// Every Flutter App Starts Its Execution From `main()`.
// It Is The Entry Point Of Our Application.
//
// Inside `main()`, We Usually Call `runApp()`
// To Start Our Flutter App.

// UNDERSTANDING `main()` :-

// `main()` Is The First Function That Dart Executes
// When Our Application Starts.
//
// We Use It To Initialize Our App
// And Run The Flutter Application.

void main() {
  print('App Started!');
}

// Here `main()` Is Executed First.
// Before Our Flutter UI Appears,
// Dart Starts Running This Function.

// UNDERSTANDING `runApp()` :-

// `runApp()` Is A Flutter Function
// That Takes A Widget And Makes It The Root
// Of Our App's Widget Tree.
//
// It Tells Flutter Which Widget
// Should Be Displayed First.

void main() {
  runApp(
    Text('Hello Flutter!'),
  );
}

// Here `Text` Is The First Widget Of Our App.
// `runApp()` Takes This Widget
// And Starts Building The UI.

// USING `main()` & `runApp()` TOGETHER :-

// In Most Flutter Apps,
// We Call `runApp()` Inside `main()`.
//
// This Is The Common Way To Start A Flutter App.

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello Flutter!'),
        ),
      ),
    ),
  );
}

// `main()` Starts The Execution Of Our Program.
// `runApp()` Starts Our Flutter UI.
// `MaterialApp` Provides The Basic App Structure.
// `Scaffold` Provides A Basic Screen Layout.

// USING A CUSTOM ROOT WIDGET :-

// Instead Of Writing Our Entire UI Inside `runApp()`,
// We Can Create A Separate Widget For Our App.
//
// This Makes Our Code Cleaner & Easier To Manage.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello Flutter!'),
        ),
      ),
    );
  }
}

// Here `MyApp` Becomes The Root Widget Of Our App.
// We Keep Our UI Inside `MyApp`
// Instead Of Writing Everything Inside `main()`.

// A SIMPLE RULE :-

// `main()` Is The Entry Point Of Our Dart Program.
// `runApp()` Takes A Widget & Starts The Flutter UI.
// The Widget Passed To `runApp()` Becomes
// The Root Of Our Widget Tree.
// In Real Projects, We Usually Pass `MyApp()` To `runApp()`.
