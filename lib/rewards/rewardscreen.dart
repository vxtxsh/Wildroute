import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../rewards/rewards_provider.dart';
import '../rewards/reward.dart';

class RewardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rewards'),
      ),
      body: Center(
        child: Consumer<RewardsProvider>(
          builder: (context, rewardsProvider, _) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You have ${rewardsProvider.points} points!',
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () async {
                  await rewardsProvider.takePicture();
                },
                child: Text('Take a Picture'),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: rewardsProvider.rewards.length,
                  itemBuilder: (context, index) {
                    final reward = rewardsProvider.rewards[index];
                    return ListTile(
                      leading: Image.file(File(reward.imagePath)),
                      title: Text('Reward Points: ${reward.points}'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
