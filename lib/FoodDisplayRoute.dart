import 'package:flutter/material.dart';
import 'Objects/Store.dart';
import 'Objects/Hours.dart';

class FoodDisplayRoute extends StatefulWidget {
  FoodDisplayRoute({Key key, this.title}) : super(key: key);
  final double margin = 8;
  final String title;
  @override
  _FoodDisplayRouteState createState() => _FoodDisplayRouteState();
}

class _FoodDisplayRouteState extends State<FoodDisplayRoute> {
  List<Store> stores;
  List<String> filters;
  void initState() {
    super.initState();
    filters = List();
    stores = List();
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        //centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            /* Container(
              margin: EdgeInsets.all(widget.margin),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Filters:",
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 8.0,
                        children: buildFiltersList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.brown,
              height: 0,
            ),*/
            /*Expanded(
              child: ListView(
                children: <Widget>[],
              ),
            ),*/
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  List<Widget> buildFiltersList() {
    return [
      Chip(
        label: Text('UTM'),
      ),
      Chip(
        label: Text('Open'),
      )
    ];
  }

  BottomNavigationBar buildBottomNavigationBar() {
    List<BottomNavigationBarItem> items = List();
    // items.add(BottomNavigationBarItem(
    //   icon: Icon(Icons.all_inclusive),
    //   title: Text("All"),
    // ));
    items.add(BottomNavigationBarItem(
      icon: Icon(Icons.book),
      title: Text("UTM"),
    ));
    items.add(BottomNavigationBarItem(
      icon: Icon(Icons.book),
      title: Text("UTSG"),
    ));
    items.add(BottomNavigationBarItem(
      icon: Icon(Icons.book),
      title: Text("UTSC"),
    ));
    BottomNavigationBar nav = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.red,
      items: items,
    );
    return nav;
  }
}
