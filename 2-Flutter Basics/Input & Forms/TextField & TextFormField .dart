import 'package:flutter/material.dart';

// TextField & TextFormField :-


// TextField And TextFormField Are Used To Take Input From Users.
//
// We Use Them To Get Information Like :-
//
// Name
// Email
// Password
// Phone Number
// Search Text
//
// Both Widgets Look Similar But Have Some Differences.


// TEXTFIELD :-
//
// TextField Is Used To Get Input From Users.
// We Can Read Its Value Using TextEditingController.
//
// BASIC SYNTAX :-
//
// TextField(
//   controller: controller,
//   decoration: InputDecoration(
//     labelText: 'Enter Your Name',
//   ),
// )


// TEXTEDITINGCONTROLLER :-
//
// We Use TextEditingController To Read And Control TextField Values.
//
// First Create A Controller.

TextEditingController nameController = TextEditingController();


// Now We Can Get The Value Entered By The User.

String name = nameController.text;


// TEXTFIELD EXAMPLE :-

TextField(
  controller: nameController,
  decoration: InputDecoration(
    labelText: 'Enter Your Name',
    hintText: 'Your Name',
    border: OutlineInputBorder(),
  ),
)


// In This Example :-
//
// controller -> Connects The TextField With Controller.
// labelText  -> Shows The Field Label.
// hintText   -> Shows A Hint Inside The Field.
// border     -> Adds A Border Around The Field.


// GETTING USER INPUT :-
//
// We Can Get The Entered Text Using .text

void getUserName() {
  print(nameController.text);
}


// TEXTFIELD IMPORTANT PROPERTIES :-
//
// keyboardType -> Changes The Keyboard Type.
// obscureText  -> Hides The Entered Text.
// maxLength    -> Sets Maximum Character Limit.
// maxLines     -> Allows Multiple Lines.
// readOnly     -> Prevents User From Editing.
// enabled      -> Enables Or Disables The Field.
// onChanged    -> Runs When User Changes The Text.
// onSubmitted  -> Runs When User Submits The Text.


// KEYBOARD TYPE EXAMPLE :-
//
// We Can Change The Keyboard According To The Input.

TextField(
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
    labelText: 'Email Address',
  ),
)


// PASSWORD FIELD :-
//
// We Use obscureText To Hide Password Characters.

TextField(
  obscureText: true,
  decoration: InputDecoration(
    labelText: 'Password',
    border: OutlineInputBorder(),
  ),
)


// MULTILINE TEXTFIELD :-
//
// By Increasing maxLines We Can Allow Multiple Lines.

TextField(
  maxLines: 4,
  decoration: InputDecoration(
    labelText: 'Write Your Message',
    border: OutlineInputBorder(),
  ),
)


// ONCHANGED :-
//
// onChanged Runs Every Time The User Changes The Text.

TextField(
  onChanged: (value) {
    print(value);
  },
  decoration: InputDecoration(
    labelText: 'Enter Your Name',
  ),
)


// ONSUBMITTED :-
//
// onSubmitted Runs When The User Submits The Input
// Using The Keyboard Action Button.

TextField(
  onSubmitted: (value) {
    print('Submitted: $value');
  },
  decoration: InputDecoration(
    labelText: 'Enter Your Name',
  ),
)


// INPUT DECORATION :-
//
// InputDecoration Is Used To Customize The Appearance Of A TextField.
//
// IMPORTANT PROPERTIES :-
//
// labelText      -> Shows A Label.
// hintText       -> Shows Hint Text.
// helperText     -> Shows Additional Information.
// prefixIcon     -> Adds An Icon Before The Input.
// suffixIcon     -> Adds An Icon After The Input.
// border         -> Adds A Border.
// filled         -> Adds Background Color.
// fillColor      -> Sets Background Color.

TextField(
  decoration: InputDecoration(
    labelText: 'Email',
    hintText: 'Enter Your Email',
    prefixIcon: Icon(Icons.email),
    border: OutlineInputBorder(),
  ),
)


// TEXTFORMFIELD :-
//
// TextFormField Is Also Used To Get Input From Users.
//
// But It Provides Built-In Validation Support.
//
// We Usually Use TextFormField Inside A Form Widget.
//
// It Helps Us Check User Input Before Submitting Data.


