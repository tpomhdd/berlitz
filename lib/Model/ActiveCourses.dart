// To parse this JSON data, do
//
//     final activeCourses = activeCoursesFromJson(jsonString);

import 'dart:convert';

ActiveCourses activeCoursesFromJson(String str) => ActiveCourses.fromJson(json.decode(str));

String activeCoursesToJson(ActiveCourses data) => json.encode(data.toJson());

class ActiveCourses {
  bool status;
  List<Datum> data;
  String message;

  ActiveCourses({
    required this.status,
    required this.data,
    required this.message,
  });

  factory ActiveCourses.fromJson(Map<String, dynamic> json) => ActiveCourses(
    status: json["status"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "message": message,
  };
}

class Datum {
  int id;
  String lang;
  String langAr;
  List<Level> levels;

  Datum({
    required this.id,
    required this.lang,
    required this.langAr,
    required this.levels,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    lang: json["lang"],
    langAr: json["lang_ar"],
    levels: List<Level>.from(json["levels"].map((x) => Level.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "lang": lang,
    "lang_ar": langAr,
    "levels": List<dynamic>.from(levels.map((x) => x.toJson())),
  };
}

class Level {
  int id;
  int langId;
  String name;
  String? age;
  List<ToOpenCourse> toOpenCourses;

  Level({
    required this.id,
    required this.langId,
    required this.name,
    this.age,
    required this.toOpenCourses,
  });

  factory Level.fromJson(Map<String, dynamic> json) => Level(
    id: json["id"],
    langId: json["lang_id"],
    name: json["name"],
    age: json["age"],
    toOpenCourses: List<ToOpenCourse>.from(json["to_open_courses"].map((x) => ToOpenCourse.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "lang_id": langId,
    "name": name,
    "age": age,
    "to_open_courses": List<dynamic>.from(toOpenCourses.map((x) => x.toJson())),
  };
}




List<ToOpenCourse> ToOpenCourseFromJson(dynamic str) => List<ToOpenCourse>.from
  (json.decode(str).map((x) => ToOpenCourse.fromJson(x)));


String ToOpenCourseToJson(List<ToOpenCourse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class ToOpenCourse {

  int id;
  int ageGroupId;
  String cid;
  dynamic courseNumber;
  int levelId;
  String studentNumber;
  int studentNumberV;
  String lessonsNumber;
  int lessonsNumberV;
  String courseCost;
  String bookCost;
  int costV;
  DateTime startDate;
  DateTime endDate;
  int endDateV;
  int visible;
  DateTime createdAt;
  DateTime updatedAt;
  String teacher;
  dynamic courseName;
  dynamic units;
  dynamic deletedAt;
  String description;
  List<Lesson> lessons;

  ToOpenCourse({
    required this.id,
    required this.ageGroupId,
    required this.cid,
    this.courseNumber,
    required this.levelId,
    required this.studentNumber,
    required this.studentNumberV,
    required this.lessonsNumber,
    required this.lessonsNumberV,
    required this.courseCost,
    required this.bookCost,
    required this.costV,
    required this.startDate,
    required this.endDate,
    required this.endDateV,
    required this.visible,
    required this.createdAt,
    required this.updatedAt,
    required this.teacher,
    this.courseName,
    this.units,
    this.deletedAt,
    required this.description,
    required this.lessons,
  });

  factory ToOpenCourse.fromJson(Map<String, dynamic> json) => ToOpenCourse(
    id: json["id"],
    ageGroupId: json["age_group_id"],
    cid: json["cid"],
    courseNumber: json["course_number"],
    levelId: json["level_id"],
    studentNumber: json["student_number"],
    studentNumberV: json["student_number_v"],
    lessonsNumber: json["lessons_number"],
    lessonsNumberV: json["lessons_number_v"],
    courseCost: json["course_cost"],
    bookCost: json["book_cost"],
    costV: json["cost_v"],
    startDate: DateTime.parse(json["start_date"]),
    endDate: DateTime.parse(json["end_date"]),
    endDateV: json["end_date_v"],
    visible: json["visible"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    teacher: json["teacher"],
    courseName: json["course_name"],
    units: json["units"],
    deletedAt: json["deleted_at"],
    description: json["description"],
    lessons: List<Lesson>.from(json["lessons"].map((x) => Lesson.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "age_group_id": ageGroupId,
    "cid": cid,
    "course_number": courseNumber,
    "level_id": levelId,
    "student_number": studentNumber,
    "student_number_v": studentNumberV,
    "lessons_number": lessonsNumber,
    "lessons_number_v": lessonsNumberV,
    "course_cost": courseCost,
    "book_cost": bookCost,
    "cost_v": costV,
    "start_date": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
    "end_date": "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
    "end_date_v": endDateV,
    "visible": visible,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "teacher": teacher,
    "course_name": courseName,
    "units": units,
    "deleted_at": deletedAt,
    "description": description,
    "lessons": List<dynamic>.from(lessons.map((x) => x.toJson())),
  };
}

class Lesson {
  int id;
  DateTime date;
  From from;
  To to;
  int courseId;
  int isCanceled;
  DateTime createdAt;
  DateTime updatedAt;

  Lesson({
    required this.id,
    required this.date,
    required this.from,
    required this.to,
    required this.courseId,
    required this.isCanceled,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) => Lesson(
    id: json["id"],
    date: DateTime.parse(json["date"]),
    from: fromValues.map[json["from"]]!,
    to: toValues.map[json["to"]]!,
    courseId: json["course_id"],
    isCanceled: json["is_canceled"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "from": fromValues.reverse[from],
    "to": toValues.reverse[to],
    "course_id": courseId,
    "is_canceled": isCanceled,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

enum From {
  THE_300
}

final fromValues = EnumValues({
  "3:00": From.THE_300
});

enum To {
  THE_430
}

final toValues = EnumValues({
  "4:30": To.THE_430
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
