import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  final  String title;

  const MyStatefulWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),

      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              currentAccountPictureSize: Size.square(85.0),
              accountName: Text("İrem Erdoğan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              accountEmail: Text("irmerdgn06@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://icon-library.com/images/newspaper-icon-png/newspaper-icon-png-16.jpg'),
                backgroundColor: Colors.white,
              ),
            ),
            Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.tag_faces, size: 30.0,),
                  tooltip: 'Smile',
                  onPressed: () {},
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: new Text("Ana Sayfa",
                    style: TextStyle(fontSize: 18),),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pushNamed(context, '/AnaSayfa');
                  },
                ),
                ExpansionTile(
                  leading: Icon(Icons.category_outlined),
                  title: Text("Kategoriler",
                    style: TextStyle(fontSize: 18),),
                  trailing: Icon(Icons.arrow_drop_down_circle_outlined),
                  children: [
                    ListTile(
                      title: new Text("Hava Durumu",
                        style: TextStyle(fontSize: 18),),
                      leading: Icon(Icons.wb_sunny),
                      onTap: () {
                        Navigator.pushNamed(context, '/HavaDurumu');
                      },
                    ),
                    Divider(
                      height: 0.1,
                    ),
                    ListTile(
                        title: new Text("Finans",
                          style: TextStyle(fontSize: 18),),
                        leading: new Icon(Icons.data_thresholding_outlined),
                        onTap: () {
                          Navigator.pushNamed(context, '/Finans');
                        }
                    ),
                  ],
                ),
                ListTile(
                    title: new Text("En Yeniler",
                      style: TextStyle(fontSize: 18),),
                    leading: new Icon(Icons.newspaper),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      Navigator.pushNamed(context, '/EnYeniler');
                    }
                ),
                ListTile(
                    title: new Text("Favorilerim",
                      style: TextStyle(fontSize: 18),),
                    leading: new Icon(Icons.favorite_border_rounded),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {
                      Navigator.pushNamed(context, '/Favoriler');
                    }
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}