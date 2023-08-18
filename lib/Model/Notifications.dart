//Notifications

// To parse this JSON data, do
//
//     final notifications = notificationsFromJson(jsonString);

import 'dart:convert';


class myNotifications {
  int id;
  String type;
  String message;
  int? notifiableId;
  dynamic img;
  String createdAt;
 String updatedAt;

  myNotifications({
    required this.id,
    required this.type,
    required this.message,
    this.notifiableId,
    this.img,
    required this.createdAt,
    required this.updatedAt,
  });

  factory myNotifications.fromJson(Map<String, dynamic> json) =>myNotifications(
    id: json["id"],
    type: json["type"],
    message: json["message"],
    notifiableId: json["notifiable_id"],
    img: json["img"],
    createdAt:json["created_at"],
    updatedAt:json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "message": message,
    "notifiable_id": notifiableId,
    "img": img,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
