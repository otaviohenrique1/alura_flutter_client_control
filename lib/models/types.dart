import 'package:alura_flutter_client_control/models/client_type.dart';
import 'package:flutter/material.dart';

class Types extends ChangeNotifier {
  List<ClientType> types;

  Types({required this.types});

  void add(ClientType type) {
    types.add(type);
    notifyListeners(); /* Notifica o privider quando acontecer alguma mudança no estado */
  }

  void remove(int index) {
    types.removeAt(index);
    notifyListeners(); /* Notifica o privider quando acontecer alguma mudança no estado */
  }
}
