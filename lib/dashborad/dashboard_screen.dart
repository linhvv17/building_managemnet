import 'package:building_managemnet/app_color.dart';
import 'package:building_managemnet/auth/otp_screen.dart';
import 'package:building_managemnet/futures/notification/notification_screen.dart';
import 'package:building_managemnet/futures/payment/payment_screen.dart';
import 'package:building_managemnet/futures/profile/profile_screen.dart';
import 'package:building_managemnet/futures/services/services_screen.dart';
import 'package:building_managemnet/generated/l10n.dart';
import 'package:building_managemnet/futures/home/home_screen.dart';
import 'package:building_managemnet/futures/home/item_news.dart';
import 'package:building_managemnet/futures/home/item_noti.dart';
import 'package:building_managemnet/futures/home/item_service.dart';
import 'package:flutter/material.dart';

import '../asset_paths/image_paths.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<StatefulWidget> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  void initState() {
    super.initState();
  }

  int _selectedScreenIndex = 0;
  final List _screens = [
    {"screen": const HomeScreen(), "title": "Trang chu"},
    {"screen": const ServicesScreen(), "title": "Dich vu"},
    {"screen": const PaymentScreen(), "title": "Thanh toan"},
    {"screen": const NotificationScreen(), "title": "Thong bao"},
    {"screen": const ProfileScreen(), "title": "Tai khoan"}
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: S.current.homeBtb,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.business),
            label: S.current.serviceBtb,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.school),
            label: S.current.payBtb,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.school),
            label: S.current.notificationBtb,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.school),
            label: S.current.accountBtb,
          ),
        ],
        currentIndex: _selectedScreenIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _selectScreen,
      ),
    );
  }
}
