abstract class BaseRequest {
  /// Abstract method that subclasses must implement to provide raw JSON data
  Map<String, dynamic> toRawJson();

  /// Converts to JSON while automatically removing null fields
  Map<String, dynamic> toJson() {
    final rawJson = toRawJson();
    return _removeNulls(rawJson);
  }

  /// Recursively removes null values from Map and List structures
  dynamic _removeNulls(dynamic value) {
    if (value is Map<String, dynamic>) {
      final result = <String, dynamic>{};
      value.forEach((key, val) {
        final cleanedValue = _removeNulls(val);
        if (cleanedValue != null) {
          result[key] = cleanedValue;
        }
      });
      return result;
    } else if (value is List) {
      return value.map((item) => _removeNulls(item)).where((item) => item != null).toList();
    } else {
      return value;
    }
  }
}
