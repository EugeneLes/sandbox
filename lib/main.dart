import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sandbox/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  const address = '192.168.1.40';
  // const address = '10.30.162.170';
  const port = '8888';
  HttpOverrides.global = ProxyHttpOverride(
    address,
    port,
  );
  print('PROXY: set $address:$port');

  runApp(const App());
}

class ProxyHttpOverride extends HttpOverrides {
  ProxyHttpOverride(this.proxyServer, this.proxyPort);
  String proxyServer;
  String proxyPort;

  @override
  HttpClient createHttpClient(SecurityContext? context) {
    print('HTTPClient with proxy created $proxyServer:$proxyPort;');

    return super.createHttpClient(context)
      ..findProxy = (uri) {
        return 'PROXY $proxyServer:$proxyPort;';
      }
      ..badCertificateCallback = (_, __, ___) => true;
  }
}
