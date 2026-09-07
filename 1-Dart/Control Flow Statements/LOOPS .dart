// LOOPS :-  

// Loops Are Used To Run The Same Code Multiple Times !  
// Instead Of Writing The Same Code Again & Again,  
// We Can Use A Loop To Repeat It.  
//
// Dart Provides Different Ways To Create Loops.
//  
// COMMON LOOPS IN DART :-  
//  
// for       -> Repeat Code A Specific Number Of Times  
// for-in    -> Go Through Each Value In A Collection  
// while     -> Repeat While A Condition Is True  
// do-while  -> Run First, Then Check The Condition  
//  
// We Also Have `break` & `continue` To Control A Loop.  


// FOR LOOP :-  

// The `for` Loop Is Used When We Know  
// How Many Times We Want To Repeat Something.  
//  
// A `for` Loop Has 3 Main Parts :-  
// 1. Initialization  
// 2. Condition  
// 3. Update  


for (int i = 1; i <= 5; i++) {
  print(i);
}

// int i = 1 -> Starts From 1  
// i <= 5   -> Keeps Running While This Is True  
// i++      -> Increases i By 1 After Every Loop  


// We Can Change How Much The Value Increases.  

for (int i = 0; i <= 10; i += 2) {
  print(i);
}

// i += 2 Means Add 2 After Every Loop.  
// This Prints: 0, 2, 4, 6, 8, 10  


// FOR-IN LOOP :-  

// When We Are Working With A Collection Like A List Or Set,  
// We Usually Don't Need An Index.  
//  
// Dart Provides `for-in` To Make This Cleaner.  


List<String> fruits = ['Apple', 'Mango', 'Banana'];

for (final fruit in fruits) {
  print(fruit);
}

// `fruit` Gets One Value At A Time.  
// Apple -> Mango -> Banana  


// `for-in` Works With Other Iterable Collections Too.  

Set<String> languages = {'Dart', 'Java', 'Kotlin'};

for (final language in languages) {
  print(language);
}


// DART POWER: PATTERNS WITH FOR-IN :-  

// Dart Also Allows Patterns Inside A `for-in` Loop.  
// This Is Useful When Working With Structured Data.  


Map<String, int> marks = {
  'Hamza': 90,
  'Ali': 85,
  'Ahmed': 78,
};

for (final MapEntry(:key, :value) in marks.entries) {
  print('$key got $value marks');
}

// `:key` Gets The Map Key.  
// `:value` Gets The Map Value.  
// Dart Destructures Each MapEntry For Us.  


// WHILE LOOP :-  

// A `while` Loop Runs While A Condition Is True.  
// The Condition Is Checked BEFORE The Loop Runs.  


int count = 1;

while (count <= 5) {
  print(count);
  count++;
}

// The Loop Stops When `count <= 5` Becomes False.  


// IMPORTANT :-  

// Always Make Sure Your Condition Can Become False.  
// Otherwise, You Can Create An Infinite Loop.  


// DO-WHILE LOOP :-  

// A `do-while` Loop Is Similar To A `while` Loop.  
// But The Condition Is Checked AFTER The Code Runs.  
//  
// This Means A `do-while` Loop Always Runs At Least Once.  


int number = 1;

do {
  print(number);
  number++;
} while (number <= 5);


// Even If The Condition Is False From The Start,  
// The Code Inside `do` Still Runs Once.  


int value = 10;

do {
  print(value);
} while (value < 5);

// This Prints 10 Once.  
// Because The Condition Is Checked After The First Run.  


// BREAK :-  

// `break` Is Used To Stop A Loop Completely.  
// When Dart Reaches `break`, The Loop Ends.  


for (int i = 1; i <= 10; i++) {
  if (i == 5) {
    break;
  }

  print(i);
}

// The Loop Stops When i Becomes 5.  
// So It Prints 1, 2, 3, 4.  


// CONTINUE :-  

// `continue` Does Not Stop The Loop.  
// It Skips The Current Iteration  
// And Moves To The Next One.  


for (int i = 1; i <= 5; i++) {
  if (i == 3) {
    continue;
  }

  print(i);
}

// When i Is 3, That Iteration Is Skipped.  
// So It Prints: 1, 2, 4, 5  


// NESTED LOOPS :-  

// A Loop Inside Another Loop Is Called A Nested Loop.  


for (int i = 1; i <= 3; i++) {
  for (int j = 1; j <= 3; j++) {
    print('i: $i, j: $j');
  }
}

// The Inner Loop Runs Completely  
// For Every Run Of The Outer Loop.  


// DART POWER: LABELED LOOPS :-  

// Dart Allows Us To Give A Label To A Loop.  
// We Can Then Use `break` Or `continue`  
// With That Label To Control An Outer Loop.  


outerLoop:
for (int i = 1; i <= 3; i++) {
  for (int j = 1; j <= 3; j++) {
    if (i == 2 && j == 2) {
      break outerLoop;
    }

    print('i: $i, j: $j');
  }
}

// `break outerLoop` Stops The OUTER Loop.  
// This Is Useful When Working With Nested Loops.  


// DART POWER: FOR LOOP INSIDE A COLLECTION :-  

// Dart Also Allows `for` Loops Directly Inside  
// Collection Literals Like Lists.  
//  
// This Can Help Us Build Collections Dynamically.  


var numbers = [
  1,
  for (var i = 2; i <= 5; i++) i,
  6,
];

print(numbers);

// Result:
// [1, 2, 3, 4, 5, 6]


// We Can Also Combine `for` With `if`.  


var evenNumbers = [
  for (var i = 1; i <= 10; i++)
    if (i.isEven) i,
];

print(evenNumbers);

// Result:
// [2, 4, 6, 8, 10]


// This Is One Of The Powerful Features Of Dart Collections.  
// We Can Build A Collection Using Control Flow Directly.  


// SIMPLE RULE :-  

// Use `for` When You Know The Number Of Repetitions.  
// Use `for-in` When You Want To Go Through A Collection.  
// Use `while` When The Loop Depends On A Condition.  
// Use `do-while` When The Code Must Run At Least Once.  
// Use `break` To Stop A Loop.  
// Use `continue` To Skip An Iteration.  
// Use Labeled Loops When You Need To Control An Outer Loop.  
// Use Collection `for` When Building Lists Or Other Collections Dynamically.  


// NOTE :-  

// Dart Also Has `await for` For Working With Streams.  
// We Will Learn This Later In ASYNC PROGRAMMING.  
