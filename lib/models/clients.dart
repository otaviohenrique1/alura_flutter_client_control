import 'package:flutter/material.dart';
import 'package:alura_flutter_client_control/models/client.dart';

class Clients extends ChangeNotifier {
  List<Client> clients;

  Clients({required this.clients});

  void add(Client client) {
    clients.add(client);
    notifyListeners(); /* Notifica o privider quando acontecer alguma mudança no estado */
  }

  void remove(int index) {
    clients.removeAt(index);
    notifyListeners(); /* Notifica o privider quando acontecer alguma mudança no estado */
  }
}
