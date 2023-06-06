import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset_paths/image_paths.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.animateTo(1);
  }

  // static const List<Tab> _tabs = [
  //   const Tab(icon: Icon(Icons.looks_one), child: const Text('Tab One')),
  //   const Tab(icon: Icon(Icons.looks_two), text: 'Tab Two'),
  // ];

  static const List<Widget> _views = [
    const Center(child: const Text('Content of Tab One')),
    const Center(child: const Text('Content of Tab Two')),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColor.colorBackground,
        appBar: AppBar(
          title: const Text("Thanh toan"),
          titleTextStyle: TextStyle(
              color: AppColor.secondaryGreen.shade500,
              fontWeight: FontWeight.bold,
              fontSize: 20),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                icon: ImageIcon(
                  AssetImage(
                    ImagePaths.icCalendar,
                  ),
                  size: 30,
                  color: AppColor.colorMain,
                ),
                onPressed: () {
                  // do something here
                }),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: S.current.unpaid,
              ),
              Tab(text: S.current.paid),
            ],
            labelColor: Colors.grey.shade500,
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _unPaidScreen(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _paidScreen(),
            )
          ],
        ),
      ),
    );
  }



  Widget _unPaidScreen() {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  ImagePaths.icService1,
                  width: 42,
                  height: 42,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Phi dich vu",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        ),
                        Text(
                          "Thang 5/2023",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 13
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          '06/06/2023',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 12
                          ),
                        ),
                        Text(
                          '150.000VND',
                          style: TextStyle(
                              color: AppColor.color6f0301,
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }

  Widget _paidScreen() {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return ItemViewPay(
            title: 'Hoa don nam ${2017 + index}',
            iconPath: ImagePaths.icShowMore,
          );
        });
  }
}

class ItemViewPay extends StatefulWidget {
  final String title;
  final String iconPath;

  const ItemViewPay({super.key, required this.title, required this.iconPath});

  @override
  State<StatefulWidget> createState() => _ItemViewPay();
}

class _ItemViewPay extends State<ItemViewPay> {
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title),
              InkWell(
                child: Image.asset(widget.iconPath),
                onTap: () {
                  setState(() {
                    isShowMore = !isShowMore;
                  });
                },
              )
            ],
          ),
          isShowMore
              ?
          SizedBox(
            height: 200,
            child: ListView.builder(
                padding: EdgeInsets.zero,
              shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildItemInPay();
                    }),
          )
              :
          Container()
        ],
      ),
    );
  }


  Widget _buildItemInPay(){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset(
              ImagePaths.icService1,
            width: 42,
            height: 42,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Phi dich vu",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  Text(
                      "Thang 5/2023",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 13
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    '06/06/2023',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 12
                    ),
                  ),
                  InkWell(
                    child: const Text(
                      "XEM",
                      style: TextStyle(
                          color: AppColor.colorMain,
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isShowMore = !isShowMore;
                      });
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
