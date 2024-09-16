import 'package:flutter/material.dart';
class SymptomsPage extends StatelessWidget {
  final List<String> symptoms = [
    'Persistent sadness or low mood',
    'Difficulty concentrating or making decisions',
    'Loss of interest in activities once enjoyed',
    'Excessive worry or anxiety',
    'Feeling hopeless or helpless',
    'Changes in sleep patterns (insomnia or oversleeping)',
    'Significant changes in appetite or weight',
    'Feeling irritable or easily angered',
    'Physical symptoms like headaches or stomachaches',
    'Thoughts of self-harm or suicide (seek help immediately)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symptoms of Poor Mental Health'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: symptoms.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.warning),
              title: Text(symptoms[index]),
            );
          },
        ),
      ),
    );
  }
}
