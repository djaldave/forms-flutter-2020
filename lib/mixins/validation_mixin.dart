class ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String validatePassword(String value) {
    //return null if valid
    // other wise string (with the error message) if invalid
    if (value.length < 4) {
      return 'password must be at least 4 character';
    }
    return null;
  }
}
