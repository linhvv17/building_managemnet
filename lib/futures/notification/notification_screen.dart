import 'package:building_managemnet/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset_paths/image_paths.dart';
import 'notification_detail_screen.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Thông báo"),
        titleTextStyle: TextStyle(
            color: AppColor.secondaryGreen.shade500,
            fontWeight: FontWeight.bold,
            fontSize: 20),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
           Expanded(child: _todayListNotification()),
           Expanded(child: _yesterdayListNotification()),
        ],
      ),
    );
  }

  Widget _todayListNotification() {
    return ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return ItemNotification(
            title: 'Bao tri hang thang',
            iconPath: ImagePaths.icShowMore,
          );
        });
  }

  Widget _yesterdayListNotification() {
    return ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return ItemNotification(
            title: 'Bao tri hang thang',
            iconPath: ImagePaths.icShowMore,
          );
        });
  }

}



class ItemNotification extends StatefulWidget {
  final String title;
  final String iconPath;

  const ItemNotification({super.key, required this.title, required this.iconPath});

  @override
  State<StatefulWidget> createState() => _ItemNotification();
}

class _ItemNotification extends State<ItemNotification> {
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NotificationDetailScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                ImagePaths.icService1,
                width: 42,
                height: 42,
              ),
            ),
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bao tri hang thang",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      Text(
                        "Bao tri be boi",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 13
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '12:02',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 12
                        ),
                      ),
                      Text(
                        ".",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColor.colorMain,
                            fontWeight: FontWeight.bold,
                            fontSize: 40
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
