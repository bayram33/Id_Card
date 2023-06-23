import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int age = 23;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text(
          "ID CARD",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1408265670521917441/12q0mSTo_400x400.jpg"),
              radius: 50,
            ),
            const Divider(
              height: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Name",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            Text(
              "Bayram",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Surname",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            Text(
              "Salman",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Age",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            Text(
              "$age",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.email_rounded, color: Colors.white),
                SizedBox(width: 20),
                Text(
                  "s.bayram.1037@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                age = age - 1;
              });
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                age=age+1;
              });
            },
            child: const Icon(Icons.plus_one),
          )
        ],
      ),
    );
  }
}
