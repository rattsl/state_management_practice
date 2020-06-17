import 'package:flutter/material.dart';
import 'package:flutterapp/book_list_page.dart';
import 'package:flutterapp/main_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Provider pattern'
            ),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
              return Center(
                child: Column(
                  children: <Widget>[
                    Text(model.text),
                    RaisedButton(
                      child: Text("button"),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BookListPage()),
                        );
                      },
                    )
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}



