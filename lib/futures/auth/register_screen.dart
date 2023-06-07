import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/futures/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset_paths/image_paths.dart';
import '../../generated/l10n.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          S.of(context).createAccount,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),

                      //number phone
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0),
                        child: Text(
                          S.of(context).number,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold,color: Colors.grey.shade500),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: S.current.defaultNumber,
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

                      //password
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0),
                        child: Text(
                          S.of(context).password,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold,color: Colors.grey.shade500),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: S.current.hidePassword,
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
                        obscureText: true,
                      ),

                      //confirm password
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0),
                        child: Text(
                          S.of(context).reInputPassword,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold,color: Colors.grey.shade500),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: S.current.hidePassword,
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
                        obscureText: true,
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
                          onPressed: () {},
                          child: Text(
                            S.of(context).register,
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
                            S.of(context).haveAccount,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
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
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const LoginScreen())
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor: MaterialStateProperty.all(Colors.white),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(color: Colors.green)),
                            minimumSize: MaterialStateProperty.all(Size(
                                MediaQuery.of(context).size.width * 0.9, 54)),
                          ),
                          child: Text(
                            S.of(context).login,
                            style: TextStyle(
                                color: AppColor.secondaryGreen.shade400,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text(
                        S.of(context).policy_1,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        S.of(context).policy_2,
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold, color: AppColor.secondaryGreen.shade400),
                      ),
                      Text(
                        S.of(context).policy_3,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        S.of(context).policy_4,
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
                        S.of(context).policy_5,
                        textAlign: TextAlign.center,
                        style:   TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold, color: AppColor.secondaryGreen.shade400),
                      ),
                      Text(
                        S.of(context).policy_6,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal, ),
                      ),
                    ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
