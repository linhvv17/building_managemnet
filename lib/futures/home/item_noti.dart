import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNotification extends StatelessWidget{
  const ItemNotification({super.key, required this.title, required this.time, required this.description});

  final String title;
  final String time;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    title,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                    time,
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.normal, color: Colors.grey),
                ),
              ],
            ),
            Text(
                description,
                style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

}