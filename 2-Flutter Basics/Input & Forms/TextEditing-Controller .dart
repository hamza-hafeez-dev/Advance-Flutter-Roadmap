// TextEditingController :-


// TextEditingController Is Used To Read, Control And Manage
// The Text Entered By The User In TextField Or TextFormField.
//
// We Can Use It To :-
//
// Get User Input.
// Set Text Programmatically.
// Clear Input Fields.
// Update Existing Text.
// Control The Cursor Position.


// CREATING A CONTROLLER :-
//
// First We Create An Object Of TextEditingController.

TextEditingController nameController = TextEditingController();


// CONNECTING CONTROLLER WITH TEXTFIELD :-
//
// We Connect The Controller With A TextField Using The controller Property.

TextField(
  controller: nameController,
  decoration: InputDecoration(
    labelText: 'Enter Your Name',
    border: OutlineInputBorder(),
  ),
)


// GETTING USER INPUT :-
//
// We Use .text To Get The Text Entered By The User.

String name = nameController.text;


// Example :-

void getName() {
  print(nameController.text);
}


// In This Example :-
//
// nameController -> Our Controller.
// .text           -> Gets The Entered Text.
// name            -> Stores The Entered Value.


// SETTING TEXT PROGRAMMATICALLY :-
//
// We Can Also Set Text Inside A TextField Using The Controller.
//
// We Use .text To Assign A New Value.

void setName() {
  nameController.text = 'Hamza';
}


// Now The TextField Will Automatically Show Hamza.


// CLEARING TEXTFIELD :-
//
// We Use clear() To Remove All Text From The Input Field.

void clearName() {
  nameController.clear();
}


// This Removes All Text Entered By The User.


// COMPLETE TEXTFIELD EXAMPLE :-
//
// Let's Create A Simple Example To Get, Set And Clear User Input.

class NameInput extends StatefulWidget {

  const NameInput({super.key});

  @override
  State<NameInput> createState() => _NameInputState();
}

class _NameInputState extends State<NameInput> {

  // Creating Controller

  final nameController = TextEditingController();


  // Getting User Input

  void getName() {

    String name = nameController.text;

    print('Your Name Is: $name');
  }


  // Setting Text

  void setName() {

    nameController.text = 'Hamza';
  }


  // Clearing Text

  void clearName() {

    nameController.clear();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('TextEditingController'),
      ),

      body: Padding(

        padding: EdgeInsets.all(16),

        child: Column(

          children: [

            // TextField

            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Enter Your Name',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),


            // Get Button

            ElevatedButton(
              onPressed: getName,
              child: Text('Get Name'),
            ),


            // Set Button

            ElevatedButton(
              onPressed: setName,
              child: Text('Set Name'),
            ),


            // Clear Button

            ElevatedButton(
              onPressed: clearName,
              child: Text('Clear Name'),
            ),

          ],
        ),
      ),
    );
  }


  // DISPOSING CONTROLLER :-
  //
  // When We No Longer Need A Controller,
  // We Should Dispose Of It.
  //
  // This Helps Release Its Resources.

  @override
  void dispose() {

    nameController.dispose();

    super.dispose();
  }
}


// USING TEXTEDITINGCONTROLLER WITH TEXTFORMFIELD :-
//
// We Can Also Connect A Controller With TextFormField.
//
// It Works In The Same Way As TextField.

TextEditingController emailController = TextEditingController();

TextFormField(
  controller: emailController,
  decoration: InputDecoration(
    labelText: 'Enter Your Email',
    border: OutlineInputBorder(),
  ),
)


// GETTING EMAIL VALUE :-

String email = emailController.text;


// LISTENING TO TEXT CHANGES :-
//
// We Can Listen To Changes In The Text Using addListener().
//
// Whenever The Text Changes, The Listener Runs.

final TextEditingController messageController = TextEditingController();

void listenToChanges() {

  messageController.addListener(() {

    print(messageController.text);

  });
}


// REMOVING LISTENER :-
//
// When We No Longer Need The Listener,
// We Can Remove It Using removeListener().

void removeTextListener() {

  messageController.removeListener(() {});

}


// IMPORTANT NOTE :-
//
// When Removing A Listener, We Must Pass The Same Callback
// That We Previously Added.
// Keep The Callback In A Variable To Remove It Correctly.


// CONTROLLER IMPORTANT PROPERTIES :-
//
// .text
// Gets Or Sets The Current Text.
//
// .clear()
// Removes All Text.
//
// .selection
// Gets Or Sets The Current Cursor Or Text Selection.
//
// .value
// Provides The Current Text And Selection Information.
//
// .addListener()
// Runs A Callback When The Controller Changes.
//
// .removeListener()
// Removes A Previously Added Listener.


// CURSOR POSITION :-
//
// We Can Control The Cursor Position Using selection.
//
// Example :-

nameController.selection = TextSelection.fromPosition(
  TextPosition(
    offset: nameController.text.length,
  ),
);


// This Moves The Cursor To The End Of The Text.


// IMPORTANT RULES :-
//
// 1. Create A Controller Using TextEditingController.
//
// 2. Connect It With TextField Or TextFormField.
//
// 3. Use .text To Get Or Set Input Values.
//
// 4. Use clear() To Remove The Entered Text.
//
// 5. Use addListener() To Listen For Text Changes.
//
// 6. Always Dispose Controllers When They Are No Longer Needed.
//
//
// SIMPLE SUMMARY :-
//
// TextEditingController -> Controls Text Input.
// .text                -> Gets Or Sets Text.
// .clear()             -> Clears Text.
// .addListener()       -> Listens To Changes.
// .selection           -> Controls Cursor And Selection.
// .dispose()           -> Releases Controller Resources.