// BASIC SYNTAX :-

// TextFormField(
//   validator: (value) {
//     if (value == null || value.isEmpty) {
//       return 'Please Enter Your Name';
//     }
//     return null;
//   },
// )


// FORMKEY :-
//
// We Use GlobalKey<FormState> To Control And Validate A Form.
//
// First Create A FormKey.

final formKey = GlobalKey<FormState>();


// VALIDATOR :-
//
// Validator Checks The Input Entered By The User.
//
// If Input Is Invalid, Return An Error Message.
// If Input Is Valid, Return null.


// TEXTFORMFIELD EXAMPLE :-

TextFormField(
  decoration: InputDecoration(
    labelText: 'Enter Your Name',
    border: OutlineInputBorder(),
  ),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please Enter Your Name';
    }

    return null;
  },
)


// In This Example :-
//
// validator -> Checks The User Input.
// value     -> Contains The Entered Text.
// return    -> Displays An Error Message.
// return null -> Means The Input Is Valid.


// COMPLETE FORM EXAMPLE :-
//
// Now Let's Create A Simple Form With Name And Email Fields.
//
// We Use Form Widget To Group All Form Fields.
// We Use FormKey To Validate The Complete Form.

class MyForm extends StatelessWidget {

  MyForm({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('Registration Form'),
      ),

      body: Padding(
        padding: EdgeInsets.all(16),

        child: Form(

          key: formKey,

          child: Column(
            children: [

              // NAME FIELD

              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your Name';
                  }

                  return null;
                },
              ),

              SizedBox(height: 20),


              // EMAIL FIELD

              TextFormField(
                keyboardType: TextInputType.emailAddress,

                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your Email';
                  }

                  if (!value.contains('@')) {
                    return 'Please Enter A Valid Email';
                  }

                  return null;
                },
              ),

              SizedBox(height: 20),


              // SUBMIT BUTTON

              ElevatedButton(

                onPressed: () {

                  if (formKey.currentState!.validate()) {

                    print('Form Submitted Successfully!');

                  }

                },

                child: Text('Submit'),

              ),

            ],
          ),
        ),
      ),
    );
  }
}


// FORM VALIDATION :-
//
// formKey.currentState!.validate()
//
// This Checks All TextFormFields Inside The Form.
//
// If All Fields Are Valid -> Returns true.
// If Any Field Is Invalid -> Returns false.
//
// Error Messages Are Automatically Displayed Below Fields.


// TEXTFIELD VS TEXTFORMFIELD :-
//
// TextField:
//
// Used For Simple User Input.
// Does Not Provide Built-In Form Validation.
// We Usually Read Its Value Using TextEditingController.
//
// TextFormField:
//
// Used For Form Input.
// Provides Built-In Validator Support.
// Usually Used Inside A Form Widget.
// Can Validate Input Before Form Submission.


// WHEN TO USE WHICH ONE :-
//
// TextField:
//
// Search Bars
// Simple Input Fields
// Chat Message Input
//
// TextFormField:
//
// Login Forms
// Registration Forms
// Profile Update Forms
// Forms With Validation


// CONTROLLER DISPOSAL :-
//
// When We Create A TextEditingController Inside A StatefulWidget,
// We Should Dispose Of It When The Widget Is Removed.
//
// This Helps Release Its Resources.
//
// Example :-

class MyTextField extends StatefulWidget {

  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {

  final nameController = TextEditingController();

  @override
  void dispose() {

    nameController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: nameController,
      decoration: InputDecoration(
        labelText: 'Enter Your Name',
      ),
    );
  }
}


// IMPORTANT RULES :-
//
// 1. Use TextField For Simple User Input.
//
// 2. Use TextFormField When You Need Form Validation.
//
// 3. Use TextEditingController To Read Or Control Input Values.
//
// 4. Use FormKey To Validate A Complete Form.
//
// 5. Use Validator To Check User Input.
//
// 6. Always Dispose Controllers When They Are No Longer Needed.
//
//
// SIMPLE SUMMARY :-
//
// TextField       -> Takes User Input.
// TextFormField   -> Takes User Input With Validation.
// TextEditingController -> Reads And Controls Input.
// Form            -> Groups Form Fields.
// FormKey         -> Controls And Validates The Form.
// Validator       -> Checks Whether Input Is Valid.
