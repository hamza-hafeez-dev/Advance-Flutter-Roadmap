// Maps In Dart :-


// Maps Are Used To Store Data In Key-Value Pairs !
// Each Key Is Used To Access Its Corresponding Value.
//
// Maps Are Useful When We Want To Store Data
// With A Meaningful Key Instead Of An Index.
//
// COMMON MAP TYPES :-
//
// Map<String, String> -> Stores String Keys & Values
// Map<String, int>    -> Stores String Keys & Integer Values
// Map<String, dynamic> -> Can Store Different Value Types


// CREATING A MAP :-

// First (Key Type) Then (Value Type)
// Then We Store Data In Key-Value Pairs.

Map<String, String> user = {
  'name': 'Hamza',
  'country': 'Pakistan',
};

// 'name' Is A Key & 'Hamza' Is Its Value.
// 'country' Is A Key & 'Pakistan' Is Its Value.


// ACCESSING MAP VALUES :-

// We Can Access A Value By Using Its Key.

print(user['name']);

// Output: Hamza


// ADDING & UPDATING VALUES :-

// We Can Add A New Key-Value Pair To A Map.

user['language'] = 'Dart';

// We Can Also Update An Existing Value.

user['name'] = 'Muhammad Hamza';


// REMOVING VALUES :-

// We Can Remove A Key-Value Pair Using remove().

user.remove('country');


// CHECKING MAP VALUES :-

// containsKey() Checks If A Key Exists.

print(user.containsKey('name'));

// containsValue() Checks If A Value Exists.

print(user.containsValue('Dart'));


// LOOPING THROUGH A MAP :-

// We Can Use forEach() To Access Each Key & Value.

user.forEach((key, value) {
  print('$key: $value');
});


// MAP WITH TYPE INFERENCE :-

// Dart Can Automatically Understand The Map Type.

var scores = {
  'Hamza': 90,
  'Ali': 85,
};

// Dart Understands This As:
// Map<String, int>


// FINAL MAP :-

// A final Map Cannot Be Assigned A New Map.
// But We Can Still Add, Update & Remove Values.

final Map<String, int> marks = {
  'Math': 90,
  'Physics': 85,
};

marks['Computer'] = 95;


// CONST MAP :-

// A const Map Is Completely Immutable.
// Its Contents Cannot Be Changed.

const Map<String, String> appInfo = {
  'name': 'Flutter App',
  'version': '1.0',
};


// MAP WITH DIFFERENT VALUE TYPES :-

// dynamic Allows Different Types Of Values.
// Use It When Values Can Have Different Types.

Map<String, dynamic> profile = {
  'name': 'Hamza',
  'age': 20,
  'isDeveloper': true,
};


// NESTED MAPS :-

// A Map Can Also Store Another Map As Its Value.
// This Is Useful For Structured Data.

Map<String, Map<String, String>> users = {
  'user1': {
    'name': 'Hamza',
    'role': 'Developer',
  },
};

print(users['user1']?['name']);


// MAP METHODS :-

// Dart Provides Useful Methods To Work With Maps.
//
// keys       -> Returns All Keys
// values     -> Returns All Values
// length     -> Returns Number Of Entries
// isEmpty    -> Checks If Map Is Empty
// isNotEmpty -> Checks If Map Has Values

print(user.keys);
print(user.values);
print(user.length);


// MAPS ARE POWERFUL IN DART :-
//
// Maps Are Commonly Used In Flutter Applications
// To Store API Responses, User Profiles & App Settings.
//
// Understanding Maps Helps Us Work With JSON Data
// And Build Real-World Flutter Applications.
