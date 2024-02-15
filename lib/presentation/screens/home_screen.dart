import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/widgets/container_center_padding-example.dart';
import 'package:flutter_basics/presentation/widgets/custom_button.dart';
import 'package:flutter_basics/presentation/widgets/gesture_button.dart';
import 'package:flutter_basics/presentation/widgets/layout_builder_example.dart';
import 'package:flutter_basics/presentation/widgets/row_expanded_example.dart';

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
            const RowExpandedExample(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 56,
                width: 200,
                color: Colors.lightBlue,
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
            }, child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Text Button',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )),
            IconButton(onPressed: (){}, icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red
              ),
              child: const Icon(Icons.play_arrow, color: Colors.white,),
            )),
            Switch(value: false, onChanged: (value) {

              print (value);
            }),
            const CustomButton(
              buttonHeight: 50.0,
              buttonWidth: 50.0,
              infoMessage: 'CustomButton 1 pressed',
              buttonIcon: Icons.holiday_village,
              buttonIconColor: Colors.white,),
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
          ],
        ),
      ),
    );
  }
}
