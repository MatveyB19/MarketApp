class LoginValidator {
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Пожалуйста, введите email';
    }
    const pattern = r'^[\w-\.]+@(gmail\.com|mail\.ru|yandex\.(ru|com|by|kz|ua)|list\.ru|inbox\.ru|bk\.ru|ya\.ru)$';
    final regExp = RegExp(pattern, caseSensitive: false);
    if (!regExp.hasMatch(value)) {
      return 'Введите корректный email';
    }
    return null;
  }

  String? validatePasswordField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Пожалуйста, введите пароль';
    }
    return null;
  }
}
