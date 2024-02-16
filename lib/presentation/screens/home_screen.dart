import 'package:flutter/material.dart';
import 'package:flutter_basics/application/theme_service.dart';
import 'package:flutter_basics/contact_card/presentation/widgets/person_card.dart';
import 'package:flutter_basics/presentation/widgets/container_center_padding-example.dart';
import 'package:flutter_basics/presentation/widgets/custom_button.dart';
import 'package:flutter_basics/presentation/widgets/gesture_button.dart';
import 'package:flutter_basics/presentation/widgets/layout_builder_example.dart';
import 'package:flutter_basics/presentation/widgets/row_expanded_example.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basics'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(8)),
              height: size.height * 0.35,
              width: size.width - size.width * 0.1,
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Router',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Provider.of<ThemeService>(context, listen: false)
                              .toggleTheme();
                        },
                        icon: Provider.of<ThemeService>(context).isDarkModeOn
                            ? const Icon(Icons.dark_mode)
                            : const Icon(Icons.light_mode),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.05,
                          width: size.width * 0.67,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'counter');
                            },
                            child: const Text('Go to Counter'),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                          width: size.width * 0.67,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'listview');
                            },
                            child: const Text('Go to ListExample'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const RowExpandedExample(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                height: 56,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Center Text!',
                style: TextStyle(fontSize: 36),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ContainerCenterPaddingExample(),
            const SizedBox(
              height: 20,
            ),
            const LayoutBuilderExample(),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  debugPrint('Button 1 Pressed!');
                },
                child: Text(
                  'Text Button',
                  // style: TextStyle(
                  //   fontSize: 20,
                  //   color: Colors.white,
                  //   fontWeight: FontWeight.w500,
                  // ),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  // color: Colors.white,
                )),
            Switch(
                value: false,
                onChanged: (value) {
                  debugPrint('$value');
                }),
            const CustomButton(
              buttonHeight: 50.0,
              buttonWidth: 50.0,
              infoMessage: 'CustomButton 1 pressed',
              buttonIcon: Icons.holiday_village,
              buttonIconColor: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            const GestureButton(
              infoMessage: 'Gesture Button 1 Pressed',
              buttonText: 'Gesture Button 1',
            ),
            const SizedBox(
              height: 20,
            ),
            const PersonCard(
                name: 'Imran',
                age: '24',
                country: 'India',
                job: 'Flutter Developer',
                imageUrl:
                    'https://media.licdn.com/dms/image/D4D03AQFOQhgIH5_5UQ/profile-displayphoto-shrink_200_200/0/1691909354816?e=2147483647&v=beta&t=sWXmIN7RpPPAz5RFOqJqVY50vEi3_CaXtqrYe11wL-I'),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
