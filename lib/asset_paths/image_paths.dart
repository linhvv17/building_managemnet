
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
  static String get avatarImgUpdate => _getImagePath('avatar_update.png');
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
  static String get bgResidentDetail => _getImagePath('bg_resident_detail.png');
  static String get imgConfirmPayment => _getImagePath('img_confirm_payment.png');
  static String get iconAddImg => _getImagePath('icon_add_img.png');
  static String get icCamera => _getImagePath('ic_camera.png');
  static String get icAsk => _getImagePath('ic_ask.png');
  static String get icError => _getImagePath('ic_error.png');
  static String get icMsg => _getImagePath('ic_msg.png');
  static String get icTos => _getImagePath('ic_tos.png');
  static String get icElectric => _getImagePath('ic_electric.png');
  static String get icWater => _getImagePath('ic_water.png');
  static String get icHelp => _getImagePath('ic_help.png');
  static String get icParkCar => _getImagePath('ic_park_car.png');
  static String get icTaxiKid => _getImagePath('ic_taxi_kid.png');
  static String get icGym => _getImagePath('ic_gym.png');
  static String get reportThumbnail => _getImagePath('report_thumbnail.png');
  static String get floatAddReport => _getImagePath('float_add_report.png');
  static String get bgDetailReport => _getImagePath('bg_detail_report.png');
  static String get bgDetailPlugin => _getImagePath('bg_detail_plugin.png');
  static String get thumbnailService => _getImagePath('thumbnail_service.png');
  static String get thumbnailServiceWater => _getImagePath('thumbnail_service_water.png');
  static String get thumbnailServiceElectric => _getImagePath('thumbnail_service_electric.png');
  static String get thumbnailServiceCar => _getImagePath('thumbnail_service_car.png');
  static String get logoElectric => _getImagePath('logo_electric.png');
  static String get icCar => _getImagePath('ic_car.png');
  static String get icMotorbike => _getImagePath('ic_motorbike.png');
  static String get serviceCar => _getImagePath('service_car.png');

  static String _getImagePath(String imageName) {
    return AssetsPaths.images + imageName;
  }
}
