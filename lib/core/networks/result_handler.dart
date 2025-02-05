
class Results<T> {
  final String rc;
  final String message;
  final int statusCode;
  final Map<String, dynamic>? data;

  Results({
    required this.rc,
    required this.statusCode,
    required this.message,
    required this.data,
  });

}