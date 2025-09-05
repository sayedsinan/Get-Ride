import 'package:flutter/material.dart';
import 'package:get_ride/view/widget/rider_option_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FAFB)
,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Good morning",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Ready For Commute?",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RiderOptionContainer(iconData: Icons.add, subTitile: "Share your journey", title: "Offer ride"),
              SizedBox(width: 10,),
                 Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Icon(Icons.plus_one),
                    Text("Offer ride"),
                    Text("Share your journey"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
