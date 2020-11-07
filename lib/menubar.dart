import 'package:flutter/material.dart';
import 'package:staff/feedbacksent.dart';
import 'package:staff/pricechange.dart';
import 'package:staff/readytocollect.dart';
import 'package:staff/toprint.dart';
import 'settings.dart';
import 'history.dart';
class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('ORCHID PRINTINGS'),
              accountEmail: Text('myprintings@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text('ORCHID'),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
                leading: Icon(Icons.print),
                title: Text('To print'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ToPrint(),
                  ),);
                }
            ),
            ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Ready To Collect'),
                onTap: (){ Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ReadyToCollect(),
                ),);

                }
            ),
            ListTile(
                leading: Icon(Icons.history),
                title: Text('History'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => History(),
                  ),);

                }
            ),
            ListTile(
                leading: Icon(Icons.attach_money),
                title: Text('Price Change'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PriceChange(),
                  ),);
                }
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: (){Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Settings(),
                ),);

                }
            ),
            ListTile(
                leading: Icon(Icons.feedback),
                title: Text('feedback'),
                onTap: (){Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => feedbackSent(),
                ),);

                }
            ),
          ]
      ),
    );

  }
}
