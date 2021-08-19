import 'package:flutter/material.dart';
import 'package:support_app/screens/add_call_screen.dart';

class CallListScreen extends StatefulWidget {
  @override
  _CallListScreenState createState() => _CallListScreenState();
}

class _CallListScreenState extends State<CallListScreen> {
  Widget _buildCall(int index) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(children: <Widget>[
          ListTile(
            title: Text('Call Title'),
            subtitle: Text("When call is logged"),
          ),
          Divider(),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => AddCallScreen())),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 80.0),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('My Calls',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10.0),
                      Text('call count',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600)),
                    ]));
          }
          return _buildCall(index);
        },
      ),
    );
  }
}
