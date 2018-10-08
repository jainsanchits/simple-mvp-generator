# README #

### Introduction and motivation ###

* This is a customised Android Studio template for developers who want to take their first step moving away from non-architectural way of coding. This template automatically creates an Activity/ Fragment using the passive-view MVP pattern. It will also act as a helper and effort saver.

### How to set up? ###

* Add the base depenency library to your app level gradle file (only 3 KB in size) - 
**implementation 'com.uberfables.library:simple_mvp_generator:1.0.0'**

* For the templates to show-up in Android Studio's menu list, make sure Android Studio is closed.

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
5. Your view is now ready and linked to it's model, view and presenter!

## Extra features -

* The onDestroy() life cycle method triggers a function to attempt and cancel any ongoing network requests. This is useful to avoid memory leaks after view death.
* Contains bare-bone functions to make an API call, notifying data set changes and dismissing the progress indicator.

## TODO -

* Add comments as built-in tutorials.
* Auto-register all generated Activities in the manifest.
* Auto-create the layout XML.

## Caveats - 

* Android Studio deletes custom templates during each update. So when this happens, setup **MVPActivity**, **MVPFragment** need to be copied again as per the steps above.
