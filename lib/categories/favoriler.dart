import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

class  favoriler extends StatelessWidget {
  const favoriler ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorilerim '),
        centerTitle: true,
        actions: <Widget>[
          FavoriteButton(
            isFavorite: false,
            iconColor: Colors.red,
            iconDisabledColor: Colors.white24,
            valueChanged: (_isFavorite) {
              print('Is Favorite : $_isFavorite');
            },
    ),
          IconButton(
            icon: Icon(Icons.favorite_border_rounded),
            disabledColor: Colors.black54,
            focusColor: Colors.orange.withOpacity(0.3),

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
          ],
        ),
      ),
    );
  }

}