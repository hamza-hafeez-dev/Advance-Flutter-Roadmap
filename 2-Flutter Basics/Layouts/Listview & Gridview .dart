// ListView & GridView :-

// ListView And GridView Are Used To Display
// Multiple Widgets In A Scrollable Layout.
//
// ListView -> Displays Items In A List.
// GridView -> Displays Items In A Grid.

// LISTVIEW :-
//
// ListView Displays Widgets Vertically By Default.
// We Can Scroll The List When Items Are More Than Available Space.

// BASIC LISTVIEW SYNTAX :-

ListView(
  children: [

    Text('Apple'),

    Text('Banana'),

    Text('Orange'),

    Text('Mango'),

  ],
);

// Here :-
//
// ListView Displays All Items Vertically.
// Users Can Scroll When Needed.

// LISTVIEW WITH CONTAINER :-
//
// We Can Use Containers Or Any Other Widgets
// Inside ListView.

ListView(
  children: [

    Container(
      height: 100,
      color: Colors.red,
      child: const Center(
        child: Text('Item 1'),
      ),
    ),

    Container(
      height: 100,
      color: Colors.blue,
      child: const Center(
        child: Text('Item 2'),
      ),
    ),

    Container(
      height: 100,
      color: Colors.green,
      child: const Center(
        child: Text('Item 3'),
      ),
    ),

  ],
);

// LISTVIEW.BUILDER :-
//
// ListView.builder Is Used When We Have
// A Large Number Of Items.
//
// It Creates Items Only When They Are Needed
// For Displaying On The Screen.

// BASIC SYNTAX :-

ListView.builder(
  itemCount: 10,

  itemBuilder: (context, index) {
    return Text('Item $index');
  },
);

// Here :-
//
// itemCount -> Total Number Of Items.
// itemBuilder -> Builds Each Item.
// index -> Position Of The Current Item.

// PRACTICAL LISTVIEW.BUILDER EXAMPLE :-

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  final List<String> fruits = const [
    'Apple',
    'Banana',
    'Orange',
    'Mango',
    'Grapes',
    'Pineapple',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit List'),
      ),

      body: ListView.builder(
        itemCount: fruits.length,

        itemBuilder: (context, index) {

          // Getting The Current Fruit.

          final fruit = fruits[index];

          return ListTile(
            leading: const Icon(Icons.food_bank),
            title: Text(fruit),
            trailing: const Icon(Icons.arrow_forward),
          );
        },
      ),
    );
  }
}

// LISTVIEW.SEPARATED :-
//
// ListView.separated Is Used When We Need
// A Separator Between Every Item.
//
// Example -> Divider Between List Items.

// BASIC SYNTAX :-

ListView.separated(
  itemCount: 10,

  itemBuilder: (context, index) {
    return ListTile(
      title: Text('Item $index'),
    );
  },

  separatorBuilder: (context, index) {
    return const Divider();
  },
);

// Here :-
//
// itemBuilder -> Creates The List Item.
// separatorBuilder -> Creates The Separator.

// GRIDVIEW :-
//
// GridView Displays Items In Rows And Columns.
//
// Unlike ListView, GridView Displays
// Multiple Items In One Row.

// BASIC GRIDVIEW SYNTAX :-

GridView.count(
  crossAxisCount: 2,

  children: [

    Container(color: Colors.red),

    Container(color: Colors.blue),

    Container(color: Colors.green),

    Container(color: Colors.orange),

  ],
);

// Here :-
//
// crossAxisCount -> Number Of Items In Each Row.
// 2 -> Two Columns.

// GRIDVIEW.COUNT :-
//
// GridView.count Is Used When We Want
// To Define A Fixed Number Of Columns.

// PRACTICAL GRIDVIEW.COUNT EXAMPLE :-

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  final List<String> fruits = const [
    'Apple',
    'Banana',
    'Orange',
    'Mango',
    'Grapes',
    'Pineapple',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruit Grid'),
      ),

      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),

        children: fruits.map((fruit) {
          return Container(
            color: Colors.blue,

            child: Center(
              child: Text(
                fruit,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

// GRIDVIEW.BUILDER :-
//
// GridView.builder Is Used When We Have
// A Large Number Of Grid Items.
//
// It Creates Items Only When They Are Needed.

// BASIC SYNTAX :-

GridView.builder(
  itemCount: 20,

  gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),

  itemBuilder: (context, index) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text('Item $index'),
      ),
    );
  },
);

// IMPORTANT GRID PROPERTIES :-
//
// crossAxisCount -> Number Of Columns.
// crossAxisSpacing -> Space Between Columns.
// mainAxisSpacing -> Space Between Rows.
// childAspectRatio -> Width To Height Ratio.

// GRIDVIEW WITH SPACING :-
//
// We Can Control The Space Between Items
// And Their Width / Height Ratio.

GridView.builder(
  itemCount: 20,

  padding: const EdgeInsets.all(10),

  gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    childAspectRatio: 1,
  ),

  itemBuilder: (context, index) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Text('Item $index'),
      ),
    );
  },
);

// childAspectRatio :-
//
// 1 -> Width And Height Are Equal.
// 2 -> Width Is Double The Height.
// 0.5 -> Height Is Double The Width.

// IMPORTANT RULE :-
//
// ListView.builder -> For Scrollable Lists.
// ListView.separated -> For Lists With Separators.
// GridView.count -> For A Fixed Number Of Columns.
// GridView.builder -> For Large Or Dynamic Grids.

// LISTVIEW VS GRIDVIEW :-
//
// ListView -> Items Display Vertically.
// GridView -> Items Display In Rows And Columns.

// SUMMARY :-
//
// Use ListView When You Need A Scrollable List.
// Use GridView When You Need A Grid Layout.
// Use Builder For Large Or Dynamic Data.
// Use Separated When You Need Dividers.
// Use crossAxisCount To Control Grid Columns.
