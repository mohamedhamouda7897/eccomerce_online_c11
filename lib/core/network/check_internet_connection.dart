// import 'dart:async';
// import 'package:connectivity_plus/connectivity_plus.dart';
//
// class ConnectivityService {
//   final Connectivity _connectivity = Connectivity();
//   // Using a StreamController that handles a single ConnectivityResult
//   StreamController<ConnectivityResult> connectionStatusController = StreamController<ConnectivityResult>();
//
//   ConnectivityService() {
//     // Properly listening to the stream which emits single ConnectivityResult items
//     _connectivity.onConnectivityChanged.listen((ConnectivityResult? result) {
//       if (result != null) {  // Adding null check for safety
//         connectionStatusController.add(result);
//       }
//     });
//   }
//
//   // Correcting the return type to just ConnectivityResult
//   Future<ConnectivityResult> checkConnectivity() async {
//     return await _connectivity.checkConnectivity();
//   }
//
//   void dispose() {
//     connectionStatusController.close();
//   }
// }
