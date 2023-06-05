import '../../base/base.dart';
import 'splash_logic.dart';

class SplashPage extends StatelessWidget {
  final logic = Get.put(SplashLogic());
  final state = Get.find<SplashLogic>().state;

  SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Obx(() {
            return AnimatedPositioned(
              duration: Constant.timeAnimationLong,
              bottom: state.heightLogo.value,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 150.sp,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
