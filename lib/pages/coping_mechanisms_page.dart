import 'package:flutter/material.dart';
class CopingMechanismsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coping Mechanisms'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.nature_people),
              title: Text('Go for a Walk'),
              subtitle: Text('Walking can help clear your mind.'),
            ),
            ListTile(
              leading: Icon(Icons.library_music),
              title: Text('Listen to Soothing Music'),
              subtitle: Text('Music can elevate your mood.'),
            ),
            ListTile(
              leading: Icon(Icons.brush),
              title: Text('Engage in a Creative Activity'),
              subtitle: Text('Draw, write, or create something.'),
            ),
            ListTile(
              leading: Icon(Icons.bathtub),
              title: Text('Take a Relaxing Bath'),
              subtitle: Text('Warm water can soothe the body and mind.'),
            ),
          ],
        ),
      ),
    );
  }
}
