// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  bool status;
  Data data;
  String message;

  User({
    required this.status,
    required this.data,
    required this.message,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    status: json["status"],
    data: Data.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data.toJson(),
    "message": message,
  };
}

class Data {
  int id;
  String firstName;
  String lastName;
  String firstNameAr;
  String lastNameAr;
  String phone;
  String address;
  String workPlace;
  String gender;
  DateTime birthday;
  String nationality;
  String email;
  int blocked;
  int isHr;
  int profile;
  dynamic lastOs;
  dynamic deletedAt;
  dynamic fatherNameEn;
  dynamic fatherNameAr;
  dynamic earilerCourse;
  dynamic langId;
  dynamic phoneC;
  dynamic telegram;
  DateTime createdAt;
  DateTime updatedAt;
  List<Course> activeCourses;
  List<dynamic> newCourses;
  List<Course> pastCourses;
  List<ToOpenCourse> toOpenCourses;

  Data({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.firstNameAr,
    required this.lastNameAr,
    required this.phone,
    required this.address,
    required this.workPlace,
    required this.gender,
    required this.birthday,
    required this.nationality,
    required this.email,
    required this.blocked,
    required this.isHr,
    required this.profile,
    required this.lastOs,
    required this.deletedAt,
    required this.fatherNameEn,
    required this.fatherNameAr,
    required this.earilerCourse,
    required this.langId,
    required this.phoneC,
    required this.telegram,
    required this.createdAt,
    required this.updatedAt,
    required this.activeCourses,
    required this.newCourses,
    required this.pastCourses,
    required this.toOpenCourses,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    firstNameAr: json["first_name_ar"],
    lastNameAr: json["last_name_ar"],
    phone: json["phone"],
    address: json["Address"],
    workPlace: json["work_place"],
    gender: json["gender"],
    birthday: DateTime.parse(json["birthday"]),
    nationality: json["nationality"],
    email: json["email"],
    blocked: json["blocked"],
    isHr: json["is_hr"],
    profile: json["profile"],
    lastOs: json["lastOS"],
    deletedAt: json["deleted_at"],
    fatherNameEn: json["father_name_en"],
    fatherNameAr: json["father_name_ar"],
    earilerCourse: json["eariler_course"],
    langId: json["lang_id"],
    phoneC: json["phone_c"],
    telegram: json["telegram"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    activeCourses: List<Course>.from(json["active_courses"].map((x) => Course.fromJson(x))),
    newCourses: List<dynamic>.from(json["new_courses"].map((x) => x)),
    pastCourses: List<Course>.from(json["past_courses"].map((x) => Course.fromJson(x))),
    toOpenCourses: List<ToOpenCourse>.from(json["to_open_courses"].map((x) => ToOpenCourse.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "first_name_ar": firstNameAr,
    "last_name_ar": lastNameAr,
    "phone": phone,
    "Address": address,
    "work_place": workPlace,
    "gender": gender,
    "birthday": "${birthday.year.toString().padLeft(4, '0')}-${birthday.month.toString().padLeft(2, '0')}-${birthday.day.toString().padLeft(2, '0')}",
    "nationality": nationality,
    "email": email,
    "blocked": blocked,
    "is_hr": isHr,
    "profile": profile,
    "lastOS": lastOs,
    "deleted_at": deletedAt,
    "father_name_en": fatherNameEn,
    "father_name_ar": fatherNameAr,
    "eariler_course": earilerCourse,
    "lang_id": langId,
    "phone_c": phoneC,
    "telegram": telegram,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "active_courses": List<dynamic>.from(activeCourses.map((x) => x.toJson())),
    "new_courses": List<dynamic>.from(newCourses.map((x) => x)),
    "past_courses": List<dynamic>.from(pastCourses.map((x) => x.toJson())),
    "to_open_courses": List<dynamic>.from(toOpenCourses.map((x) => x.toJson())),
  };
}

class Course {
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
  Pivot pivot;
  Level level;
  List<Lesson>? lessons;

  Course({
    required this.id,
    required this.ageGroupId,
    required this.cid,
    required this.courseNumber,
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
    required this.courseName,
    required this.units,
    required this.deletedAt,
    required this.description,
    required this.pivot,
    required this.level,
    this.lessons,
  });

  factory Course.fromJson(Map<String, dynamic> json) => Course(
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
    pivot: Pivot.fromJson(json["pivot"]),
    level: Level.fromJson(json["level"]),
    lessons: json["lessons"] == null ? [] : List<Lesson>.from(json["lessons"]!.map((x) => Lesson.fromJson(x))),
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
    "pivot": pivot.toJson(),
    "level": level.toJson(),
    "lessons": lessons == null ? [] : List<dynamic>.from(lessons!.map((x) => x.toJson())),
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
  THE_0900_AM,
  THE_0945_AM,
  THE_1115_AM
}

final fromValues = EnumValues({
  "09:00 AM": From.THE_0900_AM,
  "09:45 AM": From.THE_0945_AM,
  "11:15 AM": From.THE_1115_AM
});

enum To {
  THE_0945_AM,
  THE_1030_AM,
  THE_1245_PM
}

final toValues = EnumValues({
  "09:45 AM": To.THE_0945_AM,
  "10:30 AM": To.THE_1030_AM,
  "12:45 PM": To.THE_1245_PM
});

class Level {
  int id;
  int langId;
  String name;
  String? age;
  Lang lang;

  Level({
    required this.id,
    required this.langId,
    required this.name,
    required this.age,
    required this.lang,
  });

  factory Level.fromJson(Map<String, dynamic> json) => Level(
    id: json["id"],
    langId: json["lang_id"],
    name: json["name"],
    age: json["age"],
    lang: Lang.fromJson(json["lang"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "lang_id": langId,
    "name": name,
    "age": age,
    "lang": lang.toJson(),
  };
}

class Lang {
  int id;
  String lang;
  String langAr;

  Lang({
    required this.id,
    required this.lang,
    required this.langAr,
  });

  factory Lang.fromJson(Map<String, dynamic> json) => Lang(
    id: json["id"],
    lang: json["lang"],
    langAr: json["lang_ar"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "lang": lang,
    "lang_ar": langAr,
  };
}

class Pivot {
  int userId;
  int courseId;
  dynamic verbal;
  dynamic writing;
  dynamic attendance;
  dynamic participation;
  dynamic homework;

  Pivot({
    required this.userId,
    required this.courseId,
    required this.verbal,
    required this.writing,
    required this.attendance,
    required this.participation,
    required this.homework,
  });

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
    userId: json["user_id"],
    courseId: json["course_id"],
    verbal: json["verbal"],
    writing: json["writing"],
    attendance: json["attendance"],
    participation: json["participation"],
    homework: json["homework"],
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId,
    "course_id": courseId,
    "verbal": verbal,
    "writing": writing,
    "attendance": attendance,
    "participation": participation,
    "homework": homework,
  };
}

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
  Pivot pivot;
  Level level;

  ToOpenCourse({
    required this.id,
    required this.ageGroupId,
    required this.cid,
    required this.courseNumber,
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
    required this.courseName,
    required this.units,
    required this.deletedAt,
    required this.description,
    required this.pivot,
    required this.level,
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
    pivot: Pivot.fromJson(json["pivot"]),
    level: Level.fromJson(json["level"]),
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
    "pivot": pivot.toJson(),
    "level": level.toJson(),
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
