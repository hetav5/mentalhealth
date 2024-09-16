import 'package:flutter/material.dart'; 
import 'package:url_launcher/url_launcher.dart';

class TherapistContactsPage extends StatelessWidget {
  final List<Map<String, String>> therapists = [
    {'name': 'Dr. Sunita Shetty', 'contact': '9925066569'},
    {'name': 'Dr. Jaya Kumar', 'contact': '9775586410'},
    {'name': 'Dr. Harish Prasad', 'contact': '9822541616'},
    {'name': 'Dr. Tejal Shah', 'contact': '7948621359'},
    {'name': 'Dr. Joseph', 'contact': '65432971252'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Therapist Contacts'),
      ),
      body: ListView.builder(
        itemCount: therapists.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(therapists[index]['name']!),
            subtitle: Text(therapists[index]['contact']!),
            trailing: IconButton(
              icon: Icon(Icons.phone),
              onPressed: () => launch('tel:${therapists[index]['contact']}'),
            ),
          );
        },
      ),
    );
  }
}
