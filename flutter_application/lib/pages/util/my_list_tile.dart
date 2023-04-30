import 'package:flutter/material.dart';

class MylistTile extends StatelessWidget {
  final String iconImagePath;
  final String tileName;
  final String tileSubName;
  const MylistTile(
      {super.key,
      required this.iconImagePath,
      required this.tileName,
      required this.tileSubName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // image
              Container(
                height: 80,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(iconImagePath),
              ),
              // Sizedbox for text
              SizedBox(
                width: 20,
              ),
              // text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tileName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    tileSubName,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          // icon
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
