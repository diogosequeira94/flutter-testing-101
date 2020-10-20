# flutter_testing_101

Flutter testing App 1-0-1, from Jorge Coca's course on Caster.IO

## Getting Started

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

## Testing small widgets in Isolation


