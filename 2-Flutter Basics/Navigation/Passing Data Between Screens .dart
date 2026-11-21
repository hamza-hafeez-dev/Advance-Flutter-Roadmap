
// Passing Data Between Screens :-


// Sometimes We Need To Send Data From One Screen To Another.\
// For Example, We Have A List Of Users And Want To Show Their Details.\
// We Can Pass Data Through The Constructor Of Another Screen.\


// PASSING DATA USING NAVIGATOR.PUSH :-


// First Create A Screen That Receives Data.

class ProfileScreen extends StatelessWidget {
  final String name;
  final int age;

  const ProfileScreen({
    super.key,
    required this.name,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Column(
        children: [
          Text('Name: $name'),
          Text('Age: $age'),
        ],
      ),
    );
  }
}


// Now Pass Data From The Previous Screen.

ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfileScreen(
          name: 'Hamza',
          age: 22,
        ),
      ),
    );
  },
  child: Text('Open Profile'),
);


// EXPLANATION :-


// name And age Are Used To Receive Data.\
// required Makes These Values Necessary.\
// Navigator.push Opens The Profile Screen.\
// We Pass Values Through The ProfileScreen Constructor.\


// PASSING DIFFERENT TYPES OF DATA :-


// We Can Pass Any Required Data Type Through A Constructor.

class ProductScreen extends StatelessWidget {
  final String productName;
  final double price;
  final bool isAvailable;

  const ProductScreen({
    super.key,
    required this.productName,
    required this.price,
    required this.isAvailable,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(productName),
          Text('$price'),
          Text(isAvailable ? 'Available' : 'Not Available'),
        ],
      ),
    );
  }
}


// NAVIGATING BACK WITH DATA :-


// We Can Also Send Data From The Second Screen Back To The First Screen.
// Use Navigator.pop() To Return A Value.


// Second Screen :

Navigator.pop(context, 'Profile Updated');


// First Screen :

final result = await Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => ProfileScreen(
      name: 'Hamza',
      age: 22,
    ),
  ),
);

if (result != null) {
  print(result);
}


// EXPLANATION :-


// Navigator.push Returns A Future.\
// We Use await To Receive The Returned Value.\
// Navigator.pop Sends The Value Back To The Previous Screen.\


// IMPORTANT RULE :-


// Use Constructor Parameters To Send Data Forward.\
// Use Navigator.pop() To Send Data Back.\
// Always Use The Correct Data Type When Passing Values.
