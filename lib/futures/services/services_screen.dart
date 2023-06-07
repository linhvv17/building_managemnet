import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/asset_paths/image_paths.dart';
import 'package:building_managemnet/futures/payment/repair_service_screen.dart';
import 'package:building_managemnet/futures/services/plugin_detail_screen.dart';
import 'package:building_managemnet/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../data/service_topup.dart';


var mockListServiceTopUp = [
  ServiceTopUp(
      iconPath: ImagePaths.icService1,
      name: 'Phí dịch vụ',
  ),
  ServiceTopUp(
      iconPath: ImagePaths.icService2,
      name: 'Điện',

  ),
  ServiceTopUp(
    iconPath: ImagePaths.icService3,
    name: 'Nước',
  ),

];

var mockListServiceTopUpOther = [
  ServiceTopUp(
    iconPath: ImagePaths.icService4,
    name: 'Gửi xe',
  ),
  ServiceTopUp(
    iconPath: ImagePaths.icService5,
    name: 'Internet',

  ),
  ServiceTopUp(
    iconPath: ImagePaths.icService6,
    name: 'Truyền hình',
  ),
  ServiceTopUp(
    iconPath: ImagePaths.icService7,
    name: 'Thẻ cư dân',
  ),
  ServiceTopUp(
    iconPath: ImagePaths.icService8,
    name: 'Sửa chữa',
  ),
  ServiceTopUp(
    iconPath: ImagePaths.icService9,
    name: 'Thuê mặt bằng',
  ),
];



class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.colorBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Dịch vụ"),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: AppColor.secondaryGreen.shade500,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //building services
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S.current.serviceBuilding,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            GridView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: mockListServiceTopUp.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  ServiceTopUp serviceTopUp = mockListServiceTopUp[index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 100,
                      child: ItemService(
                        thumbnailPath: serviceTopUp.iconPath,
                        name: serviceTopUp.name,
                      ),
                    ),
                  );
                }),

            //other services
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 10.0, bottom: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S.current.serviceOther,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            GridView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  ServiceTopUp serviceTopUp = mockListServiceTopUpOther[index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      // width: 100,
                      child: InkWell(
                        onTap: (){
                          if(serviceTopUp.name == "Sửa chữa"){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RepairServiceScreen()),
                            );
                          } else{

                          }
                        },
                        child: ItemService(
                          thumbnailPath: serviceTopUp.iconPath,
                          name: serviceTopUp.name,
                        ),
                      ),
                    ),
                  );
                }),
          //
          //   //plugin
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 10.0, bottom: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S.current.servicePlugin,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            GridView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PluginDetailScreen()),
                        );
                      },
                      child: ItemPlugin(
                        thumbnailPath: ImagePaths.pluginThumbnail,
                        name: "Be boi bon mua",
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

class ItemService extends StatelessWidget {
  const ItemService({
    super.key,
    required this.thumbnailPath,
    required this.name,
  });

  final String thumbnailPath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              thumbnailPath,
              width: 50,
              height: 50,
            ),
            Text(
              name,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}


class ItemPlugin extends StatelessWidget {
  const ItemPlugin({
    super.key,
    required this.thumbnailPath,
    required this.name,
  });

  final String thumbnailPath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.3,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              thumbnailPath,
            ),
            Text(
              name,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
