import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExampleApp(),
    );
  }
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("CherryToast",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '🍒 🍒',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Text(
              'Cherry Toasts',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
              child: const Text('🍒 Info Cherry Toast'),
              onPressed: () {
                CherryToast.info(
                  title: const Text('User added',style: TextStyle(fontSize: 15),),
                  action: const Text('Display information',style: TextStyle(fontSize: 10)),
                  actionHandler: () {},
                ).show(context);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
              child: const Text('🍒 Error Cherry Toast'),
              onPressed: () {
                CherryToast.error(
                  title: const Text(''),
                  enableIconAnimation: false,
                  displayTitle: false,
                  description: const Text('Invalid account information'),
                  animationType: AnimationType.fromRight,
                  animationDuration: const Duration(milliseconds: 1000),
                  autoDismiss: true,
                ).show(context);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
              child: const Text('🍒 Bottom Cherry Toast'),
              onPressed: () {
                CherryToast(
                  icon: Icons.alarm_add,
                  themeColor: Colors.pink,
                  title: const Text(''),
                  displayTitle: false,
                  description: const Text('A bottom cherry toast example'),
                  toastPosition: Position.bottom,
                  animationDuration: const Duration(milliseconds: 1000),
                  autoDismiss: true,
                ).show(context);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
              child: const Text('🍒 Warning Cherry Toast'),
              onPressed: () {
                CherryToast.warning(
                  title: const Text(''),
                  displayTitle: false,
                  description:
                      const Text('All information may be deleted after this action'),
                  animationType: AnimationType.fromTop,
                  action: const Text('Backup data'),
                  actionHandler: () {},
                ).show(context);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
              child: const Text('🍒 Success Cherry Toast'),
              onPressed: () {
                CherryToast.success(
                  title: const Text('The simplest cherry toast'),
                  borderRadius: 0,
                ).show(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}