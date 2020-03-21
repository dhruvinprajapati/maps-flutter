import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatelessWidget {

  Completer<GoogleMapController> _completer = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        GoogleMap(
          onMapCreated: (GoogleMapController controller){
            _completer.complete(controller);
          },
          initialCameraPosition:
              CameraPosition(target: LatLng(23.0004838, 72.5323136), zoom: 14),
        )
      ]),
    );
  }
}
