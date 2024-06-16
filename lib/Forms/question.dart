
import 'package:flutter/material.dart';

class QuestionnairePage extends StatefulWidget {
  @override
  _QuestionnairePageState createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage> {
  final _formKey = GlobalKey<FormState>();
  String _favDestination = 'Mountains';
  bool _highRiskAdventure = false;
  String _ngoExperience = 'None';
  bool _volunteeringInterest = false;
  String _placePreference = 'Hilltops';
  int _budget = 1000;
  String _preferredActivities = 'Hiking';
  bool _interestedInEvents = false;
  String _preferredClimate = 'Cool';
  bool _interestedInCulturalActivities = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Questionnaire'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Favorite Destination'),
                value: _favDestination,
                items: ['Mountains', 'Beaches', 'Cities', 'Forests'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _favDestination = newValue!;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Do you like high-risk adventure?'),
                value: _highRiskAdventure,
                onChanged: (newValue) {
                  setState(() {
                    _highRiskAdventure = newValue;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Experience in NGO'),
                onChanged: (newValue) {
                  setState(() {
                    _ngoExperience = newValue;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Interested in Volunteering?'),
                value: _volunteeringInterest,
                onChanged: (newValue) {
                  setState(() {
                    _volunteeringInterest = newValue;
                  });
                },
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Hilltops or Beaches'),
                value: _placePreference,
                items: ['Hilltops', 'Beaches', 'Both'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _placePreference = newValue!;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Budget'),
                keyboardType: TextInputType.number,
                onChanged: (newValue) {
                  setState(() {
                    _budget = int.parse(newValue);
                  });
                },
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Preferred Activities'),
                value: _preferredActivities,
                items: ['Hiking', 'Swimming', 'Sightseeing', 'Cultural Tours', 'Wildlife Safari'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _preferredActivities = newValue!;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Interested in Events?'),
                value: _interestedInEvents,
                onChanged: (newValue) {
                  setState(() {
                    _interestedInEvents = newValue;
                  });
                },
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Preferred Climate'),
                value: _preferredClimate,
                items: ['Cool', 'Warm', 'Temperate'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _preferredClimate = newValue!;
                  });
                },
              ),
              SwitchListTile(
                title: Text('Interested in Cultural Activities?'),
                value: _interestedInCulturalActivities,
                onChanged: (newValue) {
                  setState(() {
                    _interestedInCulturalActivities = newValue;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(
                      context,
                      '/recommendation',
                      arguments: {
                        'favDestination': _favDestination,
                        'highRiskAdventure': _highRiskAdventure,
                        'ngoExperience': _ngoExperience,
                        'volunteeringInterest': _volunteeringInterest,
                        'placePreference': _placePreference,
                        'budget': _budget,
                        'preferredActivities': _preferredActivities,
                        'interestedInEvents': _interestedInEvents,
                        'preferredClimate': _preferredClimate,
                        'interestedInCulturalActivities': _interestedInCulturalActivities,
                      },
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
