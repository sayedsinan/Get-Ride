import 'package:flutter/material.dart';

class RiderOptionContainer extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subTitile;
  final Color color;
  const RiderOptionContainer({
    super.key,
    required this.iconData,
    required this.subTitile,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 180,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(5),
        
      ),
      child: Column(
        children: [
          Icon(iconData,color: color,size: 50,),
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            subTitile,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
