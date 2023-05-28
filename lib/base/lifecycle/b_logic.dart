import 'package:not_a_note/base/base.dart';
export '../base.dart';

abstract class BLogic<S> extends GetxController {
  late final S state;
}
