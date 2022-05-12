import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_delivery/src/pages/restaurant/categories/create/restaurant_categories_create_controller.dart';
import 'package:flutter_delivery/src/utils/my_colors.dart';

class RestaurantCategoriesCreatePage extends StatefulWidget {
  const RestaurantCategoriesCreatePage({Key key}) : super(key: key);

  @override
  _RestaurantCategoriesCreatePageState createState() =>
      _RestaurantCategoriesCreatePageState();
}

class _RestaurantCategoriesCreatePageState
    extends State<RestaurantCategoriesCreatePage> {
  RestaurantCategoriesCreateController _con =
      new RestaurantCategoriesCreateController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context, refresh);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nueva categoría'),
        backgroundColor: MyColors.primaryColor,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          _textFieldName(),
          _textFieldDescription(),
        ],
      ),
      bottomNavigationBar: _buttonCreate(),
    );
  }

  Widget _textFieldName() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: _con.nameController,
        decoration: InputDecoration(
          hintText: 'Nombre de la categoria',
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15),
          hintStyle: TextStyle(color: MyColors.primaryColorDark),
          suffixIcon: Icon(
            Icons.list_alt,
            color: MyColors.primaryColor,
          ),
        ),
        cursorColor: MyColors.primaryColor,
        textInputAction: TextInputAction.next,
      ),
    );
  }

  Widget _textFieldDescription() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: _con.descriptionController,
        maxLines: 3,
        maxLength: 255,
        decoration: InputDecoration(
          hintText: 'Descripcion de la categoria',
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15),
          hintStyle: TextStyle(color: MyColors.primaryColorDark),
          suffixIcon: Icon(
            Icons.description,
            color: MyColors.primaryColor,
          ),
        ),
        cursorColor: MyColors.primaryColor,
        textInputAction: TextInputAction.next,
      ),
    );
  }

  Widget _buttonCreate() {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: ElevatedButton(
        onPressed: _con.createCategory,
        child: const Text('Crear categoria'),
        style: ElevatedButton.styleFrom(
            primary: MyColors.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.symmetric(vertical: 15)),
      ),
    );
  }

  void refresh() {
    setState(() {});
  }
}
