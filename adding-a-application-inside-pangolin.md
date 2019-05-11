# Adding A Application Inside Pangolin

## Calculator Example

1. add this in window_playground.dart between 18 and 19 line:


`..add(
       color: Colors.green[600],
       child: Calculator(),
     )`

2. also copy the calculator.dart file from dahlia/stem-calculator repo to the pangolin_desktop/lib/

3. and import it at the top of the file:

`import 'calculator.dart';`

3. add this to pubspec.yaml 6th line:

`expressions: ^0.1.2`

then compile it into an apk.
