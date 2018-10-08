# README #

### Introduction ###

* This is a customised Android Studio template for developers who like to take their first step moving away from non-architectural way of coding, i.e having unmanageable and harder-to-test god-objects everywhere. This template automatically creates an Activity/ Fragment using the passive-view MVP pattern.

### How to set up? ###

* For the templates to show-up in the menu list, make sure Android Studio is closed.* 
* Add the base depenencies to your app level gradle file (3 KB in size) - [BR]
**implementation 'com.uberfables.library:simple_mvp_generator:1.0.0'**

# On Mac OSX:

1. Clone the repo,
2. Copy and paste **MVPActivity**, **MVPFragment** folders into **/Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/**.

# On Windows: 

1. Clone the repo,
2. Copy and paste **MVPActivity**, **MVPFragment** folders into **{ANDROID_STUDIO_LOCATION}/plugins/android/lib/templates/other/**.

## How to use ##

1. Android Studio > File > New
2. Pick Simple MVP Generator
3. Select "MVP with Activity/ Fragment as a view"
4. Set the name of the app-feature and hit finish,
5. Your view is now ready, liked to it's model, view and presenter!

## Extra features -

* The onDestroy() life cycle method triggers a function to attempt and cancel any ongoing network requests. This is useful to avoid memory leaks after view death.
* Contains bare-bone functions to make an API call, notifying data set changes and dismissing the progress indicator.

## TODO -

* Auto-register all generated Activities in the manifest.
* Auto-create the layout XML.

## Caveats - 

* Android Studio deletes custom templates during an update (templates like this one that did not come with the stock installation). So when you update, setup **MVPActivity**, **MVPFragment** as per the steps above.
