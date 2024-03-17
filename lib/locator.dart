import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationCheckerWidget extends StatefulWidget {
  @override
  _LocationCheckerWidgetState createState() => _LocationCheckerWidgetState();
}

class _LocationCheckerWidgetState extends State<LocationCheckerWidget> {
  final double targetLatitude = 37.7749;
  final double targetLongitude = -122.4194;
  final double threshold = 100; // Adjust as needed (in meters)

  String message = '';

  @override
  void initState() {
    super.initState();
    checkLocation();
  }

  Future<void> checkLocation() async {
    try {
      // Get current position
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      // Calculate distance between current position and target location
      double distance = await Geolocator.distanceBetween(
        position.latitude,
        position.longitude,
        targetLatitude,
        targetLongitude,
      );

      // Check if the user is within the specified range
      if (distance <= threshold) {
        setState(() {
          message = 'You are in place (within $threshold meters)';
        });
      } else {
        setState(() {
          message = 'You are not in place (distance: $distance meters)';
        });
      }
    } catch (e) {
      setState(() {
        message = 'Error: ${e.toString()}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Checker'),
      ),
      body: Center(
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
