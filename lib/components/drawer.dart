import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                'Vendendo Moda  ♥',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontFamily: 'Caveat-VariableFont',
                      fontSize: 25),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.wallet_giftcard),
            title: Text('Meus Pedidos'),
          ),
          ListTile(
            leading: Icon(Icons.wysiwyg),
            title: Text('Política de Privacidade'),
          ),
          ListTile(
            leading: Icon(Icons.announcement_outlined),
            title: Text('Termos de uso'),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Ajuda'),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair do App'),
          )
        ],
      ),
    );
  }
}
