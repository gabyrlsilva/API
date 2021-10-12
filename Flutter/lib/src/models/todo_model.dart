class ToDoModel {
  late int userId;
  late int id;
  late String title;
  late bool completed;

  ToDoModel(this.userId, this.id, this.title, this.completed);

  ToDoModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['completed'] = completed;
    return data;
  }
}
