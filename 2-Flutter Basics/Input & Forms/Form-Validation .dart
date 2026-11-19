
// Form Validation :-


// Form Validation Is Used To Check User Input Before Submitting A Form.
//
// For Example :-
//
// Name Should Not Be Empty.
// Email Should Be Valid.
// Password Should Have At Least 8 Characters.
//
// Flutter Provides Form And Validator To Handle Validation.


// FORM KEY :-
//
// First Create A GlobalKey To Control The Form.

final formKey = GlobalKey<FormState>();


// FORM VALIDATION SYNTAX :-

Form(
  key: formKey,

  child: Column(
    children: [

      TextFormField(

        decoration: InputDecoration(
          labelText: 'Enter Your Name',
        ),

        validator: (value) {

          if (value == null || value.isEmpty) {
            return 'Please Enter Your Name';
          }

          return null;
        },
      ),

    ],
  ),
)


// VALIDATOR :-
//
// Validator Checks The Input Entered By The User.
//
// return 'Message' -> Shows An Error Message.
// return null      -> Input Is Valid.


// VALIDATING FORM :-
//
// We Use validate() To Check All Fields.

void submitForm() {

  if (formKey.currentState!.validate()) {

    print('Form Submitted Successfully!');

  }

}


// COMPLETE FORM EXAMPLE :-

class MyForm extends StatelessWidget {

  MyForm({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('Form Validation'),
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
                    return 'Name Is Required';
                  }

                  return null;
                },
              ),

              SizedBox(height: 20),


              // EMAIL FIELD

              TextFormField(

                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),

                validator: (value) {

                  if (value == null || !value.contains('@')) {
                    return 'Enter A Valid Email';
                  }

                  return null;
                },
              ),

              SizedBox(height: 20),


              // SUBMIT BUTTON

              ElevatedButton(

                onPressed: () {

                  if (formKey.currentState!.validate()) {
                    print('Form Submitted!');
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


// IMPORTANT RULES :-
//
// Form              -> Groups Input Fields.
// GlobalKey         -> Controls The Form.
// TextFormField     -> Takes User Input.
// Validator         -> Checks User Input.
// validate()        -> Validates All Fields.
//
//
// SIMPLE SUMMARY :-
//
// Always Validate User Input Before Submitting A Form!
