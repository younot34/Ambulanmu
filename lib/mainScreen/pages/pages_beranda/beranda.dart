import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  

  MapController controller = MapController(
    initPosition:
        GeoPoint(latitude: -7.766701997161406, longitude: 110.33322008132728),
  );

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            OSMFlutter(
              controller: controller,
              osmOption: OSMOption(
                userTrackingOption: const UserTrackingOption(
                  enableTracking: true,
                  unFollowUser: false,
                ),
                zoomOption: const ZoomOption(
                  initZoom: 16,
                  minZoomLevel: 3,
                  maxZoomLevel: 19,
                  stepZoom: 4.0,
                ),
                userLocationMarker: UserLocationMaker(
                  personMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.location_history,
                      color: Colors.red,
                      size: 50,
                    ),
                  ),
                  directionArrowMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.location_on, 
                      color: Colors.blue,
                      size: 60,
                      ),
                    )
                ),
                roadConfiguration: const RoadOption(
                  roadColor: Colors.yellow,
                ),
                markerOption: MarkerOption(
                  defaultMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.person_pin_circle,
                      color: Colors.blue,
                      size: 80,
                    ),
                  )
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}