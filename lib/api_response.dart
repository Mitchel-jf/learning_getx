class ApiResponse {
  final int userId;
  final int id;
  final String title;
  final String body;

  ApiResponse({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  ApiResponse copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      ApiResponse(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
