import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

class  signIn extends StatelessWidget {
  const signIn ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In '),
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
            icon: Icon(Icons.assignment_ind),
            disabledColor: Colors.cyan,
            focusColor: Colors.orange.withOpacity(0.3),
            onPressed: (){},
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your name-surname:',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your e-mail',
                  ),
                ),
              ),
              TextButton(
                onPressed: (){},
                  child: Text('Ekle'),
              ),
            ],
        ),
      ),
    );
  }
}
