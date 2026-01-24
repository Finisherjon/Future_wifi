import 'package:flutter/material.dart';
import 'package:future_wifi_code/screens/user_device.dart';

import '../adjust_size.dart';
import '../wifi_usage_tile.dart';
import 'account_settings_screen.dart';
import 'limits_restriction_screen.dart';
import 'notifications_screen.dart';

class AddDeviceLimitScreen extends StatefulWidget {
  const AddDeviceLimitScreen({super.key});

  @override
  State<AddDeviceLimitScreen> createState() => _AddDeviceLimitScreenState();
}

class _AddDeviceLimitScreenState extends State<AddDeviceLimitScreen> {
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationsScreen(),
                  ),
                );
              },
              icon: Icon(Icons.notifications, size: 30),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountSettingsScreen(),
                  ),
                );
              },
              icon: Icon(Icons.perm_identity_sharp, size: 30),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      "Total: 5",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: Sizes.heights(context) * 0.02),
                _deviceLimitList(context),
                SizedBox(height: Sizes.heights(context) * 0.005),
                _deviceLimitList(context),
                SizedBox(height: Sizes.heights(context) * 0.005),
                _deviceLimitList(context),
                SizedBox(height: Sizes.heights(context) * 0.005),
                _deviceLimitList(context),
                SizedBox(height: Sizes.heights(context) * 0.005),
                _deviceLimitList(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _deviceLimitList(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UserDevice()),
        );
      },
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            ClipRRect(
                              child: Container(
                                color: Color(0xFF424242),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Icon(Icons.phone_iphone, size: 27),
                                ),
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Iphone 13 Pro",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Active time: 3h 10m",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 9),
                            child: Text(
                              "Active",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: Sizes.widths(context) * 0.03,
                            height: Sizes.heights(context) * 0.015,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.heights(context) * 0.02),
                  WifiUsageTile(speedMbps: 12.4),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                    ),
                    child: const Text(
                      "Add Device",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
