import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../asset_paths/image_paths.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50,),
              //top view
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.current.hello,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24
                        ),
                      ),
                      Text(
                        S.current.defaultNumber,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 18
                        ),
                      )
                    ],
                  ),
                  Image.asset(ImagePaths.avatarImg)
                ],
              ),
              const SizedBox(height: 30,),
              //panel PR
              Container(
                height: 160,
                decoration: BoxDecoration(
                  gradient: AppColor.mainAppGradient,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //left
                    Image.asset(ImagePaths.panelQRPNG),
                    //right
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.current.free,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                        Text(
                          S.current.service,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 18
                          ),
                        ),
                        Text(
                          S.current.onlyForMember,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14
                          ),
                        ),
                        ElevatedButton(
                            onPressed: (){},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                          ),
                            child: Text(
                              S.current.start,
                              style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                        )

                      ],
                    )
                  ],
                ),
              ),
              //notification
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.current.notification,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        S.current.more,
                        style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        ),
                      ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}