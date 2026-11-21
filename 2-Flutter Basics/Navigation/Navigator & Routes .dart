
// Navigator & Routes :-


// Navigator Is Used To Move Between Different Screens In A Flutter App.
//
// For Example :-
//
// Login Screen -> Home Screen.
// Home Screen -> Profile Screen.
// Home Screen -> Settings Screen.
//
// Flutter Uses A Navigation Stack To Manage Screens.


// 1. NAVIGATOR.PUSH :-
//
// push() Is Used To Open A New Screen.
//
// The New Screen Appears On Top Of The Current Screen.

Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => SecondScreen(),
  ),
)


// 2. NAVIGATOR.POP :-
//
// pop() Is Used To Go Back To The Previous Screen.

Navigator.pop(context);


// 3. NAVIGATOR.PUSHREPLACEMENT :-
//
// Replaces The Current Screen With A New Screen.
// The User Cannot Go Back To The Replaced Screen.

Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (context) => HomeScreen(),
  ),
)


// 4. NAMED ROUTES :-
//
// Named Routes Allow Us To Navigate Using Route Names.
//
// First Define Routes Inside MaterialApp.

MaterialApp(
  initialRoute: '/',
  routes: {

    '/': (context) => HomeScreen(),

    '/profile': (context) => ProfileScreen(),

    '/settings': (context) => SettingsScreen(),

  },
)


// NAVIGATING USING ROUTE NAME :-
//
// We Use pushNamed() To Open A Named Route.

Navigator.pushNamed(context, '/profile');


// GOING BACK :-
//
// We Can Still Use pop() To Return To The Previous Screen.

Navigator.pop(context);


// 5. PASSING DATA BETWEEN SCREENS :-
//
// We Can Pass Data Through The Constructor.

Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => ProfileScreen(
      name: 'Hamza',
    ),
  ),
)


// Receiving Data On Another Screen :-

class ProfileScreen extends StatelessWidget {

  final String name;

  const ProfileScreen({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),

      body: Center(
        child: Text('Welcome $name'),
      ),
    );
  }
}


// IMPORTANT NAVIGATOR METHODS :-
//
// push()            -> Opens A New Screen.
// pop()             -> Goes Back.
// pushReplacement() -> Replaces Current Screen.
// pushNamed()       -> Opens A Named Route.
// popUntil()        -> Goes Back To A Specific Route.
//
//
// SIMPLE SUMMARY :-
//
// Navigator -> Manages Screen Navigation.
// Routes    -> Define Different App Screens.
// push()    -> Move Forward.
// pop()     -> Go Back.
//
//
// IMPORTANT NOTE :-
//
// For Small Apps, MaterialPageRoute Is Simple And Easy To Use.
// Named Routes Can Help Organize Navigation In Small Projects.
// For Larger Apps, Flutter Also Supports Router-Based Navigation.
