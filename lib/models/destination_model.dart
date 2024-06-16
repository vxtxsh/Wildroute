
import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/gokarna11.jpg',
    name: 'Gokarna',
    type: '',
    startTimes: ['9:00 am', '6:00 pm'],
    rating: 5,
    price: 300,
  ),
  Activity(
    imageUrl: 'assets/images/rishikesh1.avif',
    name: 'Rishikesh',
    type: '',
    startTimes: ['11:00 am', '5:00 pm'],
    rating: 4,
    price: 410,
  ),
  Activity(
    imageUrl: 'assets/images/dandeli.jpg',
    name: 'Dandeli',
    type: '',
    startTimes: ['9:30 pm', '6:00 pm'],
    rating: 4,
    price: 325,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/rafting.jpg',
    city: 'River Rafting',
    country: 'Italy',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/hiking.webp',
    city: 'Hiking',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/camping.webp',
    city: 'Camping',
    country: 'India',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/treking.jpg',
    city: 'Treking',
    country: 'Brazil',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/fishing.jpg',
    city: 'Fishing',
    country: 'United States',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
