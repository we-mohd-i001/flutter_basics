import 'package:flutter/material.dart';
import 'package:flutter_basics/application/theme_service.dart';
import 'package:flutter_basics/presentation/counter/counter_screen.dart';
import 'package:flutter_basics/presentation/list/list_example.dart';
import 'package:flutter_basics/presentation/rootnavigation/root_navigation_bar.dart';
import 'package:flutter_basics/presentation/screens/home_screen.dart';
import 'package:flutter_basics/theme/color_schemes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => ThemeService(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder:(context, themeService, child){
      return MaterialApp(
        title: 'Flutter Demo',
        theme: themeService.isDarkModeOn
            ? ThemeData(useMaterial3: true, colorScheme: lightColorScheme)
            : ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        // routes: {
        //   '/': (context) => const HomeScreen(),
        //   'counter': (context) => const CounterScreen(),
        //   'listview': (context) => const ListExample(),
        // },
        home: const RootNavigationBar(),
      );
    });
  }
}
