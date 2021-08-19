import 'package:flutter/material.dart';

class AddCallScreen extends StatefulWidget {
  @override
  _AddCallScreenState createState() => _AddCallScreenState();
}

class _AddCallScreenState extends State<AddCallScreen> {
  final _formKey = GlobalKey<FormState>();
  String _customerName = '';
  String _customerNumber = '';
  String _companyName = '';
  String _callType = '';
  String _description = '';
  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back_ios_rounded,
                    size: 30.0, color: Theme.of(context).primaryColor)),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Add call',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
    );
  }
}
