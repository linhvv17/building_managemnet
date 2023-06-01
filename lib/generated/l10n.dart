// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to Smaci`
  String get welcome {
    return Intl.message(
      'Welcome to Smaci',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Hãy làm cuộc sống của bạn\n dễ dàng hơn với dịch vụ của\n chúng tôi.`
  String get intro {
    return Intl.message(
      'Hãy làm cuộc sống của bạn\n dễ dàng hơn với dịch vụ của\n chúng tôi.',
      name: 'intro',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký`
  String get register {
    return Intl.message(
      'Đăng ký',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get login {
    return Intl.message(
      'Đăng nhập',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Tạo tài khoản?`
  String get createAccount {
    return Intl.message(
      'Tạo tài khoản?',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại`
  String get number {
    return Intl.message(
      'Số điện thoại',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `+94 (780) 3831312`
  String get defaultNumber {
    return Intl.message(
      '+94 (780) 3831312',
      name: 'defaultNumber',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu`
  String get password {
    return Intl.message(
      'Mật khẩu',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `********`
  String get hidePassword {
    return Intl.message(
      '********',
      name: 'hidePassword',
      desc: '',
      args: [],
    );
  }

  /// `Nhập lại mật khẩu`
  String get reInputPassword {
    return Intl.message(
      'Nhập lại mật khẩu',
      name: 'reInputPassword',
      desc: '',
      args: [],
    );
  }

  /// `Có tài khoản?`
  String get haveAccount {
    return Intl.message(
      'Có tài khoản?',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Với việc tiếp tục, bạn đã đồng ý với `
  String get policy_1 {
    return Intl.message(
      'Với việc tiếp tục, bạn đã đồng ý với ',
      name: 'policy_1',
      desc: '',
      args: [],
    );
  }

  /// `điều khoản `
  String get policy_2 {
    return Intl.message(
      'điều khoản ',
      name: 'policy_2',
      desc: '',
      args: [],
    );
  }

  /// `và `
  String get policy_3 {
    return Intl.message(
      'và ',
      name: 'policy_3',
      desc: '',
      args: [],
    );
  }

  /// `điều `
  String get policy_4 {
    return Intl.message(
      'điều ',
      name: 'policy_4',
      desc: '',
      args: [],
    );
  }

  /// `kiện sử dụng  `
  String get policy_5 {
    return Intl.message(
      'kiện sử dụng  ',
      name: 'policy_5',
      desc: '',
      args: [],
    );
  }

  /// `của chúng tôi.`
  String get policy_6 {
    return Intl.message(
      'của chúng tôi.',
      name: 'policy_6',
      desc: '',
      args: [],
    );
  }

  /// `Quên mật khẩu?`
  String get forgetPassword {
    return Intl.message(
      'Quên mật khẩu?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Chúng tôi đã gửi mã OTP đến\nsố điện thoại của bạn`
  String get otp {
    return Intl.message(
      'Chúng tôi đã gửi mã OTP đến\nsố điện thoại của bạn',
      name: 'otp',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận`
  String get confirm {
    return Intl.message(
      'Xác nhận',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Không nhận được OTP?`
  String get notReceiverOTP {
    return Intl.message(
      'Không nhận được OTP?',
      name: 'notReceiverOTP',
      desc: '',
      args: [],
    );
  }

  /// `Gửi lại`
  String get resendOTP {
    return Intl.message(
      'Gửi lại',
      name: 'resendOTP',
      desc: '',
      args: [],
    );
  }

  /// `Xin chào!`
  String get welcomeAddInfo {
    return Intl.message(
      'Xin chào!',
      name: 'welcomeAddInfo',
      desc: '',
      args: [],
    );
  }

  /// `Xin hãy bổ sung thông tin \nđể xác minh tài khoản`
  String get addInfo {
    return Intl.message(
      'Xin hãy bổ sung thông tin \nđể xác minh tài khoản',
      name: 'addInfo',
      desc: '',
      args: [],
    );
  }

  /// `Bổ sung thông tin`
  String get addInfoButton {
    return Intl.message(
      'Bổ sung thông tin',
      name: 'addInfoButton',
      desc: '',
      args: [],
    );
  }

  /// `Dự án / Khu đô thị`
  String get project {
    return Intl.message(
      'Dự án / Khu đô thị',
      name: 'project',
      desc: '',
      args: [],
    );
  }

  /// `Tên dự án`
  String get hintProject {
    return Intl.message(
      'Tên dự án',
      name: 'hintProject',
      desc: '',
      args: [],
    );
  }

  /// `Tòa nhà `
  String get build {
    return Intl.message(
      'Tòa nhà ',
      name: 'build',
      desc: '',
      args: [],
    );
  }

  /// `Tên tòa`
  String get hintBuild {
    return Intl.message(
      'Tên tòa',
      name: 'hintBuild',
      desc: '',
      args: [],
    );
  }

  /// `Căn hộ`
  String get room {
    return Intl.message(
      'Căn hộ',
      name: 'room',
      desc: '',
      args: [],
    );
  }

  /// `Số phòng`
  String get hintRoom {
    return Intl.message(
      'Số phòng',
      name: 'hintRoom',
      desc: '',
      args: [],
    );
  }

  /// `Họ và tên`
  String get fullName {
    return Intl.message(
      'Họ và tên',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Họ và tên`
  String get hintFullName {
    return Intl.message(
      'Họ và tên',
      name: 'hintFullName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get hintEmail {
    return Intl.message(
      'Email',
      name: 'hintEmail',
      desc: '',
      args: [],
    );
  }

  /// `Mặt trước CCCD`
  String get fontCard {
    return Intl.message(
      'Mặt trước CCCD',
      name: 'fontCard',
      desc: '',
      args: [],
    );
  }

  /// `Mặt sau CCCD`
  String get backCard {
    return Intl.message(
      'Mặt sau CCCD',
      name: 'backCard',
      desc: '',
      args: [],
    );
  }

  /// `Bằng cách tiếp tục, bạn đồng ý với các `
  String get policyAddInfo_1 {
    return Intl.message(
      'Bằng cách tiếp tục, bạn đồng ý với các ',
      name: 'policyAddInfo_1',
      desc: '',
      args: [],
    );
  }

  /// `điều khoản dịch vụ `
  String get policyAddInfo_2 {
    return Intl.message(
      'điều khoản dịch vụ ',
      name: 'policyAddInfo_2',
      desc: '',
      args: [],
    );
  }

  /// `chính sách bảo mật `
  String get policyAddInfo_3 {
    return Intl.message(
      'chính sách bảo mật ',
      name: 'policyAddInfo_3',
      desc: '',
      args: [],
    );
  }

  /// `và `
  String get policyAddInfo_4 {
    return Intl.message(
      'và ',
      name: 'policyAddInfo_4',
      desc: '',
      args: [],
    );
  }

  /// `chính sách cookie `
  String get policyAddInfo_5 {
    return Intl.message(
      'chính sách cookie ',
      name: 'policyAddInfo_5',
      desc: '',
      args: [],
    );
  }

  /// `dành cho khách `
  String get policyAddInfo_6 {
    return Intl.message(
      'dành cho khách ',
      name: 'policyAddInfo_6',
      desc: '',
      args: [],
    );
  }

  /// `hàng của chúng tôi`
  String get policyAddInfo_7 {
    return Intl.message(
      'hàng của chúng tôi',
      name: 'policyAddInfo_7',
      desc: '',
      args: [],
    );
  }

  /// `Đang được xử lý`
  String get processing {
    return Intl.message(
      'Đang được xử lý',
      name: 'processing',
      desc: '',
      args: [],
    );
  }

  /// `Trở lại Đăng nhập`
  String get backToLogin {
    return Intl.message(
      'Trở lại Đăng nhập',
      name: 'backToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Alan Wilson`
  String get name {
    return Intl.message(
      'Alan Wilson',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Chúng tôi đang xử lý tài khoản của bạn,\nchúng tôi sẽ liên hệ với bạn trong thời gian\nsớm nhất để nhận được dịch vụ từ chúng tôi`
  String get processingDescription {
    return Intl.message(
      'Chúng tôi đang xử lý tài khoản của bạn,\nchúng tôi sẽ liên hệ với bạn trong thời gian\nsớm nhất để nhận được dịch vụ từ chúng tôi',
      name: 'processingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Hỗ trợ`
  String get support {
    return Intl.message(
      'Hỗ trợ',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Xin chào`
  String get hello {
    return Intl.message(
      'Xin chào',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Miễn phí`
  String get free {
    return Intl.message(
      'Miễn phí',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `Dịch vụ`
  String get service {
    return Intl.message(
      'Dịch vụ',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `Chỉ dành cho dân cư`
  String get onlyForMember {
    return Intl.message(
      'Chỉ dành cho dân cư',
      name: 'onlyForMember',
      desc: '',
      args: [],
    );
  }

  /// `Bắt đầu`
  String get start {
    return Intl.message(
      'Bắt đầu',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Thông báo `
  String get notification {
    return Intl.message(
      'Thông báo ',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Thêm...>`
  String get more {
    return Intl.message(
      'Thêm...>',
      name: 'more',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
