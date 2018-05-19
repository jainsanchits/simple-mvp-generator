# README #

### What is this repository for? ###

* This is an MVP boiler-plate code generator for Android. The intention is to templatize every bit of code that is otherwise a redundant effort.
* v1

### How to set up? ###

*To begin with, make sure Android Studio is closed (you can skip this and continue with the following steps, but Android studio is required to be restarted to see/ use the new templates).* 

*Also make sure to add Recyclerview as a dependency in Gradle*

### Motivation ###

* This generator is compatible with https://github.com/sockeqwe/AdapterDelegates - It's an immensely useful pattern (for RecyclerViews) by Hannes Dorfmann. It's not rigid though, the template will also work with any variant of MVP.

# On Mac OSX:

* Clone the repo,
* Copy and paste **MVPActivity**, **MVPFragment** and **Base** folders to **/Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/**,
* Open Android Studio > File > New
* You should now see options to pick MVP Components and Base files 
* In case of **MVPActivity** and **MVPFragment** set the name according to your feature/ module name,
* That's it! 

# On Windows: 

* Clone the repo,
* Copy and paste **MVPActivity**, **MVPFragment** and **Base** folders to **{ANDROID_STUDIO_LOCATION}/plugins/android/lib/templates/other/**,
* Open Android Studio > File > New
* You should now see options to pick MVP Components and Base files 
* In case of  **MVPActivity** and **MVPFragment** set the name according to your feature/ module name,
* That's it!

## Extra features -

* The onDestroy() life cycle method triggers a function to attempt and cancel any ongoing network requests. This is useful to prevent memory leaks after view death.
* Contains bare-bone functions to make an API call, notifying data set changes and dismissing the progress indicator.
* While generating, mention the feature name so a dedicated package is created with all class names pre-prepended with the same feature name.

## What's upcoming -

* Auto-register all generated Activities in the manifest.
* Auto-create the layout XML.

## Caveats - 

* Android Studio tends to delete custom templates (like in our case) during an update. When this happens, you'll need to copy **MVPActivity**, **MVPFragment** and **Base** again as per the steps above.
