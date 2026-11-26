// Responsive Layouts :-


// Responsive Layouts Are Used To Make Our UI
// Adjust According To Different Screen Sizes.
//
// A Responsive UI Looks Good On Mobile, Tablet & Desktop.
//
//
// WHY WE USE RESPONSIVE LAYOUTS :-
//
// 1. To Support Different Screen Sizes.
// 2. To Adjust Widget Sizes Automatically.
// 3. To Change Layout According To Available Space.
// 4. To Provide A Better User Experience.
//
//
// IMPORTANT WIDGETS & TOOLS :-
//
// MediaQuery      -> Gets Screen Information.
// LayoutBuilder   -> Gets Available Space From Parent.
// OrientationBuilder -> Detects Device Orientation.
// Expanded        -> Takes Available Space.
// Flexible        -> Adjusts Widget Size.
// FittedBox       -> Scales Its Child To Fit.
// FractionallySizedBox -> Uses A Percentage Of Available Space.
//
//
// 1. MEDIAQUERY :-
//
// MediaQuery Helps Us Get The Screen Width And Height.
//
//
// GETTING SCREEN SIZE :-


final screenWidth = MediaQuery.sizeOf(context).width;
final screenHeight = MediaQuery.sizeOf(context).height;


// Here:
//
// screenWidth  -> Gets The Screen Width.
// screenHeight -> Gets The Screen Height.
//
// We Can Use These Values To Adjust Our UI.


// RESPONSIVE CONTAINER :-


Container(
  width: MediaQuery.sizeOf(context).width * 0.8,
  height: 150,
  color: Colors.blue,
);


// Here:
//
// 0.8 Means 80% Of The Available Screen Width.
// The Container Width Changes According To Screen Size.


// 2. LAYOUTBUILDER :-
//
// LayoutBuilder Provides The Available Space
// From Its Parent Widget.
//
// We Can Use It To Build Different Layouts
// According To Available Width.


// RESPONSIVE ROW AND COLUMN :-


