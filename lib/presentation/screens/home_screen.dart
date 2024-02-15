import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/widgets/container_center_padding-example.dart';
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
          ],
        ),
      ),
    );
  }
}
