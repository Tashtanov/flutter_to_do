import 'package:equatable/equatable.dart';
class Tasks extends Equatable{
  final String title;
  bool? isDone;
  bool? isDeleted;

  Tasks({required this.title, this.isDone, this.isDeleted}) {
    isDone = isDone ?? false;
    isDeleted = isDeleted ?? false;
  }

  Tasks copyWith({
    String? title,
    bool? isDone,
    bool? isDeleted,
  }) {
    return Tasks(
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'isDone': this.isDone,
      'isDeleted': this.isDeleted,
    };
  }

  factory Tasks.fromMap(Map<String, dynamic> map) {
    return Tasks(
      title: map['title'] as String,
      isDone: map['isDone'] as bool,
      isDeleted: map['isDeleted'] as bool,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [title,isDeleted,isDone];
}
