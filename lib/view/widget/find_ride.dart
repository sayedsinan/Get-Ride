import 'package:flutter/material.dart';
import 'package:get_ride/view/widget/my_button.dart';

class FindRide extends StatelessWidget {
  const FindRide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 50),
          Icon(Icons.car_repair_sharp, size: 100),
          Text(
            "No Rides Availabel yet",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Text(
            "Start sharing your daily commute and earn money",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 20),
          MyButton(
            height: 50,
            width: 200,
            borderRadius: 8,
            buttonColor: Colors.blue,
            textColor: Colors.white,
            text: "+ Offers Your First Ride ",
            style: TextStyle(),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
