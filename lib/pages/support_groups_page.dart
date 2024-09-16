import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportGroupsPage extends StatelessWidget {
  final List<Map<String, String>> supportGroups = [
    {'name': 'Anxiety Support Group', 'contact': '9965875931'},
    {'name': 'Depression Support Group', 'contact': '8655943215'},
    {'name': 'Grief Support Group', 'contact': '7569841236'},
    {'name': 'Cancer Support Group', 'contact': '9999666615'},
    {'name': 'Quit Smoking Support Group', 'contact': '5691586455'},
    {'name': 'Mens Support Group', 'contact': '6996648951'},
    {'name': 'Women Support Group', 'contact': '48759641588'},
    {'name': 'Student Support Group', 'contact': '8898745628'},
    {'name': 'Quit Alcohol Support Group', 'contact': '7896451385'},
    
    
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support Groups'),
      ),
      body: ListView.builder(
        itemCount: supportGroups.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(supportGroups[index]['name']!),
            subtitle: Text(supportGroups[index]['contact']!),
            trailing: IconButton(
              icon: Icon(Icons.phone),
              onPressed: () => launch('tel:${supportGroups[index]['contact']}'),
            ),
          );
        },
      ),
    );
  }
}
