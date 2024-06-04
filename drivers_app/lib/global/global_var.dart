import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


String userName = "";

// String googleMapKey = "paste your key here";

String googleMapKey = "AIzaSyDuDxriw8CH8NbVLiXtKFQ2Nb64AoRSdyg";
// String serverKeyFCM =  "key=AAAAenFnGus:APA91bFfsed3QVkaFEn8kbJZ18QcfvjUT0zWWH9eO8SGkwhaTRv0cUJAG708tIwrR1Qg9K2hJUJncQ7FeToRPbP9hNe0WxLo3fRDijkxw705vw-Hhbk7ZtWkr-_HQRHTX_fQkgj3te-5";


const CameraPosition googlePlexInitialPosition = CameraPosition(
  target: LatLng(37.42796133580664, -122.085749655962),
  zoom: 14.4746,
);

StreamSubscription<Position>? positionStreamHomePage;
StreamSubscription<Position>? positionStreamNewTripPage;

int driverTripRequestTimeout = 20;

final audioPlayer = AssetsAudioPlayer();

Position? driverCurrentPosition;

String driverName = "";
String driverPhone = "";
String driverPhoto = "";
String carColor = "";
String carModel = "";
String carNumber = "";