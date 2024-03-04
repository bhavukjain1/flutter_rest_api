import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Example'),
      ),
      body: Center(
        child: FetchButton(), // Use FetchButton widget to display the button
      ),
    );
  }
}

class FetchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        fetchUserData(); // Call fetchUserData function when the button is tapped
      },
      child: Text('Fetch User Data'),
    );
  }
}

void fetchUserData() async {
  Dio dio = Dio();
  try {
    Response response = await dio.get('https://bhavukjain.com/');
    print(response.data);
    // You can process the response data here
  } catch (e) {
    print('Error occurred: $e');
  }
}
