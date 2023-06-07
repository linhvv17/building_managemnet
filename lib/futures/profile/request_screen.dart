import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/futures/payment/payment_confirm_screen.dart';
import 'package:building_managemnet/futures/payment/payment_detail_screen.dart';
import 'package:building_managemnet/futures/profile/add_report_screen.dart';
import 'package:building_managemnet/futures/profile/report_detail_screen.dart';
import 'package:building_managemnet/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset_paths/image_paths.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen>
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
      length: 3,
      child: Scaffold(
        backgroundColor: AppColor.colorBackground,
        appBar: AppBar(
          title: const Text("Báo cáo ban quản trị"),
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
          bottom: TabBar(
            tabs: [
              Tab(text: S.current.allReport,),
              Tab(text: S.current.newReport),
              Tab(text: S.current.processReport),
            ],
            labelColor: Colors.grey.shade500,
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _allReportScreen(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _allReportScreen(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _allReportScreen(),
            ),
          ],
        ),
        floatingActionButton: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddReportScreen()),
            );
          },
            child: Image.asset(ImagePaths.floatAddReport)
        ),
      ),
    );
  }



  Widget _allReportScreen() {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const PaymentConfirmScreen()),
              // );
            },
            child: ItemViewReport(
              title: 'Sàn bị hỏng',
              iconPath: ImagePaths.reportThumbnail,
              des: 'Gạch lát sàn hành lang tầng 6\nbi vỡ. Đề nghị sửa chữa.',
              time: '29/06/2022',
              type: 'Báo cáo mới',
            ),
          );
        });
  }

}

class ItemViewReport extends StatefulWidget {
  final String title;
  final String des;
  final String time;
  final String iconPath;
  final String type;

  const ItemViewReport({super.key, required this.title, required this.iconPath, required this.des, required this.time, required this.type});

  @override
  State<StatefulWidget> createState() => _ItemViewReport();
}

class _ItemViewReport extends State<ItemViewReport> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ReportDetailScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(widget.iconPath),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    Text(
                      widget.des,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                              widget.type,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13
                              ),
                            ),
                        ),

                        const Text(
                          "29/06/2022",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PaymentDetailScreen()),
                      );
                      // setState(() {
                      //   isShowMore = !isShowMore;
                      // });
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
