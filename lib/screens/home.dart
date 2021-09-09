import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_fashion_sales_app/components/drawer.dart';
import 'package:project_fashion_sales_app/screens/body.dart';

class Home extends StatefulWidget {
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
                Icons.shopping_cart_outlined,
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
      body: Body(),
      drawer: DrawerMenu(),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15.0,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/vitrineIcone.svg",
                width: 30, color: Colors.grey),
            label: 'Mostruário',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/promocoesIcone.svg",
                width: 30, color: Colors.grey),
            label: 'Promoções',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.grey),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/descontosIcone.svg",
                width: 33, color: Colors.grey),
            label: 'Descontos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent[200],
        onTap: _onItemTapped,
      ),
    );
  }
}

class ScrollListener extends ChangeNotifier {
  double bottom = 0;
  double _last = 0;

  ScrollListener.initialise(ScrollController controller, [double height = 56]) {
    controller.addListener(() {
      final current = controller.offset;
      bottom += _last - current;
      if (bottom <= -height) bottom = -height;
      if (bottom >= 0) bottom = 0;
      _last = current;
      if (bottom <= 0 && bottom >= -height) notifyListeners();
    });
  }
}
