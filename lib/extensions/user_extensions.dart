import 'package:lesson_8_b28/model/user_model.dart';

extension UserExtensions on User {
  String showInfo() {
    return "$name, $email";
  }
}