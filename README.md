# flutter_testing_101

Flutter testing App 1-0-1, from Jorge Coca's presentation.

## Getting Started

How to Run tests:

after installing LCOV:

1 - flutter test --coverage -> it will generate a coverage file with lcov.info

2 - genhtml ./coverage/lcov.info --o coverage -> Run it in Bash and it will generate a bunch of files

3 - start coverage/index.html

4 - don't forget to add the folder to .gitignore before pushing :)

Check Glossary for different testing types

## Unit tests 

setUpAll(() => print('Runs BEFORE any test is executed'));

setUp(() => print('Runs BEFORE EVERY test is executed'));

tearDown(() => print('Runs AFTER EVERY test is executed'));

tearDownAll(() => print('Runs AFTER ALL tests have been executed'));

## Widget Tests

In a Flutter project we use runApp to inflate an Application and attach it to the screen of device.
Similarly <b>[pumpWidget]</b> method does the same in a test environment, renders the UI of given widget.

<b>[pump]</b> asks the widget to create a new frame. But pump is limited since it only updates a single frame.

<b>[pumpAndSettle]</b> calls pumps over and over again, until animations are done.

Flutter test package provides ways to find our widgets, 
we can find them on screen using <b>[Key]</b>, <b>[findByType]</b> or <b>[text]</b> in case of knowing the exact test.

<b>[WidgetTester]</b> testWidgets method provides a callback that gives us a instance of a object, we can interact with the widget we have inflated with the <b>[pumpWidget]</b>

## Expectation 

The most important piece of a test is expectation part, in here we compare the result of the code vs a predefined expectation, if they match the test passes.

<b>[findsNWidgets]</b> -> Asserts there are N widgets in a class or screen.

<b>[findsOneWidget]</b> -> Asserts there is <u>exactly</u> one.

<b>[findNothing]</b> -> Well... 

## Mockito

You can control the behavior of your dependencies.

when(calculator.add(3,1)).thenReturn(25);

if we want to test an throwed exception, we just replace .<u>thenReturn</u> for <u>thenThrow</u>

when(calculator.divide(3,0)).thenThrow(Exception());

if we want asynchronous test we can use <b>[thenAnswer]</b>

Testing streams: 

https://caster.io/lessons/lesson-20-stubbing-asynchronous-methods-using-mockito?course_id=75
