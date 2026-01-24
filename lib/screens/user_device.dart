import 'package:flutter/material.dart';

import '../adjust_size.dart';
import 'account_settings_screen.dart';
import 'notifications_screen.dart';

class UserDevice extends StatefulWidget {
  const UserDevice({super.key});

  @override
  State<UserDevice> createState() => _UserDeviceState();
}

class _UserDeviceState extends State<UserDevice> {
  bool blockAdultContent = false;
  bool blockSocialMedia = false;
  bool blockGamingSites = false;
  bool blockStreamingServices = false;
  double dailyLimit = 3;
  double monthlyLimit = 200;

  final TextEditingController _controller = TextEditingController();
  final List<String> _blockedSites = [
    "youtube.com",
    "tiktok.com",
    "instagram.com",
  ];

  void _addSite() {
    if (_controller.text.trim().isNotEmpty) {
      setState(() {
        _blockedSites.add(_controller.text.trim());
        _controller.clear();
      });
    }
  }

  void _removeSite(int index) {
    setState(() {
      _blockedSites.removeAt(index);
    });
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
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  // color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
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
                  "User's Device",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    // color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: Sizes.heights(context) * 0.02),
                _deviceStats(context),
                SizedBox(height: Sizes.heights(context) * 0.02),
                Text(
                  "Limits & Restriction",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    // color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: Sizes.heights(context) * 0.015),
                _globalDataUsageLimits(context),
                SizedBox(height: Sizes.heights(context) * 0.015),
                _contentRestriction(context),
                SizedBox(height: Sizes.heights(context) * 0.015),
                _customBlockedSites(context),
                SizedBox(height: Sizes.heights(context) * 0.015),
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
                              style: Theme.of(
                                context,
                              ).textTheme.titleLarge!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                          color: Colors.grey[500],
                          child: Center(
                            child: Text(
                              "Cancel",
                              style: Theme.of(
                                context,
                              ).textTheme.titleLarge!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
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

  _deviceStats(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Statistics",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                // color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.018),
            Text(
              "Total time spend",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "2h 15m",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.grey,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.015),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Active Time',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium!.copyWith(
                          color: Colors.green,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Inactive Time',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium!.copyWith(color: Colors.orange),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.heights(context) * 0.01),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(10),
                      minHeight: 9,
                      value: 10 > 0 ? 4 / 6 : 0,
                      backgroundColor: Colors.orange,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1h 10m',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          // color: Colors.black,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '40m',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          // color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.018),
            Text(
              "Total MB spend",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                // color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Text("2.5 GB", style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: Sizes.heights(context) * 0.01),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'On Active Time',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium!.copyWith(color: Colors.green),
                      ),
                      Text(
                        'On Inactive Time',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium!.copyWith(color: Colors.orange),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.heights(context) * 0.01),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(10),
                      minHeight: 9,
                      value: 10 > 0 ? 5 / 6 : 0,
                      backgroundColor: Colors.orange,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '2.1 GB',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        '400 MB',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.015),
            Text(
              "Average internet speed",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                // color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.012),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(10),
                      minHeight: 9,
                      value: 10 > 0 ? 5 / 8 : 0,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '314 Mbps',
                        style: Theme.of(context).textTheme.titleSmall,
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

  _globalDataUsageLimits(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Global Data Usage Limits",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  // color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Daily Limit (GB)",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  // color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Slider(
              value: dailyLimit,
              activeColor: Colors.lightGreenAccent,
              min: 1,
              max: 15,
              divisions: 15,
              onChanged: (value) {
                setState(() => dailyLimit = value);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("1 GB"),
                  Text(
                    "${dailyLimit.round()} GB",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.lightGreenAccent,
                    ),
                  ),
                  Text("15 GB"),
                ],
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.015),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Monthly Limit (GB)", style: TextStyle(fontSize: 18)),
            ),
            Slider(
              value: monthlyLimit,
              activeColor: Colors.lightGreenAccent,
              min: 30,
              max: 465,
              divisions: 15,
              onChanged: (value) {
                setState(() => monthlyLimit = value);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("30 GB"),
                  Text(
                    "${monthlyLimit.round()} GB",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.lightGreenAccent,
                    ),
                  ),
                  Text("465 GB"),
                ],
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.025),
          ],
        ),
      ),
    );
  }

  _contentRestriction(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Sizes.heights(context) * 0.015),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Content Restrictions",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          SwitchListTile(
            activeThumbColor: Colors.lightGreenAccent,
            title: Text(
              "Bloc Adult Content",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            value: blockAdultContent,
            onChanged: (value) {
              setState(() {
                blockAdultContent = value;
              });
            },
          ),
          SizedBox(height: Sizes.heights(context) * 0.015),
          SwitchListTile(
            activeThumbColor: Colors.lightGreenAccent,
            title: Text(
              "Bloc Social Media",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            value: blockSocialMedia,
            onChanged: (value) {
              setState(() {
                blockSocialMedia = value;
              });
            },
          ),
          SizedBox(height: Sizes.heights(context) * 0.015),
          SwitchListTile(
            activeThumbColor: Colors.lightGreenAccent,
            title: Text(
              "Bloc Gaming Sites",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            value: blockGamingSites,
            onChanged: (value) {
              setState(() {
                blockGamingSites = value;
              });
            },
          ),
          SizedBox(height: Sizes.heights(context) * 0.015),
          SwitchListTile(
            activeThumbColor: Colors.lightGreenAccent,
            title: Text(
              "Bloc Streaming Services",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            value: blockStreamingServices,
            onChanged: (value) {
              setState(() {
                blockStreamingServices = value;
              });
            },
          ),
          SizedBox(height: Sizes.heights(context) * 0.015),
        ],
      ),
    );
  }

  _customBlockedSites(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Custom Blocked Sites",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.015),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _blockedSites.length,
                itemBuilder: (context, index) {
                  final site = _blockedSites[index];
                  return Dismissible(
                    key: Key(site),
                    direction: DismissDirection.horizontal,
                    onDismissed: (direction) {
                      _removeSite(index);
                    },
                    background: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 16),
                      child: const Icon(Icons.delete, color: Colors.white),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red,
                      ),
                    ),
                    secondaryBackground: Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 16),
                      child: const Icon(Icons.delete, color: Colors.white),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Text(
                            site,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.015),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Enter website URL",
                      hintStyle: const TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: const Color(0xFF2E2E2E),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _addSite,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                  child: const Text(
                    "Add",
                    style: TextStyle(fontSize: 18, color: Colors.black),
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
