import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart'; // Import LatLng package
import 'package:geolocator/geolocator.dart'; // Import Geolocator package

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  late MapController mapController;
  LatLng _currentLocation =
      const LatLng(-6.597629, 106.799568); // Initial location
  bool _positionKnown = false; // Add this line

  @override
  void initState() {
    super.initState();
    mapController = MapController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[400],
        title: const Text('My Location'),
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
              center: _currentLocation,
              zoom: 14.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              if (_positionKnown) // Add this line
                MarkerLayer(
                  markers: [
                    Marker(
                      width: 80,
                      height: 80,
                      point: _currentLocation,
                      builder: (ctx) => const Icon(
                        Icons.location_on,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ),
                  ],
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    _getCurrentLocation();
                  },
                  child: const Icon(Icons.location_on, color: Colors.blue)),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _currentLocation = LatLng(position.latitude, position.longitude);
      _positionKnown = true; // Add this line
    });
    // Memperbarui center pada MapOptions
    MapOptions updatedOptions = MapOptions(
      center: _currentLocation,
      zoom: 14.0,
    );
    mapController.move(updatedOptions.center, updatedOptions.zoom);
  }
}
