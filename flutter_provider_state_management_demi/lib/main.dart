import 'package:flutter/material.dart';
import 'package:flutter_provider_state_management_demi/application_color.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

/// The main application widget.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (BuildContext context) {
          return ApplicationColor();
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,

            /// A widget that displays the title of the application using the `Consumer` widget.
            ///
            /// The `Consumer` widget listens to changes in the `ApplicationColor` and rebuilds
            /// its child widget whenever the color changes. It takes a `builder` function
            /// that receives the `context`, `applicationColor`, and `_` as parameters.
            /// The `applicationColor` parameter represents the current color value from the
            /// `ApplicationColor` provider.
            ///
            /// The `Text` widget is used to display the title "Provider State Management"
            /// with the color set to the `applicationColor.color` value.
            ///
            /// Example usage:
            ///
            /// ```dart
            /// title: Consumer<ApplicationColor>(
            ///   builder: (context, applicationColor, _) {
            ///     return Text(
            ///       "Provider State Management",
            ///       style: TextStyle(color: applicationColor.color),
            ///     );
            ///   },
            /// ),
            /// ```
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColor>(
                  builder: (BuildContext context, ApplicationColor value,
                      Widget? child) {
                    return AnimatedContainer(
                      margin: EdgeInsets.all(5),
                      width: 200,
                      height: 200,
                      color: value.color,
                      duration: Duration(microseconds: 500),
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(margin: EdgeInsets.all(10), child: Text("AB")),
                    Consumer<ApplicationColor>(
                      builder: (BuildContext context, ApplicationColor value,
                          Widget? child) {
                        return Switch(
                          value: value.isLightBlue,
                          onChanged: (newValue) {
                            value.isLightBlue = newValue;
                          },
                        );
                      },
                    ),
                    Container(margin: EdgeInsets.all(10), child: Text("LB"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
