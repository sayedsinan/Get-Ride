import 'package:flutter/material.dart';
import 'package:get_ride/view/widget/get_a_ride_container.dart';
class GetRide extends StatelessWidget {

  const GetRide({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20,bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Available Rides",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
      GetARideContainer(startingPoint: "Down town", endPoint: "Tech Park", time: "8:00 AM", date: "Today", seats: "2", amount: "20", review: "2.2", age: "20", name: "Sinan"),
      GetARideContainer(startingPoint: "Down town", endPoint: "Tech Park", time: "8:00 AM", date: "Today", seats: "2", amount: "20", review: "2.2", age: "20", name: "Sinan"),
        ],
      ),
    );
  }
}
