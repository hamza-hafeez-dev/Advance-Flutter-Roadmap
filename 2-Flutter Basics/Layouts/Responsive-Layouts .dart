// Responsive Layouts :-

// Responsive Layouts Are Used To Make Our UI
// Adjust According To Different Screen Sizes.
//
// A Responsive UI Works On :-
//
// Mobile Phones
// Tablets
// Desktop Screens
//
// Instead Of Using Fixed Sizes Everywhere,
// We Use Available Screen Space To Build Our UI.

// WHY RESPONSIVE LAYOUTS :-
//
// Different Devices Have Different Screen Sizes.
//
// A Layout That Looks Good On Mobile
// May Look Bad On A Tablet Or Desktop.
//
// Responsive Layouts Help Us Build UI
// That Adjusts Automatically.

// MEDIAQUERY :-
//
// MediaQuery Helps Us Get Information
// About The Current Screen Size.
//
// We Can Use It To Get :-
//
// Screen Width
// Screen Height
// Screen Orientation

// BASIC SYNTAX :-

MediaQuery.of(context).size.width;

MediaQuery.of(context).size.height;

// width  -> Screen Width.
// height -> Screen Height.

// EXAMPLE :-
//
// Here We Set Container Width
// According To The Screen Width.

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {

    // Getting Screen Width.

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Container(
          width: screenWidth * 0.8,
          height: 150,
          color: Colors.blue,
        ),
      ),
    );
  }
}

// Here :-
//
// screenWidth * 0.8 Means 80% Of Screen Width.
// Container Adjusts Its Width According To The Device.

// LAYOUTBUILDER :-
//
// LayoutBuilder Helps Us Get The Available Space
// Of A Widget Instead Of The Entire Screen.
//
// We Can Use It To Build Different Layouts
// According To Available Width.

// BASIC SYNTAX :-

LayoutBuilder(
  builder: (context, constraints) {

    double width = constraints.maxWidth;

    return Container(
      width: width,
      height: 100,
      color: Colors.blue,
    );
  },
);

// Here :-
//
// constraints.maxWidth -> Maximum Available Width.
// constraints.maxHeight -> Maximum Available Height.

// RESPONSIVE LAYOUT WITH LAYOUTBUILDER :-
//
// We Can Change Our Layout
// According To Available Width.
//
// Example :-
//
// Small Width  -> Mobile Layout.
// Large Width  -> Tablet / Desktop Layout.

class ResponsiveLayoutExample extends StatelessWidget {
  const ResponsiveLayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layout'),
      ),

      body: LayoutBuilder(
        builder: (context, constraints) {

          // Checking Available Width.

          if (constraints.maxWidth < 600) {

            // Mobile Layout.

            return const Center(
              child: Text(
                'Mobile Layout',
                style: TextStyle(fontSize: 24),
              ),
            );

          } else {

            // Tablet / Desktop Layout.

            return const Center(
              child: Text(
                'Tablet / Desktop Layout',
                style: TextStyle(fontSize: 32),
              ),
            );
          }
        },
      ),
    );
  }
}

// Here :-
//
// Less Than 600 Pixels -> Mobile Layout.
// 600 Pixels Or More  -> Larger Layout.
//
// These Values Are Breakpoints.

// RESPONSIVE GRID :-
//
// We Can Also Change Grid Columns
// According To Screen Width.

class ResponsiveGridExample extends StatelessWidget {
  const ResponsiveGridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {

          // Setting Grid Columns According To Width.

          int columns;

          if (constraints.maxWidth < 600) {
            columns = 2;
          } else if (constraints.maxWidth < 1000) {
            columns = 3;
          } else {
            columns = 4;
          }

          return GridView.builder(
            padding: const EdgeInsets.all(16),

            itemCount: 20,

            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),

            itemBuilder: (context, index) {
              return Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Item $index',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Here :-
//
// Mobile  -> 2 Columns.
// Tablet  -> 3 Columns.
// Desktop -> 4 Columns.
//
// Grid Automatically Adjusts Its Layout.

// RESPONSIVE ROW & COLUMN :-
//
// Sometimes We Need Different Layouts
// For Mobile And Desktop.
//
// Mobile -> Column.
// Desktop -> Row.

class ResponsiveRowColumnExample extends StatelessWidget {
  const ResponsiveRowColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {

          // Checking Available Width.

          bool isMobile = constraints.maxWidth < 600;

          // Creating Different Layouts.

          if (isMobile) {

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                ),

                const SizedBox(height: 20),

                Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                ),

              ],
            );

          } else {

            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                ),

                const SizedBox(width: 20),

                Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                ),

              ],
            );
          }
        },
      ),
    );
  }
}

// IMPORTANT RESPONSIVE CONCEPTS :-
//
// MediaQuery -> Gets Information About The Screen.
//
// LayoutBuilder -> Gets Available Space Of A Widget.
//
// Breakpoints -> Width Values Used To Change Layout.
//
// Flexible / Expanded -> Helps Widgets Share Available Space.
//
// Avoid Fixed Widths When UI Must Adjust
// To Different Screen Sizes.

// SIMPLE RULE :-
//
// Use MediaQuery When You Need Screen Information.
//
// Use LayoutBuilder When You Need Available Space.
//
// Use Breakpoints When You Need Different Layouts
// For Mobile, Tablet, And Desktop.
//
// Always Test Your UI On Different Screen Sizes.
