// Sets :-


// A Set Is Used To Store Unique Values In Our Program !
// Unlike Lists, Sets Do Not Allow Duplicate Values.
// Sets Are Useful When We Need To Manage Unique Data.


// DECLARING A SET :-


// First (DataType) Then (Name) & Then (Value)

Set<String> skills = {'Dart', 'Flutter', 'Java'};

// Set<String> Is Data Type
// (skills) Is Variable Name
// {'Dart', 'Flutter', 'Java'} Is Its Value


// SETS AUTOMATICALLY REMOVE DUPLICATES :-


var numbers = {1, 2, 3, 3, 4};

// Duplicate 3 Is Automatically Removed.
// Result: {1, 2, 3, 4}


// CREATING AN EMPTY SET :-


// Use <Type>{} To Create An Empty Set.

var languages = <String>{};

languages.add('Dart');
languages.addAll({'Flutter', 'Java'});

// add() Adds One Value.
// addAll() Adds Multiple Values.


// SET METHODS :-


// contains() Checks If A Value Exists.

var technologies = {'Dart', 'Flutter', 'Firebase'};

// print(technologies.contains('Flutter'));

// Output: true


// SET OPERATIONS :-


// Dart Provides Built-In Methods
// To Work With Multiple Sets.

var firstSet = {1, 2, 3};
var secondSet = {3, 4, 5};


// union() Combines Both Sets.

var unionSet = firstSet.union(secondSet);

// Result: {1, 2, 3, 4, 5}


// intersection() Returns Common Values.

var commonSet = firstSet.intersection(secondSet);

// Result: {3}


// difference() Returns Values
// That Exist Only In The First Set.

var differenceSet = firstSet.difference(secondSet);

// Result: {1, 2}


// CONVERTING LIST TO SET :-


// toSet() Converts A List Into A Set.
// This Is Useful For Removing Duplicates.

var numbersList = [1, 2, 2, 3, 3, 4];

var uniqueNumbers = numbersList.toSet();

// Result: {1, 2, 3, 4}


// SET WITH COLLECTION METHODS :-


// Sets Support Iterable Methods
// Like where(), map(), and reduce().

var evenNumbers = {1, 2, 3, 4, 5, 6}
    .where((number) => number.isEven)
    .toSet();

// Result: {2, 4, 6}


// FINAL NOTE :-


// A Set Stores Unique Values.
// Dart Provides Powerful Built-In Set Operations.
// Sets Are Useful For Managing Unique Data.
// Use Sets When Duplicate Values Are Not Needed.
