import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

class  finans extends StatelessWidget {
  const finans ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finans'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.euro),
              disabledColor: Colors.red,
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.monetization_on),
              disabledColor: Colors.green,
              onPressed: (){},
            ),
          ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FavoriteButton(
              isFavorite: false,
              iconColor: Colors.pink,
              iconDisabledColor: Colors.purpleAccent,
              valueChanged: (_isFavorite) {
                print('Is Favorite : $_isFavorite');
              },
            ),
          ],
        ),
      ),
    );
  }
}