

class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;
  double latitude;
  double longitude;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
    required this.latitude,
    required this.longitude,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/darjeeling.jpg',
    name: 'Darjeeling',
    address: '404 Great St',
    price: 175,
    latitude: 27.036007, 
    longitude: 88.262672, 
  ),
  Hotel(
    imageUrl: 'assets/images/manali.jpg',
    name: 'Manali',
    address: '404 Great St',
    price: 300,
    latitude: 32.2396,
    longitude: 77.1887,
  ),
  Hotel(
    imageUrl: 'assets/images/rishikesh.jpg',
    name: 'Rishikesh',
    address: '404 Great St',
    price: 240,
    latitude: 30.0869,
    longitude: 78.2676,
  ),
];
