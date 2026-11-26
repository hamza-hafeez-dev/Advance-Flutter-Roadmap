// OrientationBuilder :-


// OrientationBuilder Is Used To Build Responsive UI
// According To The Device Orientation.
//
// It Helps Us Change Our Layout When The Device
// Changes From Portrait To Landscape.
//
//
// WHAT IS DEVICE ORIENTATION?
//
// Portrait   -> Device Is In Vertical Position.
// Landscape  -> Device Is In Horizontal Position.
//
//
// WHY WE USE ORIENTATIONBUILDER :-
//
// 1. To Adjust UI According To Device Orientation.
// 2. To Change Column Into Row.
// 3. To Create Responsive Layouts.
// 4. To Improve UI On Mobile And Tablet Devices.
//
//
// IMPORTANT PROPERTY :-
//
// Orientation.portrait  -> Vertical Orientation.
// Orientation.landscape -> Horizontal Orientation.
//
//
// BASIC SYNTAX :-
//
// OrientationBuilder(
//   builder: (context, orientation) {
//     return Widget();
//   },
// )
//
// orientation Gives Us The Current Device Orientation.


// BASIC EXAMPLE :-


OrientationBuilder(
  builder: (context, orientation) {

    return Text(
      orientation == Orientation.portrait
          ? 'Portrait Mode'
          : 'Landscape Mode',
    );

  },
);


// Here:
//
// We Check The Current Device Orientation.
//
// If It Is Portrait, We Show 'Portrait Mode'.
// Otherwise, We Show 'Landscape Mode'.


// CHANGING COLUMN INTO ROW :-


// We Can Change Our Layout According To Orientation.


OrientationBuilder(
  builder: (context, orientation) {

    if (orientation == Orientation.portrait) {

      // Vertical Layout

      return Column(
        children: [

          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
          ),

          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green,
          ),

        ],
      );

    } else {

      // Horizontal Layout

      return Row(
        children: [

          Expanded(
            child: Container(
              height: 200,
              color: Colors.blue,
            ),
          ),

          Expanded(
            child: Container(
              height: 200,
              color: Colors.green,
            ),
          ),

        ],
      );

    }

  },
);


// Here:
//
// Portrait Mode  -> Widgets Are Displayed In Column.
// Landscape Mode -> Widgets Are Displayed In Row.
//
// Expanded Helps Both Containers Share Available Width.


// PRACTICAL EXAMPLE :-


// Creating A Responsive Image And Text Layout.


OrientationBuilder(
  builder: (context, orientation) {

    return Flex(
      direction: orientation == Orientation.portrait
          ? Axis.vertical
          : Axis.horizontal,

      children: [

        Expanded(
          child: Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              'Image Section',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),

        Expanded(
          child: Container(
            color: Colors.grey,
            alignment: Alignment.center,
            child: Text(
              'Details Section',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),

      ],
    );

  },
);


// Here:
//
// Flex Allows Us To Change The Layout Direction.
//
// Portrait  -> Vertical Layout.
// Landscape -> Horizontal Layout.
//
// Expanded Gives Equal Space To Both Sections.


// IMPORTANT DIFFERENCE :-
//
// OrientationBuilder:
//
// Detects The Device Orientation.
// Builds UI According To Portrait Or Landscape.
//
// LayoutBuilder:
//
// Provides The Available Space From Its Parent.
// Builds UI According To Available Width And Height.
//
// MediaQuery:
//
// Provides Information About The Screen.
// It Can Also Be Used To Get Screen Dimensions
// And Device Orientation.


// IMPORTANT RULE :-
//
// OrientationBuilder Does Not Automatically
// Make Your UI Responsive.
//
// We Must Check The Orientation
// And Change Our Layout Accordingly.
//
// Use OrientationBuilder When Your UI
// Needs Different Layouts For Portrait And Landscape.
