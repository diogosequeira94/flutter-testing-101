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
Similarly [pumpWidget] method does the same in a test environment, renders the UI of given widget.

[pump] asks the widget to create a new frame. But pump is limited since it only updates a single frame.

[pumpAndSettle] calls pumps over and over again, until animations are done.

Flutter test package provides ways to find our widgets, 
we can find them on screen using [Key], [findByType] or [text] in case of knowing the exact test.
