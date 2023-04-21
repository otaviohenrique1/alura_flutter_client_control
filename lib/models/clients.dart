import 'package:flutter/material.dart';
import 'package:alura_flutter_client_control/models/client.dart';

class Clients extends ChangeNotifier {
  List<Client> clients;

  Clients({required this.clients});
}
