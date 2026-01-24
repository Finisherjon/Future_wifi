import 'package:flutter/material.dart';

import '../adjust_size.dart';
import 'account_settings_screen.dart';
import 'notifications_screen.dart';

class WifiSettingsScreen extends StatefulWidget {
  const WifiSettingsScreen({super.key});

  @override
  State<WifiSettingsScreen> createState() => _WifiSettingsScreenState();
}

class _WifiSettingsScreenState extends State<WifiSettingsScreen> {
  bool isPasswordHidden = true;
  String password = "SecureGuest2023";
  String _selectedEncryption = "WPA3-Personal";
  String _selectedFrequency = "Dual Band (2.4 GHz & 5 GHz)";
  bool isGuestNetworkEnabled = false;

  String _selectedChannel = "Auto (Recommended)";
  final List<String> _ChannelOptions = [
    "Auto (Recommended)",
    "Channel 1",
    "Channel 6",
    "Channel 11",
    "Channel 36",
    "Channel 40",
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
                  "WiFi Settings",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(height: Sizes.heights(context) * 0.02),
                _networkConfiguration(context),
                SizedBox(height: Sizes.heights(context) * 0.015),
                _SecuritySettings(context),
                SizedBox(height: Sizes.heights(context) * 0.015),
                _FrequensySettings(context),
                SizedBox(height: Sizes.heights(context) * 0.015),
                _guestNetwork(context),
                SizedBox(height: Sizes.heights(context) * 0.015),
                _routerManagement(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _networkConfiguration(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Network Configuration",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Sizes.heights(context) * 0.02),
                  Text(
                    "Network Name (SSID)",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Network Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    maxLength: 25,
                  ),
                  Text(
                    "This is the name will appear in available networks list",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: Sizes.heights(context) * 0.025),
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
                  SizedBox(height: Sizes.heights(context) * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: Sizes.heights(context) * 0.075,
                        width: Sizes.widths(context) * 0.4,
                        child: InkWell(
                          onTap: () {},
                          child: Card(
                            color: Colors.lightGreenAccent,
                            child: Center(
                              child: Text(
                                "Save Changes",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
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
          ],
        ),
      ),
    );
  }

  _SecuritySettings(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "Security Settings",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: Sizes.heights(context) * 0.02),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Encryption Type",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Column(
            children: [
              RadioListTile<String>(
                value: "WPA2-Personal",
                groupValue: _selectedEncryption,
                onChanged: (value) {
                  setState(() {
                    _selectedEncryption = value!;
                  });
                },
                title: const Text(
                  "WPA2-Personal",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                activeColor: Colors.white,
              ),
              RadioListTile<String>(
                value: "WPA3-Personal",
                groupValue: _selectedEncryption,
                onChanged: (value) {
                  setState(() {
                    _selectedEncryption = value!;
                  });
                },
                title: const Text(
                  "WPA3-Personal",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                activeColor: Colors.white,
              ),
              RadioListTile<String>(
                value: "WPA2/WPA3-Personal",
                groupValue: _selectedEncryption,
                onChanged: (value) {
                  setState(() {
                    _selectedEncryption = value!;
                  });
                },
                title: const Text(
                  "WPA2/WPA3-Personal",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                activeColor: Colors.white,
              ),
            ],
          ),
          SizedBox(height: Sizes.heights(context) * 0.015),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 15),
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: Sizes.heights(context) * 0.075,
                width: Sizes.widths(context) * 0.3,
                child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Applied: $_selectedEncryption")),
                    );
                  },
                  child: Card(
                    color: Colors.lightGreenAccent,
                    child: Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _FrequensySettings(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "Frequency Settings",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: Sizes.heights(context) * 0.02),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Frequency band",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Column(
            children: [
              RadioListTile<String>(
                value: "2.4 GHz",
                groupValue: _selectedFrequency,
                onChanged: (value) {
                  setState(() {
                    _selectedFrequency = value!;
                  });
                },
                title: const Text(
                  "2.4 GHz",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                activeColor: Colors.white,
              ),
              RadioListTile<String>(
                value: "5 GHz",
                groupValue: _selectedFrequency,
                onChanged: (value) {
                  setState(() {
                    _selectedFrequency = value!;
                  });
                },
                title: const Text(
                  "5 GHz",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                activeColor: Colors.white,
              ),
              RadioListTile<String>(
                value: "Dual Band (2.4 GHz & 5 GHz)",
                groupValue: _selectedFrequency,
                onChanged: (value) {
                  setState(() {
                    _selectedFrequency = value!;
                  });
                },
                title: const Text(
                  "Dual Band (2.4 GHz & 5 GHz)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                activeColor: Colors.white,
              ),
            ],
          ),
          SizedBox(height: Sizes.heights(context) * 0.015),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Channel selection",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          SizedBox(height: Sizes.heights(context) * 0.015),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade700, width: 1),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _selectedChannel,
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
                          _ChannelOptions.map((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _selectedChannel = value;
                          });
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Sizes.heights(context) * 0.008),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Auto selects the least congested channel",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          SizedBox(height: Sizes.heights(context) * 0.015),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 15),
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: Sizes.heights(context) * 0.075,
                width: Sizes.widths(context) * 0.3,
                child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Applied: $_selectedFrequency")),
                    );
                  },
                  child: Card(
                    color: Colors.lightGreenAccent,
                    child: Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _guestNetwork(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "Guest Network",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SwitchListTile(
            activeThumbColor: Colors.lightGreenAccent,
            title: Text("Enable Guest WiFi", style: TextStyle(fontSize: 22)),
            value: isGuestNetworkEnabled,
            onChanged: (value) {
              setState(() {
                isGuestNetworkEnabled = value;
              });
            },
          ),
          SizedBox(height: Sizes.heights(context) * 0.015),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 20),
            child: Text(
              "Configure Guest Network Settings",
              style: TextStyle(
                fontSize: 16,
                color: Colors.lightGreenAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _routerManagement(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Router Management",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: Sizes.heights(context) * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Sizes.heights(context) * 0.08,
                  width: Sizes.widths(context) * 0.83,
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      color: Colors.grey[500],
                      child: Center(
                        child: Text(
                          "Restart Router",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
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
                  width: Sizes.widths(context) * 0.83,
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      color: Colors.grey[500],
                      child: Center(
                        child: Text(
                          "Restart Network Settings",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
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
                  width: Sizes.widths(context) * 0.83,
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          "Factory Reset",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
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
    );
  }
}
