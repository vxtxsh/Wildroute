import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:wild_route/models/hotel_model.dart';

class HotelDetailPage extends StatefulWidget {
  final Hotel hotel;

  HotelDetailPage({required this.hotel});

  @override
  _HotelDetailPageState createState() => _HotelDetailPageState();
}

class _HotelDetailPageState extends State<HotelDetailPage> {
  bool _showMap = false;
  bool _showPackages = false;
  bool _showRules = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Hotel Details', style: TextStyle(color: Colors.grey)),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                widget.hotel.imageUrl,
                width: double.infinity,
                height: 300.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20.0),
              Text(
                widget.hotel.name,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Builder(
                    builder: (context) {
                      return _buildOption(context, 'Travel', Icons.travel_explore, () {
                        setState(() {
                          _showMap = !_showMap;
                          _showPackages = false;
                          _showRules = false;
                        });
                      });
                    },
                  ),
                  Builder(
                    builder: (context) {
                      return _buildOption(context, 'Packages', Icons.card_giftcard, () {
                        setState(() {
                          _showPackages = !_showPackages;
                          _showMap = false;
                          _showRules = false;
                        });
                      });
                    },
                  ),
                  _buildOption(context, 'Volunteering', Icons.volunteer_activism, () {
                    setState(() {
                      _showPackages = false;
                      _showMap = false;
                      _showRules = false;
                      
                    });
                  }),
                  _buildOption(context, 'Rules', Icons.rule, () {
                    setState(() {
                      _showRules = !_showRules;
                      _showPackages = false;
                      _showMap = false;
                    });
                  }),
                ],
              ),
              SizedBox(height: 30.0),
              if (_showMap)
                Container(
                  height: 300.0,
                  width: double.infinity,
                  child: FlutterMap(
                    options: MapOptions(
                      center: LatLng(widget.hotel.latitude, widget.hotel.longitude),
                      zoom: 15.0,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: ['a', 'b', 'c'],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(widget.hotel.latitude, widget.hotel.longitude),
                            builder: (ctx) => Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 40.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              if (_showPackages) _buildPackages(),
              if (_showRules) _buildRules(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOption(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, size: 30.0, color: Colors.grey),
          SizedBox(height: 5.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPackages() {
    return Column(
      children: [
        ListTile(
          title: Text('Mountain Adventure Package', style: TextStyle(color: Colors.grey)),
          subtitle: Text('Travel Company: AdventureCo\nPrice: \$500', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          title: Text('Beach Relaxation Package', style: TextStyle(color: Colors.grey)),
          subtitle: Text('Travel Company: RelaxTours\nPrice: \$300', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          title: Text('City Exploration Package', style: TextStyle(color: Colors.grey)),
          subtitle: Text('Travel Company: UrbanAdventures\nPrice: \$400', style: TextStyle(color: Colors.grey)),
        ),
      ],
    );
  }

  Widget _buildRules() {
    return Column(
      children: [
        ListTile(
          title: Text('Safety Guidelines', style: TextStyle(color: Colors.grey)),
          subtitle: Text('Follow local safety guidelines during your stay.', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          title: Text('Respect Local Customs', style: TextStyle(color: Colors.grey)),
          subtitle: Text('Be respectful of local customs and traditions.', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          title: Text('Adhere to Regulations', style: TextStyle(color: Colors.grey)),
          subtitle: Text('Adhere to local regulations and laws.', style: TextStyle(color: Colors.grey)),
        ),
      ],
    );
  }
}
