class TaskModel {
  String title;
  bool isDone;
  final int id;

  TaskModel({
    required this.title,
    required this.id,
    this.isDone = false,
  });
}
