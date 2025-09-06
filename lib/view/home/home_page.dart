import 'package:flutter/material.dart';
import 'package:get_ride/view/widget/custom_toggle_button.dart';
import 'package:get_ride/view/widget/drop_down.dart';
import 'package:get_ride/view/widget/find_ride.dart';
import 'package:get_ride/view/widget/get_a_ride.dart';
import 'package:get_ride/view/widget/rider_option_container.dart';
import 'package:get_ride/view/widget/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> genderOptions = [
      'Male',
      'Female',
    ];
    return Scaffold(
      backgroundColor: Color(0xFFF9FAFB),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 10,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RiderOptionContainer(
                  iconData: Icons.add,
                  subTitile: "Share your journey",
                  title: "Offer ride",
                  color: Colors.blue,
                ),
                SizedBox(width: 10),
                RiderOptionContainer(
                  iconData: Icons.search,
                  subTitile: "Join Someone's trip",
                  title: "Find ride",
                  color: Colors.green,
                ),
              ],
            ),
            SearchBarWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomDropdown(
                    items: genderOptions,
                    hintText: "Gender",
                    width: 120,
                  ),
                  CustomDropdown(
                    items: genderOptions,
                    hintText: "Area",
                    width: 120,
                  ),
                  CustomDropdown(
                    items: genderOptions,
                    hintText: "Time",
                    width: 120,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomToggleButton(
                  options: const ["Get Rides", "Find Rides"],
                  pages: const [GetRide(), FindRide()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
