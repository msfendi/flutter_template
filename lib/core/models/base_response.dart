class BaseResponse<T> {
  final String rc;
  final String message;
  final bool success;
  final T data;

  BaseResponse({
    required this.rc,
    required this.message,
    this.success = false,
    required this.data,
  });

  factory BaseResponse.fromJson(
      Map<String, dynamic> json, Function fromJsonData) {
    return BaseResponse(
      rc: json['rc'],
      message: json['message'],
      success: json['rc'] == "SUCCESS" || json['rc'].toString().contains("SUCCESS"),
      data: json['payload'] != null
          ? json['payload']['data'] != null ? fromJsonData(json['payload']['data']) : fromJsonData(<String, dynamic>{})
          : fromJsonData(<String, dynamic>{}),
    );
  }
}