import 'package:flutter/material.dart';


void main() {
  runApp(ConstitutionApp());
}

class ConstitutionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Schedules in Indian Constitution'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Description about Schedules in Indian Constitution:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'The Indian Constitution contains a set of appendices known as Schedules. These schedules cover a variety of topics ranging from the allocation of seats in the Rajya Sabha to the lists of states and union territories. They provide additional details and specifications to the main body of the Constitution.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Key Features:',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '- There are currently 12 schedules in the Indian Constitution.',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '- Each schedule serves a specific purpose and contains provisions relevant to that purpose.',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '- Schedules cover various aspects such as the allocation of seats in legislatures, forms for oaths, and provisions related to tribal areas.',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '- Amendments to the Constitution may also include changes to existing schedules or the addition of new ones.',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
