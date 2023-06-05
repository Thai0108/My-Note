import '../../base/base.dart';
import '../../component/shared/device_info.dart';
import '../../component/shared/package_info.dart';
import '../../component/shared/secure_storage.dart';
import 'splash_state.dart';

class SplashLogic extends GetxController {
  final SplashState state = SplashState();

  @override
  void onReady() {
    super.onReady();
    _init();
    state.heightLogo.value = .5.h;
  }

  Future _init() async {
    await SDeviceInfo.init();
    await SPackageInfo.init();
    await SSecureStorage.init();
    // await SLocation.checkPermission();
    await 1.delay();
    // if (kDebugMode) {
    //   return BSwitchScreen.pushNameAndRemove("/HomePage");
    // }
    await BSwitchScreen.pushNameAndRemove("/HomeView");
  }
}
