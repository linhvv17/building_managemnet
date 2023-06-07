import 'package:building_managemnet/futures/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset_paths/image_paths.dart';
import '../../generated/l10n.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            //image top -3
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: SvgPicture.asset(ImagePaths.logoIntro),
                  ),
                  Text(
                    S.of(context).welcome,
                    style: const TextStyle(
                        fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            //text -2
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        S.of(context).intro,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                )),
            //bottom -1
            Expanded(
                flex: 1,
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
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const RegisterScreen())
                            );
                          },
                          child: Text(
                            S.of(context).register,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          // elevation: MaterialStateProperty.all(3),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(color: Colors.green)),
                          minimumSize: MaterialStateProperty.all(Size(
                              MediaQuery.of(context).size.width * 0.9, 54)),
                        ),
                        child: Text(
                          S.of(context).login,
                          style: const TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
