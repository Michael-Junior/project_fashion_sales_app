import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_fashion_sales_app/components/categories.dart';
import 'package:project_fashion_sales_app/components/drawer.dart';
import 'package:project_fashion_sales_app/models/constants.dart';
import 'package:project_fashion_sales_app/models/product.dart';
import 'package:project_fashion_sales_app/screens/body.dart';

class Home extends StatefulWidget {
  final Product product = new Product();

  Home({Key? key, required this.title, this.titleComplement = ''})
      : super(key: key);

  final String title;
  final String titleComplement;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  ScrollController _hideBottomNavController = ScrollController();

  bool _isVisible = true;

  @override
  initState() {
    super.initState();
    _isVisible = true;
    _hideBottomNavController = ScrollController();
    _hideBottomNavController.addListener(
      () {
        if (_hideBottomNavController.position.userScrollDirection ==
            ScrollDirection.reverse) {
          if (_isVisible)
            setState(() {
              _isVisible = false;
            });
        }
        if (_hideBottomNavController.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (!_isVisible)
            setState(() {
              _isVisible = true;
            });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.redAccent[200],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.account_circle, size: 30.0,
                  //color: Colors.blueGrey,
                )),
          ],
          title: Row(
            children: [
              Text(widget.title,
                  style: TextStyle(
                      color: Colors.redAccent[200],
                      fontFamily: 'Caveat-VariableFont',
                      fontSize: 25)),
              Text(
                widget.titleComplement,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        body: Body(_hideBottomNavController),
        drawer: DrawerMenu(),
        bottomNavigationBar: AnimatedContainer(
            color: Colors.redAccent,
            duration: Duration(milliseconds: 400),
            height: _isVisible ? 56.0 : 0.0,
            child: Wrap(children: <Widget>[
              BottomNavigationBar(
                backgroundColor: Colors.redAccent,
                selectedFontSize: 12.0,
                showSelectedLabels: true,
                unselectedItemColor: Colors.grey,
                showUnselectedLabels: true,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/icons/vitrineIcone.svg",
                        width: 30),
                    label: 'Mostruário',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/icons/descontosIcone.svg",
                        width: 30),
                    label: 'Promoções',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/icons/pesquisarIcone.svg",
                        width: 30),
                    label: 'Pesquisar',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset("assets/icons/carrinhoIcone.svg",
                        width: 30),
                    label: 'Carrinho',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.redAccent,
                onTap: _onItemTapped,
              ),
            ])));
  }
}
