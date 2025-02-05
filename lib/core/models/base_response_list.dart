class BaseResponseList<T> {
  final String message;
  final bool success;
  final List<T> data;

  BaseResponseList({
    required this.message,
    this.success = false,
    required this.data,
  });

  factory BaseResponseList.fromJson(Map<String, dynamic> json, int statusCode, Function(List<dynamic>) fromJsonData) {
    return BaseResponseList(
      message: json['message'] ?? "",
      success: json['success'] ?? statusCode == 200,
      data: json['data'] != null ? fromJsonData(json['data'] is String ? json : json['data']) : []
    );
  }
}