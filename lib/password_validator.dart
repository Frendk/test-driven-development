class PasswordValidator {
  String _password = "";

  void add_password(String password) {
    _password = password;
  }

  bool password_length() {
    if (_password.length >= 8) {
      return true;
    }
    return false;
  }

  bool upper_lower_case() {
    if (_password.contains(RegExp(r'[A-Z]')) && _password.contains(RegExp(r'[a-z]'))) {
      return true;
    }
    return false;
  }

  bool contains_digit() {
    if (_password.contains(RegExp(r'[0-9]'))) {
      return true;
    }
    return false;
  }

  bool contains_symbol() {
    if (_password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return true;
    }
    return false;
  }

  bool contains_no_spaces() {
    if (_password.contains(' ')) {
      return false;
    }
    return true;
  }
}