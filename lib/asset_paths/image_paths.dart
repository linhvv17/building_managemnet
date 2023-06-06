
import 'assets_paths.dart';

class ImagePaths {
  static String get logo => _getImagePath('logo.svg');
  static String get logoIntro => _getImagePath('logo_intro.svg');
  static String get logoFull => _getImagePath('logo_full.svg');
  static String get iconOTP => _getImagePath('icon_otp.svg');
  static String get welcome => _getImagePath('welcome.svg');
  static String get imgDefault => _getImagePath('img_default.svg');
  static String get avatar => _getImagePath('avata.svg');
  static String get iconCall => _getImagePath('icon_call.svg');
  static String get panelQR => _getImagePath('panel_qr.svg');
  static String get panelQRPNG => _getImagePath('panel_qr.png');
  static String get avatarImg => _getImagePath('avatar.png');
  static String get serviceThumbnail => _getImagePath('service_thumbnail.png');
  static String get newsThumbnail => _getImagePath('news_thumbnail.png');
  static String get icService1 => _getImagePath('ic_fee_service.png');
  static String get pluginThumbnail => _getImagePath('plugin_thumbnail.png');

  static String get icService2 => _getImagePath('ic_electric_service.png');
  static String get icService3 => _getImagePath('ic_water_service.png');
  static String get icService4 => _getImagePath('ic_car_service.png');
  static String get icService5 => _getImagePath('ic_internet_service.png');
  static String get icService6 => _getImagePath('ic_tv_service.png');
  static String get icService7 => _getImagePath('ic_member_service.png');
  static String get icService8 => _getImagePath('ic_fix_service.png');
  static String get icService9 => _getImagePath('ic_ground_service.png');



  static String get icCalendar => _getImagePath('ic_calendar.png');
  static String get icShowMore => _getImagePath('ic_show_more.png');
  static String get icShowLess => _getImagePath('ic_show_less.png');

  static String _getImagePath(String imageName) {
    return AssetsPaths.images + imageName;
  }
}
