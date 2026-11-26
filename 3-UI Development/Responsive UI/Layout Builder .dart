// LayoutBuilder :-


// LayoutBuilder Is Used To Build Responsive UI In Flutter.
// It Helps Us Adjust Our UI According To The Available Space.
//
// It Provides The Parent Widget's Constraints.
// We Can Use These Constraints To Change Our Layout.
//
//
// WHY WE USE LAYOUTBUILDER :-
//
// 1. To Create Responsive Layouts.
// 2. To Adjust UI For Different Screen Sizes.
// 3. To Change Widget Sizes According To Available Space.
// 4. To Build Different Layouts For Mobile, Tablet & Desktop.
//
//
// IMPORTANT PROPERTIES :-
//
// maxWidth  -> Maximum Available Width.
// maxHeight -> Maximum Available Height.
// minWidth  -> Minimum Available Width.
// minHeight -> Minimum Available Height.
//
//
// BASIC SYNTAX :-
//
// LayoutBuilder(
//   builder: (context, constraints) {
//     return Widget();
//   },
// )
//
// constraints Gives Us The Available Space From The Parent Widget.


// BASIC EXAMPLE :-


LayoutBuilder(
  builder: (context, constraints) {

    return Container(
      width: constraints.maxWidth,
      height: 100,
      color: Colors.blue,
    );

  },
);


// Here:
//
// constraints.maxWidth Gives The Maximum Available Width.
// We Use It To Set The Container Width Dynamically.


// RESPONSIVE WIDTH EXAMPLE :-


// We Can Change The UI According To Available Width.


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
// If Available Width Is Less Than 600,
// Flutter Builds A Column Layout.
//
// Otherwise, Flutter Builds A Row Layout.
//
// This Helps Us Create Different Layouts
// For Different Screen Sizes.


// USING MAXWIDTH AND MAXHEIGHT :-


// We Can Also Get Both Available Width And Height.


LayoutBuilder(
  builder: (context, constraints) {

    double availableWidth = constraints.maxWidth;

    double availableHeight = constraints.maxHeight;

    return Container(
      width: availableWidth * 0.5,
      height: availableHeight * 0.5,
      color: Colors.orange,
    );

  },
);


// Here:
//
// maxWidth Gives The Available Maximum Width.
// maxHeight Gives The Available Maximum Height.
//
// We Set The Container Size To 50% Of Available Space.


// RESPONSIVE GRID EXAMPLE :-


// We Can Change The Number Of Grid Columns
// According To The Available Width.


LayoutBuilder(
  builder: (context, constraints) {

    int crossAxisCount;

    if (constraints.maxWidth < 600) {
      crossAxisCount = 2;
    } else if (constraints.maxWidth < 1000) {
      crossAxisCount = 3;
    } else {
      crossAxisCount = 4;
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
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
// Mobile Width   -> 2 Columns.
// Tablet Width   -> 3 Columns.
// Desktop Width  -> 4 Columns.
//
// GridView Automatically Adjusts Its Columns
// According To The Available Width.


// IMPORTANT DIFFERENCE :-
//
// MediaQuery Gives Us The Entire Screen Size.
// LayoutBuilder Gives Us The Available Space
// Provided By Its Parent Widget.
//
// Use MediaQuery When You Need Screen Dimensions.
// Use LayoutBuilder When You Need Parent Constraints.


// IMPORTANT RULE :-
//
// LayoutBuilder Does Not Automatically Make UI Responsive.
//
// We Use Its Constraints To Decide
// How Our UI Should Look.
//
// Always Choose Breakpoints According To
// Your UI Requirements.
