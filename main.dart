void main() {
  var response = login(email: "dev@dev", password: "12345678");
  print(response);
}

String login({String? email, String? password}) {
  final isValid = validateLogin(email: email, password: password);
  if (isValid) {
    return (email == "dev@dev" && password == "12345678") == true
        ? "Login com sucesso!"
        : "Email e/ou senha inválidos!";
  }
  return "Validação foi inválida!";
}

bool validateLogin({String? email, String? password}) =>
    validateEmail(email) && validatePassword(password);

bool validateEmail(String? email) => email != null && email.contains("@");
bool validatePassword(String? password) =>
    password != null && password.length >= 8;
