import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/futures/notification/resident_info_detail_screen.dart';
import 'package:building_managemnet/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset_paths/image_paths.dart';


class ResidentInfoScreen extends StatelessWidget {
  const ResidentInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.colorBackground,
      appBar: AppBar(
        title:  Text(S.current.residentInfoTitleScreen),
        leading: const Icon(Icons.arrow_back_ios),
        titleTextStyle: TextStyle(
            color: AppColor.secondaryGreen.shade500,
            fontWeight: FontWeight.bold,
            fontSize: 20),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                suffixIcon: IconButton(
                  iconSize: 30,
                  icon: const Icon(Icons.search),
                  onPressed: () {
                  },
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.grey, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                border: const OutlineInputBorder(),
                hintText: 'Tim kiem',
              ),

            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("08/05/2023", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12),),
          ),
          Expanded(child: _todayListResidentInfo()),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("07/05/2023", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12),),
          ),
          Expanded(child: _yesterdayListResidentInfo()),
        ],
      ),
    );
  }

  Widget _todayListResidentInfo() {
    return ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return ItemResidentInfo(
            title: 'Bao tri hang thang',
            iconPath: ImagePaths.icShowMore,
          );
        });
  }

  Widget _yesterdayListResidentInfo() {
    return ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return ItemResidentInfo(
            title: 'Bao tri hang thang',
            iconPath: ImagePaths.icShowMore,
          );
        });
  }

}



class ItemResidentInfo extends StatefulWidget {
  final String title;
  final String iconPath;

  const ItemResidentInfo({super.key, required this.title, required this.iconPath});

  @override
  State<StatefulWidget> createState() => _ItemResidentInfo();
}

class _ItemResidentInfo extends State<ItemResidentInfo> {
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ResidentInfoDetailScreen()),
        );
      },
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
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
              ),
            ),
          )
      ),
    );
  }
}
