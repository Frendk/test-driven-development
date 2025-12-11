import 'package:test_driven_development/password_validator.dart';
import 'package:test/test.dart';

void main() {
  test("at least 8 characters", () {
    final password = PasswordValidator();
    password.add_password("password");
    final result = password.password_length();
    expect(result, true);
  });

  test("contains upper + lower case", () {
    final password = PasswordValidator();
    password.add_password("Password");
    final result = password.upper_lower_case();
    expect(result, true);
  });

  test("contains digit", () {
    final password = PasswordValidator();
    password.add_password("Password123");
    final result = password.contains_digit();
    expect(result, true);
  });

  test("contains symbol", () {
    final password = PasswordValidator();
    password.add_password("Password123@");
    final result = password.contains_symbol();
    expect(result, true);
  });

  test("contains no spaces", () {
    final password = PasswordValidator();
    password.add_password("Password123@");
    final result = password.contains_no_spaces();
    expect(result, true);
  });
}
