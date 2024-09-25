import 'package:flutter/material.dart';
import 'package:k1/Models/Account.dart';
import 'package:k1/Repositories/DataSources.dart';
import 'package:k1/UI/SuppliersPage.dart';


class LoginService {

  List<Account> accounts = DataSources().getAccounts();

  bool isValidAccount(String email, String password) {
    for (var account in accounts) {
      if (account.email == email) {
        return account.password == password;
      }
    }
    return false;
  }

  void submitForm(BuildContext context, GlobalKey<FormState> formKey, String email, String password) {
    if (formKey.currentState!.validate()) {
      bool accountExists = false;
      for (var account in accounts) {
        if (account.email == email) {
          accountExists = true;
          if (account.password == password) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SuppliersPage()),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Неверный пароль')),
            );
          }
          break;
        }
      }
      if (!accountExists) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Пользователь не найден. Зарегистрируйтесь.')),
        );
      }
    }
  }
}