import 'package:app_counter_mvc/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Arquitetura-MVC"),
      ),
      body: Center(
        child: Text("My count is ${controller.data.value}"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.increment();
            setState(() {});
          },
          child: const Icon(Icons.add)),
    );
  }
}
