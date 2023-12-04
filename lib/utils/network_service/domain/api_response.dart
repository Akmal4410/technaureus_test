class ApiResponse {
  int errorCode;
  String message;
  dynamic data; // Changed the type to 'dynamic' to handle both map and list

  ApiResponse({
    required this.errorCode,
    required this.message,
    this.data,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      errorCode: json['error_code'] as int,
      message: json['message'] as String,
      data: _parseData(json['data']), // Use a helper method to parse the data
    );
  }

  static dynamic _parseData(dynamic json) {
    if (json is List) {
      return json; // If it's already a list, return as is
    } else if (json is Map<String, dynamic>) {
      return json; // If it's a map, return as is
    } else {
      return null; // Handle other cases if needed, or return null by default
    }
  }
}
