import 'b_logic.dart';
export '../base.dart';

abstract class BPage<L extends BLogic, S> extends GetView<L> {
  late final S state;

  BPage({super.key});

  void setController<O>(L logic, S state){
    logic.state = state;
    Get.put(logic);
    this.state = Get.find<L>().state;
  }

  @override
  Widget build(BuildContext context);
}
