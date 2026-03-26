// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class NetworkClient {
//   final String ip;
//   final String mac;
//   final String hostname;
//
//   NetworkClient({
//     required this.ip,
//     required this.mac,
//     required this.hostname,
//   });
//
//   factory NetworkClient.fromJson(Map<String, dynamic> json) {
//     return NetworkClient(
//       ip: json['ip'] ?? '',
//       mac: json['mac'] ?? '',
//       hostname: json['hostname'] ?? 'Unknown',
//     );
//   }
// }
//
// class ApiService {
//   static const String baseUrl = 'http://192.168.1.246:8000';
//
//   static Future<List<NetworkClient>> getClients() async {
//     final response = await http
//         .get(Uri.parse('$baseUrl/clients'))
//         .timeout(const Duration(seconds: 10));
//
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       final List list = data['clients'];
//       return list.map((e) => NetworkClient.fromJson(e)).toList();
//     } else {
//       throw Exception('Server xatolik qaytardi');
//     }
//   }
// }


import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkClient {
  final String ip;
  final String mac;
  final String hostname;
  bool isBlocked;

  NetworkClient({
    required this.ip,
    required this.mac,
    required this.hostname,
    this.isBlocked = false,
  });

  factory NetworkClient.fromJson(Map<String, dynamic> json) {
    return NetworkClient(
      ip: json['ip'] ?? '',
      mac: json['mac'] ?? '',
      hostname: json['hostname'] ?? 'Unknown',
    );
  }
}

class ApiService {
  static const String baseUrl = 'http://192.168.1.246:8000';

  static Future<List<NetworkClient>> getClients() async {
    final clientsResponse = await http
        .get(Uri.parse('$baseUrl/clients'))
        .timeout(const Duration(seconds: 10));

    final blockedResponse = await http
        .get(Uri.parse('$baseUrl/blocked'))
        .timeout(const Duration(seconds: 10));

    if (clientsResponse.statusCode == 200) {
      final data = jsonDecode(clientsResponse.body);
      final List list = data['clients'];
      final clients = list.map((e) => NetworkClient.fromJson(e)).toList();

      if (blockedResponse.statusCode == 200) {
        final blockedData = jsonDecode(blockedResponse.body);
        final List<String> blockedMacs = List<String>.from(
            blockedData['blocked_macs'] ?? []);
        for (var client in clients) {
          client.isBlocked = blockedMacs
              .any((m) => m.toLowerCase() == client.mac.toLowerCase());
        }
      }

      return clients;
    } else {
      throw Exception('Server xatolik qaytardi');
    }
  }

  static Future<bool> blockClient(String mac) async {
    final response = await http
        .post(Uri.parse('$baseUrl/block/$mac'))
        .timeout(const Duration(seconds: 10));
    final data = jsonDecode(response.body);
    return data['success'] == true;
  }

  static Future<bool> unblockClient(String mac) async {
    final response = await http
        .post(Uri.parse('$baseUrl/unblock/$mac'))
        .timeout(const Duration(seconds: 10));
    final data = jsonDecode(response.body);
    return data['success'] == true;
  }
}