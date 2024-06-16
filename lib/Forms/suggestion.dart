
import 'package:flutter/material.dart';
import 'package:wild_route/Forms/model1.dart';
import 'package:wild_route/models/hotel_model.dart';


class RecommendationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String favDestination = args['favDestination'];
    final bool highRiskAdventure = args['highRiskAdventure'];
    final String ngoExperience = args['ngoExperience'];
    final bool volunteeringInterest = args['volunteeringInterest'];
    final String placePreference = args['placePreference'];
    final int budget = args['budget'];
    final String preferredActivities = args['preferredActivities'];
    final bool interestedInEvents = args['interestedInEvents'];
    final String preferredClimate = args['preferredClimate'];
    final bool interestedInCulturalActivities = args['interestedInCulturalActivities'];

   

final List<Hotel> recommendedHotels = hotels.where((hotel) {
  return hotel.price <= budget &&
         (placePreference == 'Both' || hotel.name.contains(placePreference)) &&
         (preferredClimate == 'Cool' ? hotel.name.contains('Cool') : true);
}).toList();

print('Recommended Hotels: $recommendedHotels');

final List<NGO> nearbyNGOs = ngos.where((ngo) {
  return ngo.categories.contains('Education') &&
         (highRiskAdventure ? ngo.categories.contains('Human Rights') : true) &&
         (volunteeringInterest ? ngo.categories.contains('Community Development') : true) &&
         (interestedInEvents ? ngo.categories.contains('Events') : true) &&
         (interestedInCulturalActivities ? ngo.categories.contains('Cultural') : true);
}).toList();

print('Nearby NGOs: $nearbyNGOs');

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Recommendations'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recommended Destinations',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: recommendedHotels.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(recommendedHotels[index].name),
                    subtitle: Text(recommendedHotels[index].address),
                  );
                },
              ),
              SizedBox(height: 20),
              Text(
                'Nearby NGOs',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: nearbyNGOs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(nearbyNGOs[index].name),
                    subtitle: Text(nearbyNGOs[index].categories.join(', ')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
