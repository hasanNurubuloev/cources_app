extension ValidationExtensions on String? {
  String? validateNotEmpty(String errorMessage) {
    if (this == null || this!.isEmpty) {
      return errorMessage;
    }
    return null;
  }

  String? validateIsNumber(String errorMessage) {
    if (this == null || this!.isEmpty || int.tryParse(this!) == null) {
      return errorMessage;
    }
    return null;
  }
}