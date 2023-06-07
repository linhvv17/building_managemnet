import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/futures/auth/acc_processing_screen.dart';
import 'package:building_managemnet/futures/auth/login_screen.dart';
import 'package:building_managemnet/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset_paths/image_paths.dart';

class StopServiceScreen extends StatelessWidget {
  const StopServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Dừng gửi xe"),
        titleTextStyle: TextStyle(
            color: AppColor.secondaryGreen.shade500,
            fontWeight: FontWeight.bold,
            fontSize: 20),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 80.0, 20.0, 0.0),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                    child: Text(
                      "Biển kiểm soát",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "30F-123.654",
                        hintStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500),
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.5),
                        ),
                        filled: true,
                        fillColor: Colors.white),
                  ),


                  //description
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                    child: Text(
                      "Bắt đầu từ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "06/2022",
                        hintStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500),
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.5),
                        ),
                        filled: true,
                        fillColor: Colors.white),
                  ),



                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                    child: Text(
                      "Ghi chú",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500),
                    ),
                  ),
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                        hintText: "Lorem Ipsum is simply dummy text of the printingand typesetting industry. Lorem Ipsum has been theindustry's standard dummy text ever since ",
                        hintStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500),
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                          BorderSide(color: Colors.white, width: 1.5),
                        ),
                        filled: true,
                        fillColor: Colors.white),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                      child: Text(
                        "142/1000 Ký tự",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500),
                      ),
                    ),
                  ),

                ],
              ),
              //bottom -2
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xffB6BB81), Color(0xff009069)],
                                stops: [0.0, 1.0],
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 54,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                // elevation: MaterialStateProperty.all(3),
                                shadowColor: MaterialStateProperty.all(
                                    Colors.transparent),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AccProcessingScreen()),
                                );
                              },
                              child: const Text(
                                "Xác nhận",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
