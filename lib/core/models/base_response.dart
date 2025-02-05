class BaseResponse<T> {
  final String message;
  final bool success;
  final T data;

  BaseResponse({
    required this.message,
    this.success = false,
    required this.data,
  });

  factory BaseResponse.fromJson(
      Map<String, dynamic> json, int statusCode, Function fromJsonData) {
    return BaseResponse(
      message: json['message'] ?? "",
      success: json['success'] ?? statusCode == 200,
      data: json['data'] != null ? fromJsonData(json['data']) : fromJsonData(<String, dynamic>{})
    );
  }
}