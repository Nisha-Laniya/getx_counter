import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

var count = 0.obs;

void increament() {
    count++;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter With Getx'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text('Counter value is $count',style: TextStyle(fontSize: 30),),),
              ElevatedButton(
                  onPressed: () {
                    increament();
                  },
                  child: Text('Increament')
              )
            ],
          ),
        ),
      ),
    );
  }
}

