import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../asset_paths/image_paths.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Hỗ trợ"),
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
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            children: [
              //ask
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              ImagePaths.icAsk,
                              width: 42,
                              height: 42,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      S.current.ask,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      S.current.askDes,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  icon: const Icon(Icons.navigate_next,
                                      color: Colors.grey),
                                  onPressed: () => {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              //error
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              ImagePaths.icError,
                              width: 42,
                              height: 42,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      S.current.error,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      S.current.errorDes,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  icon: const Icon(Icons.navigate_next,
                                      color: Colors.grey),
                                  onPressed: () => {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              //msg
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              ImagePaths.icMsg,
                              width: 42,
                              height: 42,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      S.current.msg,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      S.current.msgDes,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  icon: const Icon(Icons.navigate_next,
                                      color: Colors.grey),
                                  onPressed: () => {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              //tos
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              ImagePaths.icTos,
                              width: 42,
                              height: 42,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      S.current.tos,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      S.current.tosDes,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  icon: const Icon(Icons.navigate_next,
                                      color: Colors.grey),
                                  onPressed: () => {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),

              //version
              const Padding(
                padding: EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Phiên bản",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Text(
                      "2.6.3",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
