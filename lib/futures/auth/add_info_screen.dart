import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/futures/auth/acc_processing_screen.dart';
import 'package:building_managemnet/futures/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset_paths/image_paths.dart';
import '../../generated/l10n.dart';

class AddInfoScreen extends StatelessWidget {
  const
  AddInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0,80.0,20.0,0.0),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //project
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,5.0),
                    child: Text(
                      S.of(context).project,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold,color: Colors.grey.shade500),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: S.current.hintProject,
                        hintStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.grey.shade500),
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                          BorderSide(color: Colors.white, width: 1.5),
                        ),
                        filled: true,
                        fillColor: Colors.white
                    ),
                  ),

                  //building
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,5.0),
                    child: Text(
                      S.of(context).build,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold,color: Colors.grey.shade500),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: S.current.hintBuild,
                        hintStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.grey.shade500),
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                          BorderSide(color: Colors.white, width: 1.5),
                        ),
                        filled: true,
                        fillColor: Colors.white
                    ),
                  ),

                  //room
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,5.0),
                    child: Text(
                      S.of(context).room,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold,color: Colors.grey.shade500),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: S.current.hintRoom,
                        hintStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.grey.shade500),
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                          BorderSide(color: Colors.white, width: 1.5),
                        ),
                        filled: true,
                        fillColor: Colors.white
                    ),
                  ),

                  //fullname
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,5.0),
                    child: Text(
                      S.of(context).fullName,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold,color: Colors.grey.shade500),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: S.current.hintFullName,
                        hintStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.grey.shade500),
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                          BorderSide(color: Colors.white, width: 1.5),
                        ),
                        filled: true,
                        fillColor: Colors.white
                    ),
                  ),

                  //email
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,5.0),
                    child: Text(
                      S.of(context).email,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold,color: Colors.grey.shade500),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: S.current.email,
                        hintStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.grey.shade500),
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                          BorderSide(color: Colors.white, width: 1.5),
                        ),
                        filled: true,
                        fillColor: Colors.white
                    ),
                  ),

                  //add image
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //font card
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,5.0),
                            child: Text(
                              S.of(context).fontCard,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold,color: Colors.grey.shade500),
                            ),
                          ),
                          SvgPicture.asset(ImagePaths.imgDefault),
                        ],
                      ),

                      //back card
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,5.0),
                            child: Text(
                              S.of(context).backCard,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold,color: Colors.grey.shade500),
                            ),
                          ),
                          SvgPicture.asset(ImagePaths.imgDefault),
                        ],
                      )
                    ],
                  )
                  
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
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.transparent),
                                // elevation: MaterialStateProperty.all(3),
                                shadowColor:
                                    MaterialStateProperty.all(Colors.transparent),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const AccProcessingScreen()),
                                );
                              },
                              child: Text(
                                S.of(context).register,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text(
                          S.of(context).policyAddInfo_1,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "${S.of(context).policyAddInfo_2},",
                          textAlign: TextAlign.center,
                          style:  TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold, color: AppColor.secondaryGreen.shade400),
                        ),
                      ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text(
                          S.of(context).policyAddInfo_3,
                          textAlign: TextAlign.center,
                          style:   TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold, color: AppColor.secondaryGreen.shade400),
                        ),
                          Text(
                            S.of(context).policyAddInfo_4,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal, ),
                          ),
                        Text(
                          S.of(context).policyAddInfo_5,
                          textAlign: TextAlign.center,
                          style:   TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold, color: AppColor.secondaryGreen.shade400),
                        ),
                          Text(
                            S.of(context).policyAddInfo_6,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal, ),
                          ),

                      ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          S.of(context).policyAddInfo_7,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal, ),
                        ),
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
