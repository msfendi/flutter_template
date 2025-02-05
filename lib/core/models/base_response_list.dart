class BaseResponseList<T> {
  final String rc;
  final String message;
  final bool success;
  final List<T> data;

  BaseResponseList({
    required this.rc,
    required this.message,
    this.success = false,
    required this.data,
  });

  factory BaseResponseList.fromJson(Map<String, dynamic> json, Function(List<dynamic>) fromJsonData) {
    return BaseResponseList(
      rc: json['rc'],
      message: json['message'],
      success: json['rc'] == "SUCCESS",
      data: json['payload'] != null ? fromJsonData(json['payload']['data'] is String ? json : json['payload']['data']) : []
    );
  }
}