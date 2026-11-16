// Expanded & Flexible :-

// Expanded & Flexible Are Used To Control How Much Space
// A Widget Takes Inside A Row, Column, Or Flex.

// When Multiple Widgets Need To Share Available Space,
// We Use Expanded Or Flexible.

// EXPANDED :-
//
// Expanded Forces A Widget To Take Available Space.
// It Fills The Remaining Space In A Row Or Column.

// Example :-
//
// Expanded Takes All Remaining Space.

import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [

          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),

          // Expanded Takes All Remaining Width.

          Expanded(
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),

          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),

        ],
      ),
    );
  }
}

// Here :-
//
// Red Container Has Fixed Width.
// Green Container Has Fixed Width.
// Blue Container Takes All Remaining Space.

// EXPANDED WITH MULTIPLE WIDGETS :-
//
// Expanded Widgets Share Available Space.
// We Can Control Their Space Using flex.

// flex = 1 -> Normal Share
// flex = 2 -> Takes Double Space
// flex = 3 -> Takes Triple Space

class ExpandedFlexExample extends StatelessWidget {
  const ExpandedFlexExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        // Takes 1 Part Of Available Space.

        Expanded(
          flex: 1,
          child: Container(
            height: 100,
            color: Colors.red,
          ),
        ),

        // Takes 2 Parts Of Available Space.

        Expanded(
          flex: 2,
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        ),

        // Takes 3 Parts Of Available Space.

        Expanded(
          flex: 3,
          child: Container(
            height: 100,
            color: Colors.green,
          ),
        ),

      ],
    );
  }
}

// Total Flex = 1 + 2 + 3 = 6
//
// Red   -> 1/6 Of Available Space
// Blue  -> 2/6 Of Available Space
// Green -> 3/6 Of Available Space

// FLEXIBLE :-
//
// Flexible Allows A Widget To Use Available Space
// Without Forcing It To Fill All The Space.

// Example :-
//
// Flexible Can Take Less Space If Its Child Needs Less Space.

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),

        // Flexible Allows This Widget To Use Remaining Space.

        Flexible(
          child: Container(
            height: 100,
            color: Colors.blue,
            child: const Text(
              'Flexible Widget',
            ),
          ),
        ),

      ],
    );
  }
}

// FLEXIBLE FIT :-
//
// Flexible Has Two Important Fit Values.

// FlexFit.loose :-
//
// Widget Can Use Available Space.
// But It Does Not Have To Fill All Of It.

Flexible(
  fit: FlexFit.loose,
  child: Container(
    width: 100,
    height: 100,
    color: Colors.blue,
  ),
);

// FlexFit.tight :-
//
// Widget Must Fill All Available Space.
// It Works Like Expanded.

Flexible(
  fit: FlexFit.tight,
  child: Container(
    height: 100,
    color: Colors.blue,
  ),
);

// EXPANDED VS FLEXIBLE :-
//
// Expanded :-
// Always Fills Its Allocated Space.
//
// Flexible :-
// Can Use Less Space Than Its Allocation.
//
// Expanded Is Basically Flexible With
// FlexFit.tight.

// IMPORTANT RULE :-
//
// Expanded And Flexible Must Be Used Inside
// Row, Column, Or Another Flex Widget.

// We Cannot Directly Use Them Inside A Container.

// PRACTICAL EXAMPLE :-
//
// Here We Create A Simple Row With Three Widgets.
// Middle Widget Takes Remaining Space.

class FlexibleLayoutDemo extends StatelessWidget {
  const FlexibleLayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Row(
          children: [

            // Fixed Width Widget.

            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),

            const SizedBox(width: 10),

            // Takes Remaining Space.

            Expanded(
              child: Container(
                height: 80,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Expanded',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 10),

            // Fixed Width Widget.

            Container(
              width: 80,
              height: 80,
              color: Colors.green,
            ),

          ],
        ),
      ),
    );
  }
}

// SUMMARY :-
//
// Expanded -> Fills Available Space.
// Flexible -> Can Use Available Space Without Filling It.
// flex     -> Controls The Space Ratio.
// FlexFit.loose -> Allows Smaller Size.
// FlexFit.tight -> Forces Widget To Fill Its Space.
//
// Simple Rule :-
//
// Use Expanded When You Want To Fill Remaining Space.
// Use Flexible When You Want To Allow Flexible Sizing.
