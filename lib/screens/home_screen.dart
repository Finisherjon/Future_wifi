import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:future_wifi_code/adjust_size.dart';
import 'package:future_wifi_code/screens/account_settings_screen.dart';
import 'package:future_wifi_code/screens/guest_wifi_screen.dart';
import 'package:future_wifi_code/screens/user_device.dart';
import 'package:hugeicons/hugeicons.dart';

import 'connected_devices_screen.dart';
import 'history_screen.dart';
import 'limits_restriction_screen.dart';
import 'notifications_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 300,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 5),
              child: Icon(Icons.wifi, size: 30, color: Colors.lightGreenAccent),
            ),
            Text(
              "Future WiFi",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsScreen()),
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
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dashboard",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Wifi network overview ",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              _buildCurrentNetwork(context),
              SizedBox(height: 20),
              _connectedUsers(context),
              SizedBox(height: 20),
              _components(context),
              SizedBox(height: 20),
              _networkActivity(context),
            ],
          ),
        ),
      ),
    );
  }
}

_buildCurrentNetwork(BuildContext context) {
  return Card(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Current Network",
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text(
            "HomeNetwork_5G",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.lightGreenAccent,
            ),
          ),
          SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Download",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "65 Mbps",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upload",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "59 Mbps",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Uptime",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "14h 23m",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

_connectedUsers(BuildContext context) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Connected Users",
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "5 active",
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserDevice()),
                  );
                },
                child: Container(
                  child: Row(
                    children: [
                      ClipRRect(
                        child: Container(
                          color: Color(0xFF424242),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Icon(Icons.laptop_mac_outlined, size: 27),
                          ),
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "MacBook Pro",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "12.4 GB",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Today",
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConnectedDevicesScreen(),
                    ),
                  );
                },
                child: Text(
                  "View all devices",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ),
              SizedBox(width: Sizes.widths(context) * 0.01),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.lightGreenAccent,
                size: 17,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

_components(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: Sizes.heights(context) * 0.16,
            width: Sizes.widths(context) * 0.46,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    child: Container(
                      color: Color(0xFF424242),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Icon(
                          Icons.search_rounded,
                          size: 35,
                          color: Colors.lightGreenAccent,
                        ),
                      ),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  SizedBox(height: Sizes.heights(context) * 0.015),
                  Text(
                    "Search Wifi",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Sizes.heights(context) * 0.16,
            width: Sizes.widths(context) * 0.46,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GuestWifiScreen()),
                );
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Container(
                        color: Color(0xFF424242),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            Icons.people,
                            size: 35,
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    SizedBox(height: Sizes.heights(context) * 0.015),
                    Text(
                      "Guest Wifi",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: Sizes.heights(context) * 0.01),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: Sizes.heights(context) * 0.16,
            width: Sizes.widths(context) * 0.46,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LimitsRestrictionScreen(),
                  ),
                );
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Container(
                        color: Color(0xFF424242),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedWifiOff01,
                            size: 24.0,
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    Text(
                      "Limits and\nRestrictions",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: Sizes.heights(context) * 0.16,
            width: Sizes.widths(context) * 0.46,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryScreen()),
                );
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Container(
                        color: Color(0xFF424242),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            Icons.history,
                            size: 35,
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    SizedBox(height: Sizes.heights(context) * 0.015),
                    Text(
                      "History",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

_networkActivity(BuildContext context) {
  return Card(
    child: Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Connected Users",
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: Sizes.heights(context) * 0.25,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        interval: 6,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return Text(
                                "12 AM",
                                style: Theme.of(context).textTheme.labelMedium
                                    ?.copyWith(color: Colors.white70),
                              );
                            case 6:
                              return Text(
                                "6 AM",
                                style: Theme.of(context).textTheme.labelMedium
                                    ?.copyWith(color: Colors.white70),
                              );
                            case 12:
                              return Text(
                                "12 PM",
                                style: Theme.of(context).textTheme.labelMedium
                                    ?.copyWith(color: Colors.white70),
                              );
                            case 18:
                              return Text(
                                "6 PM",
                                style: Theme.of(context).textTheme.labelMedium
                                    ?.copyWith(color: Colors.white70),
                              );
                            case 24:
                              return Text(
                                "12 AM",
                                style: Theme.of(context).textTheme.labelMedium
                                    ?.copyWith(color: Colors.white70),
                              );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 1),
                        FlSpot(3, 2),
                        FlSpot(6, 3.5),
                        FlSpot(9, 5),
                        FlSpot(12, 7.5),
                        FlSpot(15, 8.2),
                        FlSpot(18, 9.5),
                        FlSpot(21, 10),
                        FlSpot(24, 13),
                      ],
                      isCurved: false,
                      color: Colors.greenAccent,
                      barWidth: 3,
                      dotData: FlDotData(show: false),
                    ),
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 0.5),
                        FlSpot(3, 1.5),
                        FlSpot(6, 2.4),
                        FlSpot(9, 3.8),
                        FlSpot(12, 6),
                        FlSpot(15, 7.2),
                        FlSpot(18, 8),
                        FlSpot(21, 9),
                        FlSpot(24, 11),
                      ],
                      isCurved: false,
                      color: Colors.purpleAccent,
                      barWidth: 3,
                      dotData: FlDotData(show: false),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
