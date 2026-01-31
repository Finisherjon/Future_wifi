// import 'package:flutter/material.dart';
// import 'package:future_wifi_code/screens/intro_page_screen.dart';
// import 'bottom_bar.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await GoogleFonts.pendingFonts([GoogleFonts.ubuntu()]);
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         brightness: Brightness.light,
//         scaffoldBackgroundColor: Colors.white,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         textTheme: GoogleFonts.ubuntuTextTheme(
//           ThemeData(brightness: Brightness.light).textTheme,
//         ).apply(bodyColor: Colors.black, displayColor: Colors.black),
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//         scaffoldBackgroundColor: Colors.black12,
//         textTheme: GoogleFonts.ubuntuTextTheme(
//           ThemeData(brightness: Brightness.dark).textTheme,
//         ).apply(bodyColor: Colors.white, displayColor: Colors.white),
//       ),
//       themeMode: ThemeMode.system,
//       home: IntroPageScreen(),
//     );
//   }
// }

//googleFonts:Ubuntu
//googleFonts:Nunito
//googleFonts:Sora
//googleFonts:Play

// import 'package:flutter/material.dart';
// import 'package:future_wifi_code/screens/intro_page_screen.dart';
// import 'bottom_bar.dart';
//
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         brightness: Brightness.light,
//         scaffoldBackgroundColor: Colors.white,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         fontFamily: 'Ubuntu', // Global Ubuntu font (offline via assets)
//         textTheme: ThemeData.light().textTheme.apply(
//           bodyColor: Colors.black,
//           displayColor: Colors.black,
//         ),
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//         scaffoldBackgroundColor: Colors.black12,
//         fontFamily: 'Ubuntu', // Global Ubuntu font (offline via assets)
//         textTheme: ThemeData.dark().textTheme.apply(
//           bodyColor: Colors.white,
//           displayColor: Colors.white,
//         ),
//       ),
//       themeMode: ThemeMode.system,
//       home: IntroPageScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:future_wifi_code/screens/intro_page_screen.dart';
import 'package:future_wifi_code/screens/login_screen.dart';
import 'bottom_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Ubuntu',
        textTheme: ThemeData.light().textTheme.apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black12,
        fontFamily: 'Ubuntu',
        textTheme: ThemeData.dark().textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      themeMode: ThemeMode.dark,
      home: IntroPageScreen(),
    );
  }
}
