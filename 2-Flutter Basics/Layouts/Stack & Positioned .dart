
// Stack & Positioned :-

// Stack Is Used To Place Multiple Widgets On Top Of Each Other.
//
// Positioned Is Used To Control The Exact Position
// Of A Widget Inside A Stack.

// STACK :-
//
// Stack Allows Widgets To Overlap Each Other.
// The First Widget Appears At The Bottom.
// The Last Widget Appears At The Top.

// BASIC STACK SYNTAX :-

Stack(
  children: [

    Container(
      width: 200,
      height: 200,
      color: Colors.red,
    ),

    Container(
      width: 150,
      height: 150,
      color: Colors.blue,
    ),

    Container(
      width: 100,
      height: 100,
      color: Colors.green,
    ),

  ],
);

// Here :-
//
// Red Container Is At The Bottom.
// Blue Container Appears On Top Of Red.
// Green Container Appears On Top Of Blue.

// STACK WITH ALIGNMENT :-
//
// We Can Use Alignment To Control
// The Position Of Widgets Inside A Stack.

// Alignment Values :-
//
// Alignment.topLeft
// Alignment.topCenter
// Alignment.topRight
// Alignment.centerLeft
// Alignment.center
// Alignment.centerRight
// Alignment.bottomLeft
// Alignment.bottomCenter
// Alignment.bottomRight

Stack(
  alignment: Alignment.center,
  children: [

    Container(
      width: 200,
      height: 200,
      color: Colors.red,
    ),

    Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    ),

  ],
);

// Both Widgets Are Positioned At The Center
// According To Their Sizes.

// POSITIONED :-
//
// Positioned Allows Us To Set The Exact Position
// Of A Widget Inside A Stack.
//
// We Can Control Its Position Using :-
//
// top
// bottom
// left
// right
//
// Positioned Must Be Used Inside Stack.

// BASIC POSITIONED EXAMPLE :-

Stack(
  children: [

    Container(
      width: 300,
      height: 300,
      color: Colors.grey,
    ),

    Positioned(
      top: 20,
      left: 20,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    ),

  ],
);

// Red Container Is Positioned
// 20 Pixels From Top And Left.

// POSITIONED WITH RIGHT & BOTTOM :-

Stack(
  children: [

    Container(
      width: 300,
      height: 300,
      color: Colors.grey,
    ),

    Positioned(
      bottom: 20,
      right: 20,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    ),

  ],
);

// Blue Container Is Positioned
// 20 Pixels From Bottom And Right.

// POSITIONED WITH ALL SIDES :-
//
// We Can Set Top, Bottom, Left, And Right
// To Control The Size And Position Of A Widget.

Stack(
  children: [

    Container(
      width: 300,
      height: 300,
      color: Colors.grey,
    ),

    Positioned(
      top: 20,
      bottom: 20,
      left: 20,
      right: 20,
      child: Container(
        color: Colors.blue,
      ),
    ),

  ],
);

// Blue Container Takes The Space
// Between All Four Positions.

// POSITIONED.FILL :-
//
// Positioned.fill Makes A Widget
// Fill The Entire Stack.

Stack(
  children: [

    Container(
      width: 300,
      height: 300,
      color: Colors.red,
    ),

    Positioned.fill(
      child: Container(
        color: Colors.blue.withValues(alpha: 0.3),
      ),
    ),

  ],
);

// PRACTICAL EXAMPLE :-
//
// Here We Create A Profile Card
// With An Image And A Name On Top Of It.

class StackPositionedDemo extends StatelessWidget {
  const StackPositionedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 200,

          child: Stack(
            children: [

              // Background Image.

              Positioned.fill(
                child: Image.network(
                  'https://picsum.photos/300/200',
                  fit: BoxFit.cover,
                ),
              ),

              // Dark Background At The Bottom.

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  color: Colors.black54,

                  // Profile Name.

                  child: const Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              // Small Badge At Top Right.

              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: const Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
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
// Stack -> Places Widgets On Top Of Each Other.
//
// Positioned -> Controls Widget Position Inside Stack.
//
// First Child -> Bottom Layer.
//
// Last Child -> Top Layer.
//
// Positioned.fill -> Fills The Entire Stack.
//
// Positioned Must Be Used Inside Stack.

// SUMMARY :-
//
// Use Stack When Widgets Need To Overlap.
// Use Positioned When You Need Exact Positioning.
// Use Alignment When You Need Simple Alignment.
// Use Positioned.fill When A Widget Must Fill The Stack.
