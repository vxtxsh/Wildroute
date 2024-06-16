// import 'package:flutter/material.dart';
// import 'package:wild_route/screens/home_screen.dart';

// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Wild Route',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Color(0xFF3EBACE),
//         colorScheme: ColorScheme.fromSwatch().copyWith(
//           primary: Color(0xFF3EBACE),
//           secondary: Color(0xFFD8ECF1),
//         ),
//         scaffoldBackgroundColor: Color(0xFFF3F5F7),
//       ),
//       home: HomeScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wild_route/Forms/question.dart';
import 'package:wild_route/Forms/suggestion.dart';
import 'screens/home_screen.dart';
import 'rewards/rewards_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RewardsProvider(),
      child: MaterialApp(
        title: 'Wildroute',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFF3EBACE),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF3EBACE),
          secondary: Color(0xFFD8ECF1),
        ),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/questionnaire': (context) => QuestionnairePage(),
          '/recommendation': (context) => RecommendationPage(),
        },
      ),
    );
  }
}


