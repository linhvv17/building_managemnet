import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/futures/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset_paths/image_paths.dart';
import '../../generated/l10n.dart';
import 'add_info_screen.dart';

class AccProcessingScreen extends StatelessWidget {
  const AccProcessingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.grey.shade200,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //image top -1
            Expanded(
              flex: 2,
              child: Center(
                child: SvgPicture.asset(ImagePaths.logoFull),
              ),
            ),
            //text -3
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).processing,
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey.shade500
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                                child: SvgPicture.asset(ImagePaths.logo),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    S.of(context).name,
                                    textAlign: TextAlign.start,
                                    style:  TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey.shade500
                                    ),
                                  ),
                                  Text(
                                    S.of(context).defaultNumber,
                                    textAlign: TextAlign.start,
                                    style:  const TextStyle(
                                        fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Text(
                        S.of(context).processingDescription,
                        textAlign: TextAlign.center,
                        style:  const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black
                        ),
                      ),

                    ],
                  ),
                )),

            //bottom -2
            Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(S.current.support),
                    SvgPicture.asset(ImagePaths.logo),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                          },
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(AppColor.colorMain),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor: MaterialStateProperty.all(Colors.white),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(color: Colors.green)),
                            minimumSize: MaterialStateProperty.all(Size(
                                MediaQuery.of(context).size.width * 0.9, 54)),
                          ),
                          child: Text(
                            S.of(context).backToLogin,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),)
          ],
        ),
      ),
    );
  }
}
