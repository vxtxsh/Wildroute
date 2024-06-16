import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import '../rewards/reward.dart';

class RewardsProvider with ChangeNotifier {
  int _points = 0;
  List<Reward> _rewards = [];

  int get points => _points;
  List<Reward> get rewards => _rewards;

  void addReward(String imagePath, int points) {
    _rewards.add(Reward(imagePath: imagePath, points: points));
    _points += points;
    notifyListeners();
  }

  Future<void> takePicture() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      addReward(pickedFile.path, 500);
    } else {
      print('No image selected.');
    }
  }
}
