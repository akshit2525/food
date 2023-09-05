import 'package:flutter/material.dart';
import '../utils/constant.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Taste Buds"),
            titleTextStyle: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold),
            Icon(Icons.food_bank_outlined),,
        ),

            body: Column(
            children: [
            Padding(
            padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.food_bank_outlined),
            // Text(" Taste Buds",
            //     style:
            //         TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      Expanded(
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 200),
            children: food
                .map(
                  (e) =>
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.amber.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Image.asset(
                            "${e['image']}",
                            width: 100,
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Text(
                            e["name"],
                          ),
                          Text(e["price"]),
                        ],
                      ),
                    ),
                  ),
            )
                .toList()),
      ),
      ],
    ),
    drawer: Drawer(
    child: Column(
    children: [
    CircleAvatar(
    radius: 150,
    backgroundImage: AssetImage("assets/image/cococola.png"),
    ),
    ],
    ),
    ),
    )
    );
  }
}
