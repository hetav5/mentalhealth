import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; 

import 'pages/support_groups_page.dart';
import 'pages/coping_mechanisms_page.dart';
import 'pages/therapist_contacts_page.dart';
import 'pages/symptoms_page.dart';

void main() {
  runApp(MentalHealthApp());
}

class MentalHealthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Health Accessibility',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mental Health Accessibility'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          HomeButton(
            title: 'Meditation Guide',
            description: 'Follow guided meditation to relax.',
            icon: Icons.self_improvement,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MeditationGuidePage()),
            ),
          ),
          HomeButton(
            title: 'Mental Health Hotlines',
            description: 'Emergency numbers for mental health support.',
            icon: Icons.phone,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HotlineNumbersPage()),
            ),
          ),
          HomeButton(
            title: 'Support Groups',
            description: 'Contact details for mental health support groups.',
            icon: Icons.group,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SupportGroupsPage()),
            ),
          ),
          HomeButton(
            title: 'Coping Mechanisms',
            description: 'Things to do when feeling low.',
            icon: Icons.favorite,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CopingMechanismsPage()),
            ),
          ),
          HomeButton(
            title: 'Therapist Contacts',
            description: 'Find therapists near you.',
            icon: Icons.medical_services,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TherapistContactsPage()),
            ),
          ),
          HomeButton(
            title: 'Symptoms of Poor Mental Health',
            description: 'Learn to recognize the signs of mental health issues.',
            icon: Icons.warning,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SymptomsPage()),
            ),
          ),
        ],
      ),
    );
  }
}


class HomeButton extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onPressed;

  HomeButton({
    required this.title,
    required this.description,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon, size: 40.0),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        onTap: onPressed,
      ),
    );
  }
}


class MeditationGuidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meditation Guide'),
      ),
      body: Center(
        child: Text(
          '1. Find a comfortable place.\n'
          '2. Close your eyes and focus on your breathing.\n'
          '3. Inhale deeply, exhale slowly.\n'
          '4. Let go of thoughts and focus on your breath.',
          style: TextStyle(fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}


class HotlineNumbersPage extends StatelessWidget {
  final List<Map<String, String>> hotlines = [
    {'name': 'National Suicide Prevention Hotline', 'number': '1-800-273-8255'},
    {'name': 'Mental Health Hotline', 'number': '1-800-123-4567'},
  ];

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mental Health Hotlines'),
      ),
      body: ListView.builder(
        itemCount: hotlines.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(hotlines[index]['name']!),
            subtitle: Text(hotlines[index]['number']!),
            trailing: IconButton(
              icon: Icon(Icons.phone),
              onPressed: () => _makePhoneCall('tel:${hotlines[index]['number']}'),
            ),
          );
        },
      ),
    );
  }
}