LayoutBuilder(
  builder: (context, constraints) {

    if (constraints.maxWidth < 600) {

      // Mobile Layout

      return Column(
        children: [

          Container(
            height: 100,
            color: Colors.blue,
          ),

          Container(
            height: 100,
            color: Colors.green,
          ),

        ],
      );

    } else {

      // Tablet & Desktop Layout

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
// Less Than 600 Width  -> Column.
// 600 Or More Width    -> Row.
//
// We Change The Layout According To Available Width.


// 3. EXPANDED :-
//
// Expanded Takes The Available Space
// Inside A Row Or Column.
//
// It Helps Widgets Share Space Equally.


// EXAMPLE :-


Row(
  children: [

    Expanded(
      child: Container(
        height: 100,
        color: Colors.blue,
      ),
    ),

    Expanded(
      child: Container(
        height: 100,
        color: Colors.green,
      ),
    ),

  ],
);


// Here:
//
// Both Containers Share The Available Width Equally.
//
// Expanded Is Useful When We Need
// Flexible Widget Sizes.


// 4. FLEXIBLE :-
//
// Flexible Allows A Widget To Use Available Space
// Without Always Filling All Of It.


// EXAMPLE :-


Row(
  children: [

    Flexible(
      flex: 2,
      child: Container(
        height: 100,
        color: Colors.blue,
      ),
    ),

    Flexible(
      flex: 1,
      child: Container(
        height: 100,
        color: Colors.green,
      ),
    ),

  ],
);


// Here:
//
// Blue Container  -> Gets 2 Parts.
// Green Container -> Gets 1 Part.
//
// Flex Controls How Available Space Is Shared.


// 5. FLEXIBLY SIZED WIDGETS :-
//
// FractionallySizedBox Uses A Percentage
// Of Its Parent's Available Space.


// EXAMPLE :-


FractionallySizedBox(
  widthFactor: 0.7,
  child: Container(
    height: 100,
    color: Colors.orange,
  ),
);


// Here:
//
// widthFactor: 0.7 Means 70% Of Parent Width.
//
// It Is Useful When We Need Percentage-Based Sizes.


// 6. FITTEDBOX :-
//
// FittedBox Scales Its Child To Fit
// Inside The Available Space.
//
// It Helps Prevent Content From Overflowing.


// EXAMPLE :-


Container(
  width: 150,
  height: 100,
  color: Colors.blue,

  child: FittedBox(
    fit: BoxFit.contain,
    child: Text(
      'Responsive Text',
      style: TextStyle(
        fontSize: 30,
      ),
    ),
  ),
);


// Here:
//
// FittedBox Adjusts The Text Size
// To Fit Inside The Container.
//
// BoxFit.contain Keeps The Entire Child Visible.


// 7. RESPONSIVE GRIDVIEW :-
//
// We Can Change The Number Of Grid Columns
// According To Available Screen Width.


// EXAMPLE :-


LayoutBuilder(
  builder: (context, constraints) {

    int columns;

    if (constraints.maxWidth < 600) {
      columns = 2;
    } else if (constraints.maxWidth < 1000) {
      columns = 3;
    } else {
      columns = 4;
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),

      itemCount: 8,

      itemBuilder: (context, index) {

        return Container(
          color: Colors.blue,
          alignment: Alignment.center,

          child: Text(
            'Item ${index + 1}',
            style: TextStyle(
              color: Colors.white,
            ),
          ),

        );

      },
    );

  },
);


// Here:
//
// Mobile  -> 2 Columns.
// Tablet  -> 3 Columns.
// Desktop -> 4 Columns.
//
// The Grid Changes According To Available Width.


// 8. RESPONSIVE ORIENTATION :-
//
// OrientationBuilder Helps Us Change
// Our Layout According To Device Orientation.
//
// Portrait  -> Vertical Layout.
// Landscape -> Horizontal Layout.


// EXAMPLE :-


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
            child: Text('First Section'),
          ),
        ),

        Expanded(
          child: Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: Text('Second Section'),
          ),
        ),

      ],
    );

  },
);


// 9. RESPONSIVE BREAKPOINTS :-
//
// Breakpoints Are Width Values
// Used To Decide When Our Layout Should Change.
//
// COMMON EXAMPLE BREAKPOINTS :-
//
// Mobile  -> Less Than 600.
// Tablet  -> 600 To 999.
// Desktop -> 1000 Or More.
//
// These Values Are Examples.
// We Should Choose Breakpoints According To Our UI.


// PRACTICAL BREAKPOINT EXAMPLE :-


LayoutBuilder(
  builder: (context, constraints) {

    final width = constraints.maxWidth;

    if (width < 600) {

      return Text('Mobile Layout');

    } else if (width < 1000) {

      return Text('Tablet Layout');

    } else {

      return Text('Desktop Layout');

    }

  },
);


// IMPORTANT DIFFERENCE :-
//
// MediaQuery:
//
// Gives Information About The Entire Screen.
//
// LayoutBuilder:
//
// Gives Available Space From Its Parent.
//
// OrientationBuilder:
//
// Gives The Current Device Orientation.
//
// Expanded & Flexible:
//
// Help Widgets Share Available Space.
//
//
// IMPORTANT RULES :-
//
// 1. Do Not Use Fixed Widths For Every Screen.
// 2. Use Expanded And Flexible When Needed.
// 3. Use LayoutBuilder For Different Layouts.
// 4. Use MediaQuery When You Need Screen Information.
// 5. Choose Breakpoints According To Your UI.
// 6. Always Test Your UI On Different Screen Sizes.
//
//
// SIMPLE SUMMARY :-
//
// Responsive UI Adjusts According To Available Space.
//
// Use MediaQuery For Screen Information.
// Use LayoutBuilder For Parent Constraints.
// Use Expanded & Flexible For Flexible Sizes.
// Use OrientationBuilder For Portrait & Landscape Layouts.
