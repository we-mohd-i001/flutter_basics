import 'package:flutter/material.dart';
import 'package:flutter_basics/application/theme_service.dart';
import 'package:flutter_basics/theme/widgets/moon.dart';
import 'package:flutter_basics/theme/widgets/sun.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 500,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: themeService.isDarkModeOn
                        ? Colors.black87
                        : Colors.white60,
                    offset: const Offset(0, 1),
                    blurRadius: 12,
                    spreadRadius: 0.5),
              ],
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                  colors: themeService.isDarkModeOn == false
                      ? [Colors.deepPurple, Colors.lightBlueAccent]
                      : [Colors.redAccent, Colors.orange],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 400),
                  top: !themeService.isDarkModeOn ? 100 : 150,
                  right: !themeService.isDarkModeOn ? 100 : -30,
                  child: AnimatedOpacity(
                      opacity: themeService.isDarkModeOn ? 0 : 1,
                      duration: const Duration(milliseconds: 456),
                    child: const Moon(),
                  ),
                ),
                AnimatedPadding(
                  duration: Duration(
                      milliseconds: themeService.isDarkModeOn ? 456 : 300),
                  padding: EdgeInsets.only(
                      top: !themeService.isDarkModeOn ? 200 : 100),
                  child: const Center(
                    child: Sun(),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: themeService.isDarkModeOn
                            ? Colors.blueGrey
                            : Colors.grey.shade700,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          themeService.isDarkModeOn
                              ? 'Too Light?'
                              : 'Too Dark?',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          themeService.isDarkModeOn
                              ? 'Let it be night!'
                              : 'Let the sun rise!',
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Switch(
                            value: !themeService.isDarkModeOn,
                            onChanged: (_) {
                              themeService.toggleTheme();
                            })
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ));
    });
  }
}
