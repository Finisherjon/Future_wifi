// import 'package:flutter/material.dart';
// import 'package:future_wifi_code/adjust_size.dart';
// import 'package:future_wifi_code/screens/user_device.dart';
// import 'package:future_wifi_code/wifi_usage_tile.dart' show WifiUsageTile;
//
// import 'account_settings_screen.dart';
// import 'limits_restriction_screen.dart';
// import 'notifications_screen.dart';
//
// class ConnectedDevicesScreen extends StatefulWidget {
//   const ConnectedDevicesScreen({super.key});
//
//   @override
//   State<ConnectedDevicesScreen> createState() => _ConnectedDevicesScreenState();
// }
//
// class _ConnectedDevicesScreenState extends State<ConnectedDevicesScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: true,
//           titleSpacing: 0,
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 5),
//                 child: Icon(
//                   Icons.wifi,
//                   size: 30,
//                   color: Colors.lightGreenAccent,
//                 ),
//               ),
//               Text(
//                 "Future WiFi",
//                 // style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//                 style: Theme.of(context).textTheme.displaySmall,
//               ),
//             ],
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => NotificationsScreen(),
//                   ),
//                 );
//               },
//               icon: Icon(Icons.notifications, size: 30),
//             ),
//             IconButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => AccountSettingsScreen(),
//                   ),
//                 );
//               },
//               icon: Icon(Icons.perm_identity_sharp, size: 30),
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.all(12),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Connected Devices",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                       ),
//                     ),
//                     Text(
//                       "Total: 5",
//                       style: TextStyle(fontSize: 17, color: Colors.grey),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: Sizes.heights(context) * 0.02),
//                 _trustedDevices(context),
//                 SizedBox(height: Sizes.heights(context) * 0.01),
//                 _connectedDevices(context),
//                 SizedBox(height: Sizes.heights(context) * 0.01),
//                 _inactiveDevices(context),
//                 SizedBox(height: Sizes.heights(context) * 0.01),
//                 _connectedDevices(context),
//                 SizedBox(height: Sizes.heights(context) * 0.01),
//                 _connectedDevices(context),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// _trustedDevices(BuildContext context) {
//   return GestureDetector(
//     onTap: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => UserDevice()),
//       );
//     },
//     child: Card(
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   child: Row(
//                     children: [
//                       ClipRRect(
//                         child: Container(
//                           color: Colors.green,
//                           child: Padding(
//                             padding: const EdgeInsets.all(10),
//                             child: Icon(Icons.laptop_mac_outlined, size: 27),
//                           ),
//                         ),
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       SizedBox(width: 10),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "MacBook Pro",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                             ),
//                           ),
//                           Text(
//                             "Active time: 7h 23m",
//                             style: TextStyle(fontSize: 14, color: Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 8),
//                   child: Text(
//                     "Trusted",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: Sizes.heights(context) * 0.02),
//             WifiUsageTile(speedMbps: 39.9),
//           ],
//         ),
//       ),
//     ),
//   );
// }
//
// _connectedDevices(BuildContext context) {
//   return InkWell(
//     onTap: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => UserDevice()),
//       );
//     },
//     child: Card(
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   child: Row(
//                     children: [
//                       ClipRRect(
//                         child: Container(
//                           color: Color(0xFF424242),
//                           child: Padding(
//                             padding: const EdgeInsets.all(10),
//                             child: Icon(Icons.phone_iphone, size: 27),
//                           ),
//                         ),
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       SizedBox(width: 10),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Iphone 13 Pro",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                             ),
//                           ),
//                           Text(
//                             "Active time: 3h 10m",
//                             style: TextStyle(fontSize: 14, color: Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 9),
//                       child: Text(
//                         "Active",
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: Sizes.widths(context) * 0.03,
//                       height: Sizes.heights(context) * 0.015,
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: Sizes.heights(context) * 0.02),
//             WifiUsageTile(speedMbps: 12.4),
//             SizedBox(height: Sizes.heights(context) * 0.02),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (context) => LimitsRestrictionScreen(),
//                     //   ),
//                     // );
//                   },
//                   child: Card(
//                     color: Color(0xFF424242),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 10,
//                       ),
//                       child: Center(
//                         child: Text(
//                           "Block",
//                           style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => LimitsRestrictionScreen(),
//                       ),
//                     );
//                   },
//                   child: Card(
//                     color: Color(0xFF424242),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 10,
//                       ),
//                       child: Center(
//                         child: Text(
//                           "Limit",
//                           style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Card(
//                     color: Color(0xFF424242),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 10,
//                       ),
//                       child: Center(
//                         child: Text(
//                           "Kick",
//                           style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
//
// _inactiveDevices(BuildContext context) {
//   return InkWell(
//     onTap: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => UserDevice()),
//       );
//     },
//     child: Card(
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   child: Row(
//                     children: [
//                       ClipRRect(
//                         child: Container(
//                           color: Color(0xFF424242),
//                           child: Padding(
//                             padding: const EdgeInsets.all(10),
//                             child: Icon(Icons.tv, size: 27),
//                           ),
//                         ),
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       SizedBox(width: 10),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Samsung TV",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                             ),
//                           ),
//                           Text(
//                             "Active time: 1h 32m",
//                             style: TextStyle(fontSize: 14, color: Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(right: 9),
//                       child: Text(
//                         "Inactive",
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: Sizes.widths(context) * 0.03,
//                       height: Sizes.heights(context) * 0.015,
//                       decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: Sizes.heights(context) * 0.02),
//             WifiUsageTile(speedMbps: 9.2),
//             SizedBox(height: Sizes.heights(context) * 0.02),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (context) => LimitsRestrictionScreen(),
//                     //   ),
//                     // );
//                   },
//                   child: Card(
//                     color: Color(0xFF424242),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 10,
//                       ),
//                       child: Center(
//                         child: Text(
//                           "Block",
//                           style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => LimitsRestrictionScreen(),
//                       ),
//                     );
//                   },
//                   child: Card(
//                     color: Color(0xFF424242),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 10,
//                       ),
//                       child: Center(
//                         child: Text(
//                           "Limit",
//                           style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Card(
//                     color: Color(0xFF424242),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 10,
//                       ),
//                       child: Center(
//                         child: Text(
//                           "Kick",
//                           style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:future_wifi_code/adjust_size.dart';
import 'package:future_wifi_code/screens/user_device.dart';
import 'package:future_wifi_code/wifi_usage_tile.dart';
import 'package:future_wifi_code/services/api_service.dart';

import 'account_settings_screen.dart';
import 'limits_restriction_screen.dart';
import 'notifications_screen.dart';

class ConnectedDevicesScreen extends StatefulWidget {
  const ConnectedDevicesScreen({super.key});

  @override
  State<ConnectedDevicesScreen> createState() => _ConnectedDevicesScreenState();
}

class _ConnectedDevicesScreenState extends State<ConnectedDevicesScreen> {
  List<NetworkClient> _clients = [];
  bool _loading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadClients();
  }

  Future<void> _loadClients() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final clients = await ApiService.getClients();
      setState(() {
        _clients = clients;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
      });
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  Future<void> _toggleBlock(NetworkClient client) async {
    try {
      bool success;
      if (client.isBlocked) {
        success = await ApiService.unblockClient(client.mac);
      } else {
        success = await ApiService.blockClient(client.mac);
      }
      if (success) {
        setState(() {
          client.isBlocked = !client.isBlocked;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Xatolik: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          titleSpacing: 0,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.wifi,
                  size: 30,
                  color: Colors.lightGreenAccent,
                ),
              ),
              Text(
                "Future WiFi",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
          actions: [
            // IconButton(onPressed: _loadClients, icon: Icon(Icons.refresh, size: 30)),
            IconButton(
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => NotificationsScreen()),
                  ),
              icon: Icon(Icons.notifications, size: 30),
            ),
            IconButton(
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AccountSettingsScreen()),
                  ),
              icon: Icon(Icons.perm_identity_sharp, size: 30),
            ),
          ],
        ),
        body:
            _loading
                ? const Center(child: CircularProgressIndicator())
                : _error != null
                ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        size: 48,
                        color: Colors.red,
                      ),
                      const SizedBox(height: 12),
                      Text(_error!, textAlign: TextAlign.center),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: _loadClients,
                        child: const Text('Qayta urinish'),
                      ),
                    ],
                  ),
                )
                : RefreshIndicator(
                  onRefresh: _loadClients,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Connected Devices",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                "Total: ${_clients.length}",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Sizes.heights(context) * 0.02),
                          ..._clients.map(
                            (client) =>
                                _clientCard(context, client, _toggleBlock),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
      ),
    );
  }
}

