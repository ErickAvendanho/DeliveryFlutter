import 'package:flutter/material.dart';
import 'package:flutter_delivery/main.dart';
import 'package:flutter_delivery/src/utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            _imageBaner(),
            _textFieldEmail(),
            _textFieldContrasena(),
            _elevatedButtonIngresar(),
            _rowText(),
          ],
        ),
      ),
    );
  }

  Widget _imageBaner() {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child: Image.asset(
        'assets/img/delivery.png',
        width: 200,
        height: 200,
      ),
    );
  }

  Widget _elevatedButtonIngresar() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Ingresar'),
        style: ElevatedButton.styleFrom(
            primary: MyColors.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.symmetric(vertical: 15)),
      ),
    );
  }

  Widget _textFieldContrasena() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Contrasena',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            prefixIcon: Icon(
              Icons.lock,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }

  Widget _rowText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No tienes cuenta?',
          style: TextStyle(
            color: MyColors.primaryColor,
          ),
        ),
        const SizedBox(width: 7),
        Text(
          'Registrate',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: MyColors.primaryColor,
          ),
        ),
      ],
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Correo electronico',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            prefixIcon: Icon(
              Icons.mail,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }
}
