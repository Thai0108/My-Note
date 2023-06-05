import 'package:not_a_note/model/note_model.dart';

import '../../../base/lifecycle/b_logic.dart';
import 'detail_note_state.dart';

class DetailNoteLogic extends BLogic<DetailNoteState> {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    state.heroTag.value = Get.arguments[0] as String;
    state.noteModel.value = Get.arguments[1] as NoteModel;

  }

  @override
  void onReady() async {
    super.onReady();
  }
}
