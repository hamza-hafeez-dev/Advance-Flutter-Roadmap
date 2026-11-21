// Navigation Widgets :-


// Flutter Provides Different Widgets To Navigate Between Screens.\
// These Widgets Help Us Move From One Screen To Another.\
//\
// IMPORTANT NAVIGATION WIDGETS :-\
//\
// Navigator -> Manages Screen Navigation.\
// MaterialPageRoute -> Opens A New Screen.\
// NavigationBar -> Bottom Navigation For Material 3 Apps.\
// BottomNavigationBar -> Bottom Navigation For Older Material Apps.\
// Drawer -> Opens A Side Navigation Menu.\


// 1. NAVIGATIONBAR :-


// NavigationBar Is Used To Switch Between Different Sections Of An App.
// It Is Commonly Used In Modern Apps.

Scaffold(
  body: pages[selectedIndex],

  bottomNavigationBar: NavigationBar(
    selectedIndex: selectedIndex,
    onDestinationSelected: (index) {
      setState(() {
        selectedIndex = index;
      });
    },
    destinations: const [
      NavigationDestination(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      NavigationDestination(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      NavigationDestination(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
  ),
);


// selectedIndex Stores The Current Selected Page.\
// onDestinationSelected Runs When A User Selects An Item.\
// setState Updates The Selected Page.


// 2. BOTTOMNAVIGATIONBAR :-


// BottomNavigationBar Is Another Widget For Bottom Navigation.
// It Is Commonly Used In Older Material Design Apps.

Scaffold(
  body: pages[selectedIndex],

  bottomNavigationBar: BottomNavigationBar(
    currentIndex: selectedIndex,
    onTap: (index) {
      setState(() {
        selectedIndex = index;
      });
    },
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
    ],
  ),
);


// 3. DRAWER :-


// Drawer Is Used To Create A Side Navigation Menu.
// It Usually Opens From The Left Side Of The Screen.

Scaffold(
  appBar: AppBar(
    title: Text('My App'),
  ),

  drawer: Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          child: Text('Welcome'),
        ),

        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pop(context);
          },
        ),

        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  ),
);


// Navigator.pop(context) Closes The Drawer.\
// ListTile Is Used To Create A Menu Item.


// IMPORTANT RULE :-


// Use NavigationBar For Modern Bottom Navigation.\
// Use BottomNavigationBar For Older Material Apps.\
// Use Drawer For Side Navigation.\
// Use Navigator.push() When You Want To Open A Separate Screen.
