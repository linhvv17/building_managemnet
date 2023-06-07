import 'package:building_managemnet/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset_paths/image_paths.dart';
import '../../generated/l10n.dart';
import 'add_info_screen.dart';

class AddInfoIntroScreen extends StatelessWidget {
  const AddInfoIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.grey.shade200,
        padding: const EdgeInsets.only(top: 60.0, bottom: 30.0),
        child: Column(
          children: [
            //image top -1
            Expanded(
              flex: 2,
              child: Center(
                child: SvgPicture.asset(ImagePaths.welcome),
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
                        S.of(context).welcomeAddInfo,
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey.shade500
                        ),
                      ),
                      Text(
                        S.of(context).addInfo,
                        textAlign: TextAlign.center,
                        style:  const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const AddInfoScreen()));
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
                            S.of(context).addInfoButton,
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
