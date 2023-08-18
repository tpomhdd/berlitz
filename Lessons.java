
class Lessons {
  int? id;
  String? date;
  String? from;
  String? to;
  int? courseId;
  int? isCanceled;
  String? createdAt;
  String? updatedAt;

  Lessons(
      {this.id,
        this.date,
        this.from,
        this.to,
        this.courseId,
        this.isCanceled,
        this.createdAt,
        this.updatedAt});

  Lessons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    from = json['from'];
    to = json['to'];
    courseId = json['course_id'];
    isCanceled = json['is_canceled'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['from'] = this.from;
    data['to'] = this.to;
    data['course_id'] = this.courseId;
    data['is_canceled'] = this.isCanceled;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}