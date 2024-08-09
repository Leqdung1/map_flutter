import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(11.939386, 108.458788),
              initialZoom: 18,
            ),
            children: [
              TileLayer(
                urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                userAgentPackageName: 'com.example.app',
              ),
              CircleLayer(
                circles: [
                  CircleMarker(
                    point: const LatLng(11.939445, 108.458775),
                    radius: 70,
                    useRadiusInMeter: true,
                    color: Colors.blue.withOpacity(0.3),
                    borderColor: Colors.blue,
                    borderStrokeWidth: 2,
                  ),
                ],
              ),
              // Rain gauge
              const MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(11.939849127581523, 108.4590910675802),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.maps_home_work,
                      color: Colors.red,
                    ),
                  ),
                  // Warning sensor 01
                  Marker(
                    point: LatLng(11.939697581128717, 108.45902736511498),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.map,
                      color: Colors.red,
                    ),
                  ),
                  // Camera 03
                  Marker(
                    point: LatLng(11.93965953049003, 108.45907363322084),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  // Piezometer 01
                  Marker(
                    point: LatLng(11.939616887526727, 108.45911654856624),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  // gnss 03
                  Marker(
                    point: LatLng(11.939597862202428, 108.4591085019392),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  // Inclinometer 01
                  Marker(
                    point: LatLng(11.939556531320394, 108.45907095101221),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  // GNSS 01
                  Marker(
                    point: LatLng(11.939580805012907, 108.45894555773921),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),

// Inclinometer 02
                  Marker(
                    point: LatLng(11.939515856479114, 108.45899786081614),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  //Water level 02
                  Marker(
                    point: LatLng(11.939528977396272, 108.45900523689106),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  //GNSS 02
                  Marker(
                    point: LatLng(11.939466606143682, 108.45905641578773),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  //Warning sensor 02
                  Marker(
                    point: LatLng(11.93949305625895, 108.45916624536686),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  
// Piezometer 02
                  Marker(
                    point: LatLng(11.93946247331182, 108.45895587948053),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  //Inclinometer 03
                  Marker(
                    point: LatLng(11.939414532468547, 108.45889167142003),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  // Piezometer 03
                  Marker(
                    point: LatLng(11.939333528955688, 108.45878099699925),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  // Camera 05
                  Marker(
                    point: LatLng(11.939082252599732, 108.45858499344662),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  //Camera 02
                  Marker(
                    point: LatLng(11.939083079165579, 108.45895756917062),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                  //Camera 01
                  Marker(
                    point: LatLng(11.939021913175509, 108.45918398707114),
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
