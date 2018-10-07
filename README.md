# README #

### What is this for? ###

* This is a custom Android Studio template that creates an Activity or Fragment using a passive MVP pattern.
* v1.1

### Motivation ###

It's especially made for developers who wish to get started with MVP and creating more organised and testable code.

### How to set up? ###

*To begin with, make sure Android Studio is closed.* 

# On Mac OSX:

1. Clone the repo,
2. Pick java or a kotlin folder as per your project requirement, copy and paste **MVPActivity**, **MVPFragment** and **Base** folders into **/Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/**.

# On Windows: 

1. Clone the repo,
2. Pick java or a kotlin folder as per your project requirement, copy and paste **MVPActivity**, **MVPFragment** and **Base** folders into **{ANDROID_STUDIO_LOCATION}/plugins/android/lib/templates/other/**.

## How to use ##

1. Open Android Studio > File > New
2. Pick Simple MVP Generator
3. Select "Base dependencies" (once per-project) and finish. This will generate all necessary files for Simple MVP Generator to work.
4. As a final step, repeat step 4 and select "MVP with Activity/ Fragment as a view"
5. Set the name of the app-feature and hit finish,
6. Your Activity/ Fragment is now ready with it's model, view and presenter classes!

## Extra features -

* The onDestroy() life cycle method triggers a function to attempt and cancel any ongoing network requests. This is useful to avoid memory leaks after view death.
* Contains bare-bone functions to make an API call, notifying data set changes and dismissing the progress indicator..

## TODO -

* Auto-register all generated Activities in the manifest.
* Auto-create the layout XML.

## Caveats - 

* Android Studio deletes custom templates (like this one) during an update. When you update studio, you'll have  to copy-paste **MVPActivity**, **MVPFragment** and **Base** again as per the steps above.
