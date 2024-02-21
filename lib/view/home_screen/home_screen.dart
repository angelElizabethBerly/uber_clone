import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Uber",
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'UberMove'))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    color: Color(0xffe8e8e8),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Icon(Icons.search_sharp),
                    Text(
                      "Where to?",
                      style: TextStyle(fontFamily: "UberMove"),
                    ),
                    Spacer(),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.more_time_outlined),
                        label: Row(
                          children: [
                            Text("Now",
                                style: TextStyle(fontFamily: "UberMove")),
                            Icon(Icons.arrow_drop_down_sharp)
                          ],
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
