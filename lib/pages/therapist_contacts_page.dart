import 'package:flutter/material.dart'; 
import 'package:url_launcher/url_launcher.dart';

class TherapistContactsPage extends StatelessWidget {
  final List<Map<String, String>> therapists = [
    {'name': 'Dr. John Doe', 'contact': '1-800-321-9876'},
    {'name': 'Dr. Jane Smith', 'contact': '1-800-654-3210'},
    {'name': 'Dr. Alice Brown', 'contact': '1-800-222-1234'},
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
