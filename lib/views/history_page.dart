import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iTalk/controllers/controller.dart';

class HistoryPage extends StatelessWidget {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              for (var item in box.read('history'))
                Column(
                  children: [
                    Text(
                      item,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                  ],
                ),
            ],
          ),
          // child: (Text("${box.read('history')}")),
        ),
      ),
    );
  }
}
