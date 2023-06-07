import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/futures/auth/acc_processing_screen.dart';
import 'package:building_managemnet/futures/auth/login_screen.dart';
import 'package:building_managemnet/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset_paths/image_paths.dart';

class RegisterNewCarScreen extends StatelessWidget {
  const RegisterNewCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Đăng ký gửi xe"),
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
                      "Loại xe",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Ô tô",
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



                  //add image
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                    child: Text(
                      "Ảnh đăng ký xe",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //font card
                          Image.asset(ImagePaths.reportThumbnail),

                          //back card
                          SvgPicture.asset(ImagePaths.imgDefault)
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                      child: Text(
                        "Can upload up to 4 Images",
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
