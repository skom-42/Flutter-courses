import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
  }

  getLocation()async{
    Location geo = Location();
    await geo.getCurrentLocation();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

}