Widget _clientCard(
  BuildContext context,
  NetworkClient client,
  Future<void> Function(NetworkClient) onToggleBlock,
) {
  return GestureDetector(
    onTap:
        () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => UserDevice()),
        ),
    child: Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: client.isBlocked ? Colors.red : Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.devices, size: 27),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          client.hostname,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "IP: ${client.ip}",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        Text(
                          "MAC: ${client.mac}",
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      client.isBlocked ? "Blocked" : "Active",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: client.isBlocked ? Colors.red : Colors.green,
                      ),
                    ),
                    SizedBox(width: 6),
                    Container(
                      width: Sizes.widths(context) * 0.03,
                      height: Sizes.heights(context) * 0.015,
                      decoration: BoxDecoration(
                        color: client.isBlocked ? Colors.red : Colors.green,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: Sizes.heights(context) * 0.02),
            WifiUsageTile(speedMbps: 0.0),
            SizedBox(height: Sizes.heights(context) * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _actionButton(
                  client.isBlocked ? "Unblock" : "Block",
                  client.isBlocked ? Colors.green : Colors.red,
                  () => onToggleBlock(client),
                ),
                _actionButton("Limit", Colors.orange, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LimitsRestrictionScreen(),
                    ),
                  );
                }),
                _actionButton("Kick", Color(0xFF424242), () {}),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _actionButton(String label, Color color, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          label,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
