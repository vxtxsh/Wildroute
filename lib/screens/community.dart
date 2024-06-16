import 'package:flutter/material.dart';

class CommunityForum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Forum'),
      ),
      body: ListView.builder(
        itemCount: 5, 
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text('Trip Blog ${index + 1}'), 
              subtitle: Text('Author: User'), 
              onTap: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BlogDetails()), 
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class BlogDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Adventure Trip Blog',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '',
              style: TextStyle(fontSize: 16.0),
            ),
            
          ],
        ),
      ),
    );
  }
}