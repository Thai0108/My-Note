// To parse this JSON data, do
//
//     final noteModel = noteModelFromMap(jsonString);

import 'dart:convert';

NoteModel noteModelFromMap(String str) => NoteModel.fromMap(json.decode(str));

String noteModelToMap(NoteModel data) => json.encode(data.toMap());

class NoteModel {
    int? id;
    String? title;
    String? content;
    String? dateCreate;
    String? dateEdit;

    NoteModel({
        this.id,
        this.title,
        this.content,
        this.dateCreate,
        this.dateEdit,
    });

    factory NoteModel.fromMap(Map<String, dynamic> json) => NoteModel(
        id: json["id"],
        title: json["title"],
        content: json["content"],
        dateCreate: json["dateCreate"],
        dateEdit: json["dateEdit"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "content": content,
        "dateCreate": dateCreate,
        "dateEdit": dateEdit,
    };
}
