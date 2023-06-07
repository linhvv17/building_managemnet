import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/futures/auth/otp_screen.dart';
import 'package:building_managemnet/futures/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset_paths/image_paths.dart';
import '../../dashborad/dashboard_screen.dart';
import '../../generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.grey.shade200,
        child: Column(
          children: [
            //image top -1
            Expanded(
              flex: 1,
              child: Center(
                child: SvgPicture.asset(ImagePaths.logoFull),
              ),
            ),
            //text -3
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          S.of(context).welcome,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),

                      //number phone
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Text(
                          S.of(context).number,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade500),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: S.current.defaultNumber,
                          hintStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade500),
                          border: const OutlineInputBorder(),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.5),
                          ),
                        ),
                      ),

                      //password
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        child: Text(
                          S.of(context).password,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade500),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: S.current.hidePassword,
                            hintStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500),
                            border: const OutlineInputBorder(),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.5),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.5),
                            ),
                            suffixIcon:
                                const Icon(Icons.remove_red_eye_outlined)),
                        obscureText: true,
                      ),

                      //forget password
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Text(
                            S.of(context).forgetPassword,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            //bottom -2
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Container(
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
                            Navigator.of(context).push(MaterialPageRoute(
                                // builder: (context) => const OTPScreen()));
                                builder: (context) => const DashBoardScreen()));
                          },
                          child: Text(
                            S.of(context).login,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            S.of(context).createAccount,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          onPressed: () {

                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor:
                                MaterialStateProperty.all(Colors.white),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(color: Colors.green)),
                            minimumSize: MaterialStateProperty.all(Size(
                                MediaQuery.of(context).size.width * 0.9, 54)),
                          ),
                          child: Text(
                            S.of(context).register,
                            style: TextStyle(
                                color: AppColor.secondaryGreen.shade400,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
