import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool fullview = true;

  Widget FirstView() {
    return Container(
        key: Key('1'),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.purple, borderRadius: BorderRadius.circular(23)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: CircleAvatar(
                maxRadius: 55,
                minRadius: 35,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=600'),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    fullview = !fullview;
                  });
                },
                child: Text(
                  "View",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ));
  }

  Widget SecondView() {
    return Container(
        key: Key('2'),
        width: 320,
        height: 400,
        decoration: BoxDecoration(
            color: Colors.purple, borderRadius: BorderRadius.circular(23)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: CircleAvatar(
                maxRadius: 55,
                minRadius: 35,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=600'),
              ),
            ),
            Text(
              "Name : Arun ",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Age:32",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Email:unknown@gmail.com",
              style: TextStyle(color: Colors.white),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Switcher"),
        centerTitle: true,
      ),
      body: Center(
          child: AnimatedSwitcher(
        // reverseDuration: Duration(seconds: 2),
        duration: Duration(milliseconds: 1000),
        child: fullview ? FirstView() : SecondView(),
        // transitionBuilder: (child, animation) {
        //   return ScaleTransition(scale: animation);
        // },
      )),
    );
  }
}
