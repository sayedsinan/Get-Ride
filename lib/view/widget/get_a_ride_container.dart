import 'package:flutter/material.dart';
import 'package:get_ride/view/widget/my_button.dart';

class GetARideContainer extends StatelessWidget {
  final String startingPoint;
  final String endPoint;
  final String time;
  final String date;
  final String seats;
  final String amount;
  final String review;
  final String age;
  final String name;
  const GetARideContainer({
    super.key,
    required this.startingPoint,
    required this.endPoint,
    required this.time,
    required this.date,
    required this.seats,
    required this.amount,
    required this.review,
    required this.age,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children:  [
                  Icon(Icons.location_on, color: Colors.grey, size: 18),
                  SizedBox(width: 4),
                  Text(
                  startingPoint,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_right_alt, size: 18),
                  SizedBox(width: 4),
                  Text(
                    endPoint,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
               Text(
                "\$$amount",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.access_time, size: 16, color: Colors.grey),
              const SizedBox(width: 4),
               Text(time),
              const SizedBox(width: 16),
              const Icon(Icons.event_seat, size: 16, color: Colors.grey),
              const SizedBox(width: 4),
               Text("$seats seats"),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:  Text(
                  date,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(radius: 20, backgroundColor: Colors.grey),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children:  [
                          Text(
                            name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(Icons.female, color: Colors.pink, size: 16),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children:  [
                          Icon(Icons.star, color: Colors.amber, size: 14),
                          SizedBox(width: 2),
                          Text(
                            "$review · $age years",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              MyButton(
                height: 50,
                width: 100,
                borderRadius: 8,
                buttonColor: Colors.blue,
                textColor: Colors.white,
                text: "Book Now",
                style: TextStyle(),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
