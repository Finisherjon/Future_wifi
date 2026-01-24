import 'package:flutter/material.dart';
import 'package:future_wifi_code/adjust_size.dart';

import '../cards/time_restriction_card.dart';
import 'account_settings_screen.dart';
import 'notifications_screen.dart';

class GuestWifiScreen extends StatefulWidget {
  const GuestWifiScreen({super.key});

  @override
  State<GuestWifiScreen> createState() => _GuestWifiScreenState();
}

class _GuestWifiScreenState extends State<GuestWifiScreen> {
  bool _enabled = false;

  bool isGuestNetworkEnabled = false;
  bool isPasswordHidden = true;
  String password = "SecureGuest2023";

  double downloadSpeed = 25;
  double uploadSpeed = 10;

  bool isTimeLimitEnabled = false;
  TimeOfDay startTime = TimeOfDay(hour: 8, minute: 0);
  TimeOfDay endTime = TimeOfDay(hour: 20, minute: 0);
  List<String> selectedDays = [];

  final List<String> daysOfWeek = [
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
  ];

  String _selectedExpire = "24 hours";
  final List<String> _expireOptions = [
    "1 hour",
    "6 hours",
    "12 hours",
    "24 hours",
    "48 hours",
    "1 week",
  ];

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
                Text(
                  "Guest WiFi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  "Configure your guest network settings",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(height: Sizes.heights(context) * 0.02),
                _buildGuestNetworkCard(),
                SizedBox(height: Sizes.heights(context) * 0.015),
                _buildBandwidthCard(),
                SizedBox(height: Sizes.heights(context) * 0.015),
                TimeRestrictionCard(),
                SizedBox(height: Sizes.heights(context) * 0.015),
                _autoExpiration(),
                SizedBox(height: Sizes.heights(context) * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: Sizes.heights(context) * 0.08,
                      width: Sizes.widths(context) * 0.92,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Card(
                          color: Colors.lightGreenAccent,
                          child: Center(
                            child: Text(
                              "Save Changes",
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: Sizes.heights(context) * 0.08,
                      width: Sizes.widths(context) * 0.92,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Card(
                          color: Colors.grey[500],
                          child: Center(
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGuestNetworkCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              activeThumbColor: Colors.lightGreenAccent,
              title: Text(
                "Guest Network",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              subtitle: Text(
                "Allow visitors to connect",
                style: TextStyle(fontSize: 16),
              ),
              value: isGuestNetworkEnabled,
              onChanged: (value) {
                setState(() {
                  isGuestNetworkEnabled = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Network Name (SSID)",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Sizes.heights(context) * 0.015),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Network Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    maxLength: 25,
                  ),
                  SizedBox(height: Sizes.heights(context) * 0.015),
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Sizes.heights(context) * 0.015),
                  TextFormField(
                    maxLength: 25,
                    initialValue: password,
                    obscureText: isPasswordHidden,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters long';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPasswordHidden
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            isPasswordHidden = !isPasswordHidden;
                          });
                        },
                      ),
                    ),
                  ),
                  Text(
                    "Minimum 8 character recommended",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBandwidthCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "BandWith Limits",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: Sizes.heights(context) * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Download Speed",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${downloadSpeed.round()} Mbps",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ],
            ),
            Slider(
              value: downloadSpeed,
              activeColor: Colors.lightGreenAccent,
              min: 1,
              max: 100,
              divisions: 99,
              onChanged: (value) {
                setState(() => downloadSpeed = value);
              },
            ),
            SizedBox(height: Sizes.heights(context) * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upload Speed",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${uploadSpeed.round()} Mbps",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ],
            ),
            Slider(
              value: uploadSpeed,
              activeColor: Colors.lightGreenAccent,
              min: 1,
              max: 100,
              divisions: 99,
              onChanged: (value) {
                setState(() => uploadSpeed = value);
              },
            ),
          ],
        ),
      ),
    );
  }

  _autoExpiration() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Auto-Expiration",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: Sizes.heights(context) * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Auto-Expiration Network",
                  style: TextStyle(fontSize: 15),
                ),
                Switch(
                  value: _enabled,
                  activeColor: Colors.lightGreenAccent,
                  onChanged: (val) {
                    setState(() {
                      _enabled = val;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 12),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child:
                  _enabled
                      ? Column(
                        key: const ValueKey("enabled"),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Expire After",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.grey.shade700,
                                    width: 1,
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: _selectedExpire,
                                    isExpanded: true,
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                    ),
                                    dropdownColor: Colors.grey.shade900,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    items:
                                        _expireOptions.map((value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                    onChanged: (value) {
                                      if (value != null) {
                                        setState(() {
                                          _selectedExpire = value;
                                        });
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                      : const SizedBox.shrink(key: ValueKey("disabled")),
            ),
          ],
        ),
      ),
    );
  }
}
