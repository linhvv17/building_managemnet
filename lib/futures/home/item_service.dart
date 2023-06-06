import 'package:building_managemnet/asset_paths/image_paths.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemService extends StatelessWidget{
  const ItemService({super.key,  required this.thumbnailPath, required this.description});
  final String thumbnailPath;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.4,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(thumbnailPath),
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