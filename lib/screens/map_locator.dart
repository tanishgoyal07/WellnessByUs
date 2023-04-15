import 'dart:async';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/material.dart';
import 'package:indu_wellness/constants.dart';

class MapLocator extends StatefulWidget {
  LatLng? value;

  @override
  State<MapLocator> createState() => _MapLocatorState();
}

class _MapLocatorState extends State<MapLocator> {
  double lat = 28.6139;
  double long = 77.2090;

  Set<Marker> markers = {};
  Position initialPosition =
      Position.fromMap({'latitude': 28.6139, 'longitude': 77.2090});

  late GoogleMapController googleMapController;

  final _mapMarkerSC = StreamController<List<Marker>>();

  StreamSink<List<Marker>> get _mapMarkerSink => _mapMarkerSC.sink;

  Stream<List<Marker>> get mapMarkerStream => _mapMarkerSC.stream;

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(28.6139, 77.2090),
    zoom: 16,
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        title: const Text("Locate"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 250,
                // height: MediaQuery.of(context).size.height,
                child: GoogleMap(
                  zoomGesturesEnabled: true,
                  zoomControlsEnabled: false,
                  markers: markers,
                  mapType: MapType.normal,
                  myLocationButtonEnabled: true,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    googleMapController = controller;
                  },
                  onCameraMove: (CameraPosition newPosition) {
                    widget.value = newPosition.target;
                  },
                ),
              ),
              Positioned(
                left: width / 3.4,
                bottom: 20,
                child: SizedBox(
                  width: 170,
                  height: 30,
                  child: InkWell(
                    onTap: () async {
                      Position position = await _determinePosition();
                      lat = position.latitude;
                      long = position.longitude;

                      googleMapController.animateCamera(
                          CameraUpdate.newCameraPosition(CameraPosition(
                        target: LatLng(position.latitude, position.longitude),
                        zoom: 16,
                      )));

                      markers.clear();

                      markers.add(Marker(
                          markerId: const MarkerId('currentlocation'),
                          position:
                              LatLng(position.latitude, position.longitude)));

                      setState(() {});
                    },
                    child: Card(
                      elevation: 0.0,
                      margin: const EdgeInsets.only(
                        left: 6,
                        right: 2,
                      ),
                      borderOnForeground: true,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color(0xFF93C22F)),
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.my_location_rounded,
                              color: Color(0xFF93C22F),
                              size: 16,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Use current location",
                              style: TextStyle(
                                color: Color(0xFF93C22F),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool servicesEnabled;
    LocationPermission permission;
    servicesEnabled = await Geolocator.isLocationServiceEnabled();
    if (!servicesEnabled) {
      return Future.error("Location Services are disabled");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Location permissions denied");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error("Location permissions denied permanently");
    }
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return position;
  }
}
