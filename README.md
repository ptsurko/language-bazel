# Bazel language support for atom.

Adds syntax highlighting to Google's Bazel language from [bazel.io](https://bazel.io).

![A screenshot of highlighted soy](https://raw.githubusercontent.com/ptsurko/language-bazel/master/build-screenshot.png)

## Features
- Syntax Highlighting
- Snippets

## Snippets
```
Java:
jb  ->  java_binary
jl  ->  java_library
jt  ->  java_test
ji  ->  java_import
jp  ->  java_plugin

Android:
ab  ->  android_binary
al  ->  android_library

Python:
pb  ->  py_binary
pl  ->  py_library
pt  ->  py_test

C / C++:
cb  ->  cc_binary
cl  ->  cc_library
ct  ->  cc_test

Shell:
sb  ->  sh_binary
sl  ->  sh_library
st  ->  sh_test

General:
gr  ->  genrule
fg  ->  filegroup
ts  ->  test_suite
```

## Changelog
### 0.2.1 - 03-09-2015
* Added more snippets for java/android/shell rules

### 0.2.0 - 26-08-2015
* Added snippets for java/c++/python rules

### 0.1.0 - 26-08-2015
* Added syntax highlighting for BUILD files

Contributions are greatly appreciated. Please fork this repository and open a
pull request to add snippets, make grammar tweaks, etc.
