import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:alura_flutter_client_control/models/client.dart';
import 'package:alura_flutter_client_control/models/client_type.dart';
import 'package:alura_flutter_client_control/models/clients.dart';
import 'package:alura_flutter_client_control/models/types.dart';
import 'package:alura_flutter_client_control/pages/client_types_page.dart';
import 'package:alura_flutter_client_control/pages/clients_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Clients(
            clients: [
              Client(
                name: 'Geraldo',
                email: 'leo@email.com',
                type: ClientType(
                  name: 'Platinum',
                  icon: Icons.credit_card,
                ),
              ),
            ],
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => Types(
            types: [
              ClientType(name: 'Platinum', icon: Icons.credit_card),
              ClientType(name: 'Golden', icon: Icons.card_membership),
              ClientType(name: 'Titanium', icon: Icons.credit_score),
              ClientType(name: 'Diamond', icon: Icons.diamond),
            ],
          ),
        ),
      ],
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de clientes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ClientsPage(title: 'Clientes'),
        '/tipos': (context) => const ClientTypesPage(title: 'Tipos de cliente'),
      },
    );
  }
}
