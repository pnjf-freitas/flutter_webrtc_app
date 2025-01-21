import 'dart:developer';
import 'package:socket_io_client/socket_io_client.dart';

class SignallingService {
  // Instance of Socket
  Socket? socket;

  SignallingService._();
  static final instance = SignallingService._();

  init({required String websocketURL, required String selfCallerID}) {
    // Initialize the socket
    socket = io(websocketURL, {
      "transports": ["websocket"],
      "query": {"callerID": selfCallerID}
    });

    // Listen onConnect event
    socket!.onConnect((data) {
      log("Connected to the server");
    });

    // Listen onConnectError event
    socket!.onConnectError((data) {
      log("Connect Error $data");
    });

    // Connect socket
    socket!.connect();
  }
}