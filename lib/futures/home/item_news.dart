import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNews extends StatelessWidget{
  const ItemNews({super.key, required this.title, required this.thumbnailPath, required this.description});

  final String title;
  final String thumbnailPath;
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
        child: Row(
          children: [
            Image.asset(thumbnailPath),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      title,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}