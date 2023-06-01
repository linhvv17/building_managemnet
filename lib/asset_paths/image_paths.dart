
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

  static String _getImagePath(String imageName) {
    return AssetsPaths.images + imageName;
  }
}
