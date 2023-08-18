class Course {
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
  Level? level;
  List<Lessons>? lessons;

  Course(
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
        this.pivot,
        this.level,
        this.lessons});

  Course.fromJson(Map<String, dynamic> json) {
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
    level = json['level'] != null ? new Level.fromJson(json['level']) : null;
    if (json['lessons'] != null) {
      lessons = <Lessons>[];
      json['lessons'].forEach((v) {
        lessons!.add(new Lessons.fromJson(v));
      });
    }
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
    if (this.level != null) {
      data['level'] = this.level!.toJson();
    }
    if (this.lessons != null) {
      data['lessons'] = this.lessons!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pivot {
  int? userId;
  int? courseId;
  Null? verbal;
  Null? writing;
  Null? attendance;
  Null? participation;
  Null? homework;

  Pivot(
      {this.userId,
        this.courseId,
        this.verbal,
        this.writing,
        this.attendance,
        this.participation,
        this.homework});

  Pivot.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    courseId = json['course_id'];
    verbal = json['verbal'];
    writing = json['writing'];
    attendance = json['attendance'];
    participation = json['participation'];
    homework = json['homework'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['course_id'] = this.courseId;
    data['verbal'] = this.verbal;
    data['writing'] = this.writing;
    data['attendance'] = this.attendance;
    data['participation'] = this.participation;
    data['homework'] = this.homework;
    return data;
  }
}

class Level {
  int? id;
  int? langId;
  String? name;
  Null? age;
  Lang? lang;

  Level({this.id, this.langId, this.name, this.age, this.lang});

  Level.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    langId = json['lang_id'];
    name = json['name'];
    age = json['age'];
    lang = json['lang'] != null ? new Lang.fromJson(json['lang']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lang_id'] = this.langId;
    data['name'] = this.name;
    data['age'] = this.age;
    if (this.lang != null) {
      data['lang'] = this.lang!.toJson();
    }
    return data;
  }
}

class Lang {
  int? id;
  String? lang;
  String? langAr;

  Lang({this.id, this.lang, this.langAr});

  Lang.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lang = json['lang'];
    langAr = json['lang_ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lang'] = this.lang;
    data['lang_ar'] = this.langAr;
    return data;
  }
}

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