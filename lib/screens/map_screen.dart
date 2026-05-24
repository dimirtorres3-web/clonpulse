import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const LatLng _center = LatLng(-24.0500, -54.3000);
  late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GeoPulse AI - Control Departamental"),
        backgroundColor: Colors.green,
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: const CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        markers: {
          const Marker(
            markerId: MarkerId('bache_alerta_1'),
            position: LatLng(-24.0550, -54.3050),
            infoWindow: InfoWindow(
              title: "Alerta Canindeyú",
              snippet: "Camino Deteriorado - 50 reportes de ciudadanos",
            ),
          ),
        },
      ),
    );
  }
}