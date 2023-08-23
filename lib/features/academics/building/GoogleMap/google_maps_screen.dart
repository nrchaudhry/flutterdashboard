import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterdashboard/GoogleMap/department_screen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:maps_launcher/maps_launcher.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class QuickSearchModel {
  final String? place;
  final double? lat;
  final double? long;
  final Map<String, dynamic>? data;
  QuickSearchModel({this.place, this.lat, this.long, this.data});          //constructor 
}

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  //This instance is use to create googleMap 
  final Completer<GoogleMapController> _controller =                          //peechy wali value change nai ho gi
      Completer<GoogleMapController>();

  //list of initial values 
  //initial CameraPosition LatLong
  double lat = 32.6408125, long = 74.1666875;
  //inital instance of polyline Coordinates
  List<LatLng> polylineCoordinates = [];
  //initial value of destination lat and lng
  double? destinationLatitude;
  double? destinationLongitude;
  //Bool instance of removing destination marker
  bool removeDestinationMarker = false;
  //instance of getting initial current position of user 
  Position? _currentPosition;
  StreamSubscription<Position>? _positionStream;
  //instance of list dynamic 
  //this quicksearch instance which is dynamic instance stores
  //values of department data. including the marker data in which 
  //it dynamically gets in further function which is used in Set<Marker> 
  List<dynamic> quickSearch = [  
    QuickSearchModel(                        //modelclass
        place: "Arfa Karim",
        lat: 32.6414503,
        long: 74.1676910,
        data: {
          "department1": [
            {
              "departmentname": "Arfa karim",
              "data1": [
                {
                  "sectionname": "Economics",
                  "data": [
                    {
                      "floor": "Ground Floor",
                      "admin": "008",
                      "classroomnumber": "001-013",
                    }
                  ],
                },
                {
                  "sectionname": "Computer Science",
                  "data": [
                    {
                      "floor": "1st Floor",
                      "admin": "108",
                      "classroomnumber": "101-113",
                    }
                  ],
                },
                {
                  "sectionname": "Information Technology",
                  "data": [
                    {
                      "floor": "1st Floor",
                      "admin": "110",
                      "classroomnumber": "101-113",
                    }
                  ],
                },
                {
                  "sectionname": "Software Engineer",
                  "data": [
                    {
                      "floor": "2nd Floor",
                      "admin": "208",
                      "classroomnumber": "201-213",
                    }
                  ],
                }
              ],
            }
          ],
        }),
    QuickSearchModel(
      place: "Al-Farabi || A block",
      lat: 32.6418729,
      long: 74.1667532,
    ),
    QuickSearchModel(
        place: "Medical || M block", lat: 32.6415765, long: 74.1659308),
    QuickSearchModel(
        place: "Al-jazari block", lat: 32.6409731, long: 74.1655583),
    QuickSearchModel(
        place: "Jabir bin hayan", lat: 32.6398578, long: 74.1666173),
    QuickSearchModel(
        place: "Omar-al-khayam block", lat: 32.6400372, long: 74.1674942),
    QuickSearchModel(
        place: "Al-khwarzmi block", lat: 32.6406521, long: 74.1678516),
  ];

  bool quickVisibility = false;
 
  final TextEditingController _searchTextController = TextEditingController();
  Map<String, dynamic>? searchAddressLatLong;

  @override
  void initState() {
    _getLocationPermission();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onTap: (argument) {
              quickSearch.add(QuickSearchModel(
                  place: "Destination marker",
                  lat: argument.latitude,
                  long: argument.longitude));

              if (mounted) {
                setState(() {
                  destinationLatitude = argument.latitude;
                  destinationLongitude = argument.longitude;
                  campusMarkers();

                });
                removeDestinationMarker =true;
              }
              getvendorLatLongContinously();
            },
            markers: campusMarkers(),
            myLocationButtonEnabled: false,
            myLocationEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            initialCameraPosition: CameraPosition(
              target: LatLng(lat, long),
              zoom: 16.4746,
            ),
            polylines: {
              Polyline(
                polylineId: PolylineId("route"),
                points: polylineCoordinates,
                color: Colors.blue,
                width: 6,
              ),
            },
          ),
          Positioned(
            top: 30,
            left: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: TextFormField(
                            onChanged: (input) {
                              fetchSuggestions(input).then((suggestions) {
                                setState(() {
                                  _suggestions = suggestions;
                                });
                              });
                            },
                            controller: _searchTextController,
                            decoration: const InputDecoration(
                              hintText: "Search here",
                              contentPadding:
                                  EdgeInsets.only(left: 10, top: 10),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: () async {
                          try {
                            await _searchVendorsLocation(
                                searchText: _searchTextController.text);
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "Unable to find location try to provide proper address",
                                ),
                              ),
                            );
                          }
                          GoogleMapController mapController =
                              await _controller.future;

                          mapController
                              .animateCamera(CameraUpdate.newCameraPosition(
                            CameraPosition(
                                target: LatLng(searchAddressLatLong!['lat'],
                                    searchAddressLatLong!['lng']),
                                zoom: 18.0),
                          ));
                        },
                        child: const Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),

                _suggestions.isEmpty
                    ? Text("")
                    : Column(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.width * 0.8,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(color: Colors.white),
                            child: ListView.builder(
                              itemCount: _suggestions.length,
                              itemBuilder: (context, index) {
                                var suggestion = _suggestions;
                                return Column(
                                  children: [
                                    Divider(),
                                    ListTile(
                                      title: Text(suggestion[index]),
                                      onTap: () {
                                        _searchTextController.text =
                                            suggestion[index];
                                        _searchVendorsLocation(
                                            searchText: suggestion[index]);
                                      },
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        const SizedBox(height: 10),
                        FloatingActionButton(onPressed: () {
                          setState(() {
                            _suggestions.clear();
                          });
                        },heroTag: "4",child: Icon(Icons.clear),)
                      ],
                    ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Quick Search", style: TextStyle(fontSize: 16)),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          quickVisibility = !quickVisibility;
                        });
                      },
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: quickVisibility == false
                              ? const Icon(Icons.keyboard_arrow_down)
                              : const Icon(Icons.keyboard_arrow_up))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                    visible: quickVisibility,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ListView.builder(
                        itemCount: quickSearch.length,
                        itemBuilder: (context, index) {
                          var data = quickSearch[index];
                          return Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: InkWell(
                              onTap: () async {
                                _getAddressFromLatLng(data.lat, data.long);
                                GoogleMapController mapController =
                                    await _controller.future;
                                mapController.animateCamera(
                                  CameraUpdate.newCameraPosition(
                                    CameraPosition(
                                        target: LatLng(
                                            data.lat + 0.0, data.long + 0.0),
                                        zoom: 18.0),
                                  ),
                                );
                              },
                              child: Container(
                                height: 50,
                                decoration: const BoxDecoration(),
                                child: Text(
                                  "${data.place}",
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ))
              ],
            ),
          ),
          Positioned(
              bottom: 100,
              right: 10,
              child: FloatingActionButton(
                heroTag: "1",
                backgroundColor: Colors.white,
                child:
                    const Icon(Icons.my_location_rounded, color: Colors.blue),
                onPressed: () => getCurrentPosition(),
              )),
          Positioned(
              bottom: 200,
              right: 10,
              child: FloatingActionButton(
                heroTag: "2",
                backgroundColor: Colors.white,
                child: const Icon(Icons.directions, color: Colors.blue),
                onPressed: () async{
                  try {
                    await _searchVendorsLocation(
                    searchText:
                    _searchTextController.text);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Unable to find location try to provide proper address",
                        ),
                      ),
                    );
                  }
                  MapsLauncher.launchCoordinates(
                    searchAddressLatLong!["lat"],
                    searchAddressLatLong!["lng"],
                  );
                  // setState(() {
                  //   directionSearchVisibility = !directionSearchVisibility;
                  // });
                },
              )),
          Visibility(visible: removeDestinationMarker,
            child: Positioned(
                bottom: 300,
                right: 10,
                child: FloatingActionButton(
                  heroTag: "3",
                  tooltip: "cancel destination",
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.cancel, color: Colors.blue),
                  onPressed: () {
                    setState(() {
                      quickSearch.removeWhere((element)=> element.place == "Destination marker");
                      polylineCoordinates.clear();
                      _positionStream!.pause();
                      destinationLatitude = null;
                      destinationLongitude = null;
                      removeDestinationMarker =false;
                    });
                  },
                )),
          )
        ],
      ),
    );
  }

  Future<bool> _getLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        await Geolocator.openLocationSettings();
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
      }
      if (permission == LocationPermission.always) {
        return true;
      }

      return false;
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  getCurrentPosition() async {
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then(
      (Position result) async {
        GoogleMapController mapController = await _controller.future;
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
                target: LatLng(result.latitude + 0.0, result.longitude + 0.0),
                zoom: 18.0),
          ),
        );
      },
    );
  }

  Set<Marker> campusMarkers() {
    Set<Marker> list = {};

    list.clear();
    for (var data in quickSearch) {
      list.addAll({
        Marker(
          markerId: MarkerId("${data.place}"),
          position: LatLng(data.lat, data.long),
          infoWindow: InfoWindow(
            title: "${data.place}",
            onTap: () => data.data == null
                ? null
                : Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        DepartmentScreen(departmentData: data.data),
                  )),
          ),
        ),
      });
    }
    return list;
  }

  _searchVendorsLocation({String? searchText}) async {
    String apiKey = 'AIzaSyDiQVgbf3_rfSKBr4RwYoJCMUsSbT1ozaA';
    String url =
        'https://maps.googleapis.com/maps/api/geocode/json?address=$searchText&key=$apiKey';

    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      if (data['status'] == 'OK') {
        Map<String, dynamic> location =
            data['results'][0]['geometry']['location'];
        setState(() {
          searchAddressLatLong = location;
        });
      } else {
        throw Exception('Failed to geocode address: $searchText');
      }
    } else {
      throw Exception('Failed to load geocoding data');
    }
  }

  _getAddressFromLatLng(double latitude, double longitude) async {
    String apiKey = 'AIzaSyDiQVgbf3_rfSKBr4RwYoJCMUsSbT1ozaA';
    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$latitude,$longitude&key=$apiKey';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['status'] == 'OK') {
        final results = data['results'];
        if (results.isNotEmpty) {
          setState(() {
            _searchTextController.text = results[0]['formatted_address'];
          });
        }
      }
    }
  }

  List<String> _suggestions = [];

  Future<List<String>> fetchSuggestions(String input) async {
    String apiKey = 'AIzaSyDiQVgbf3_rfSKBr4RwYoJCMUsSbT1ozaA';
    final endpoint =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&types=geocode&key=$apiKey';

    final response = await http.get(Uri.parse(endpoint));

    if (response.statusCode == 200) {
      final predictions = json.decode(response.body)['predictions'];
      return List<String>.from(predictions.map((pred) => pred['description']));
    } else {
      throw Exception('Failed to load suggestions');
    }
  }

  getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyDiQVgbf3_rfSKBr4RwYoJCMUsSbT1ozaA",
      PointLatLng(_currentPosition!.latitude, _currentPosition!.longitude),
      PointLatLng(destinationLatitude!, destinationLongitude!),
    );
    if (result.points.isNotEmpty) {
      List<PointLatLng> results = result.points;
      if (polylineCoordinates.isEmpty) {
        for (var point in results) {
          polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        }
      } else {
        polylineCoordinates.clear(); // Clear previous coordinates
        polylineCoordinates.addAll(results.map(
          (point) => LatLng(point.latitude, point.longitude),
        ));
      }
      if (mounted) {
        setState(() {});
      }
    }
  }

  getvendorLatLongContinously() {
    _positionStream= Geolocator.getPositionStream().listen((newLoc) {
      _currentPosition = newLoc;
      if(_positionStream!.isPaused){

      }else{
        getPolyPoints();
      }

      if (isDestinationReached()) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('You have reached your destination.')));
        }
      }
    });
  }

  bool isDestinationReached() {
    if (_currentPosition != null) {
      if(_positionStream!.isPaused){

      }else {
        double distanceInMeters = Geolocator.distanceBetween(
          _currentPosition!.latitude,
          _currentPosition!.longitude,
          destinationLatitude!,
          destinationLongitude!,
        );
         return distanceInMeters <= 10;
      }


    }

    return false;
  }
}
