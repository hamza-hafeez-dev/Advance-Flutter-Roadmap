// Input Widgets :-


// Input Widgets Are Used To Get Information From Users.
//
// Flutter Provides Different Input Widgets To Handle User Input.
//
// IMPORTANT INPUT WIDGETS :-
//
// TextField       -> Takes Text Input.
// TextFormField   -> Takes Text Input With Validation.
// Checkbox       -> Selects Multiple Options.
// Radio          -> Selects One Option.
// Switch         -> Turns Settings On Or Off.
// Slider         -> Selects A Value From A Range.
// DropdownButton -> Selects An Option From A List.


// 1. TEXTFIELD :-
//
// Used To Get Text Input From Users.

TextField(
  decoration: InputDecoration(
    labelText: 'Enter Your Name',
    border: OutlineInputBorder(),
  ),
)


// 2. CHECKBOX :-
//
// Used When Users Can Select Multiple Options.

bool isChecked = false;

Checkbox(
  value: isChecked,
  onChanged: (value) {
    isChecked = value!;
  },
)


// 3. RADIO :-
//
// Used When Users Can Select Only One Option.

String selectedGender = 'Male';

Radio<String>(
  value: 'Male',
  groupValue: selectedGender,
  onChanged: (value) {
    selectedGender = value!;
  },
)


// 4. SWITCH :-
//
// Used To Turn A Setting On Or Off.

bool isEnabled = false;

Switch(
  value: isEnabled,
  onChanged: (value) {
    isEnabled = value;
  },
)


// 5. SLIDER :-
//
// Used To Select A Value From A Specific Range.

double volume = 50;

Slider(
  value: volume,
  min: 0,
  max: 100,
  onChanged: (value) {
    volume = value;
  },
)


// 6. DROPDOWNBUTTON :-
//
// Used To Select One Option From A List.

String selectedCity = 'Lahore';

DropdownButton<String>(
  value: selectedCity,

  items: ['Lahore', 'Karachi', 'Islamabad']
      .map((city) {
    return DropdownMenuItem(
      value: city,
      child: Text(city),
    );
  }).toList(),

  onChanged: (value) {
    selectedCity = value!;
  },
)


// IMPORTANT PROPERTIES :-
//
// value      -> Current Selected Value.
// onChanged  -> Runs When The Value Changes.
// items      -> Options Available In Dropdown.
// min / max  -> Sets Slider Range.
//
//
// IMPORTANT NOTE :-
//
// In StatefulWidget, Use setState() Inside onChanged
// To Update The UI When Input Values Change.
//
//
// SIMPLE SUMMARY :-
//
// TextField       -> Text Input.
// Checkbox       -> Multiple Selections.
// Radio          -> Single Selection.
// Switch         -> On / Off.
// Slider         -> Select A Range Value.
// DropdownButton -> Select From A List.
