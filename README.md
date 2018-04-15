# README #

### This repo is WIP ###

### What is this repository for? ###

* Boiler-plate code generator for Android. The intention is to templatize every bit of code that is otherwise a redundant effort.
* v1

### How do I get set up? ###

*To begin with, make sure Android Studio is closed (you can skip this and continue with the following steps, but Android studio is required to be restarted to see/ use the new templates).* 

*Also make sure to add Recyclerview as a dependency in the Gradle*

# On Mac OSX:

* Clone the repo,
* Copy and paste **MVPActivity** and **Base** to **/Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/**,
* Open Android Studio > File > New
* You should now see options to pick MVP Components and Base files 
* In case of **MVPActivity** set the name according to your feature/ module name,
* That's it! 

# On Windows: 

* Clone the repo,
* Copy and paste **MVPActivity** and **Base** to **{ANDROID_STUDIO_LOCATION}/plugins/android/lib/templates/other/**,
* Open Android Studio > File > New
* You should now see options to pick MVP Components and Base files 
* In case of **MVPActivity** set the name according to your feature/ module name,
* That's it! 

## Caveats - 

* Android Studio tends to delete custom templates (like in our case) while updating the IDE. When this happens, you'll have to copy **MVPActivity** and **Base** again as per the steps above.