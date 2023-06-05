import 'package:not_a_note/base/lifecycle/b_page.dart';
import 'package:not_a_note/component/shared/utils.dart';
import 'package:not_a_note/model/note_model.dart';

class DetailNoteState {
  late Rx<NoteModel> noteModel;
  late Rx<String> heroTag;
  DetailNoteState() {
    noteModel = NoteModel().obs;
    heroTag = "".obs;
  }
}
