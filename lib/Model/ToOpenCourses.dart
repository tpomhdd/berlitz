
import '../data.dart';

class ToOpenCourses {
  int? id;
  int? ageGroupId;
  String? cid;
  Null? courseNumber;
  int? levelId;
  String? studentNumber;
  int? studentNumberV;
  String? lessonsNumber;
  int? lessonsNumberV;
  String? courseCost;
  String? bookCost;
  int? costV;
  String? startDate;
  String? endDate;
  int? endDateV;
  int? visible;
  String? createdAt;
  String? updatedAt;
  String? teacher;
  Null? courseName;
  Null? units;
  Null? deletedAt;
  String? description;
  Pivot? pivot;

  ToOpenCourses(
      {this.id,
        this.ageGroupId,
        this.cid,
        this.courseNumber,
        this.levelId,
        this.studentNumber,
        this.studentNumberV,
        this.lessonsNumber,
        this.lessonsNumberV,
        this.courseCost,
        this.bookCost,
        this.costV,
        this.startDate,
        this.endDate,
        this.endDateV,
        this.visible,
        this.createdAt,
        this.updatedAt,
        this.teacher,
        this.courseName,
        this.units,
        this.deletedAt,
        this.description,
        this.pivot});

  ToOpenCourses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ageGroupId = json['age_group_id'];
    cid = json['cid'];
    courseNumber = json['course_number'];
    levelId = json['level_id'];
    studentNumber = json['student_number'];
    studentNumberV = json['student_number_v'];
    lessonsNumber = json['lessons_number'];
    lessonsNumberV = json['lessons_number_v'];
    courseCost = json['course_cost'];
    bookCost = json['book_cost'];
    costV = json['cost_v'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    endDateV = json['end_date_v'];
    visible = json['visible'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    teacher = json['teacher'];
    courseName = json['course_name'];
    units = json['units'];
    deletedAt = json['deleted_at'];
    description = json['description'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['age_group_id'] = this.ageGroupId;
    data['cid'] = this.cid;
    data['course_number'] = this.courseNumber;
    data['level_id'] = this.levelId;
    data['student_number'] = this.studentNumber;
    data['student_number_v'] = this.studentNumberV;
    data['lessons_number'] = this.lessonsNumber;
    data['lessons_number_v'] = this.lessonsNumberV;
    data['course_cost'] = this.courseCost;
    data['book_cost'] = this.bookCost;
    data['cost_v'] = this.costV;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['end_date_v'] = this.endDateV;
    data['visible'] = this.visible;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['teacher'] = this.teacher;
    data['course_name'] = this.courseName;
    data['units'] = this.units;
    data['deleted_at'] = this.deletedAt;
    data['description'] = this.description;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}