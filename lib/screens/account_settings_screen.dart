import 'package:flutter/material.dart';

import '../adjust_size.dart';

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  bool isDarkModeEnabled = false;
  bool isNotificationEnabled = false;

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
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "Account Settings",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "Manage your profile and preferences",
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                  ),
                ),
                SizedBox(height: Sizes.heights(context) * 0.025),
                _editProfile(context),
                SizedBox(height: Sizes.heights(context) * 0.015),
                _account(context),
                SizedBox(height: Sizes.heights(context) * 0.015),
                _preferences(context),
                SizedBox(height: Sizes.heights(context) * 0.015),
                _support(context),
                SizedBox(height: Sizes.heights(context) * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: Sizes.heights(context) * 0.08,
                      width: Sizes.widths(context) * 0.92,
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          color: Colors.grey[900],
                          child: Center(
                            child: Text(
                              "Sign out",
                              style: Theme.of(context).textTheme.headlineSmall
                                  ?.copyWith(color: Colors.red),
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

  _editProfile(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                            child: Icon(
                              Icons.person,
                              size: 40,
                              color: Colors.lightGreenAccent,
                            ),
                          ),
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Elon Musk",
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "ElonMusk@example.com",
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: Sizes.heights(context) * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Sizes.heights(context) * 0.07,
                  width: Sizes.widths(context) * 0.8,
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      color: Colors.grey[500],
                      child: Center(
                        child: Text(
                          "Edit Profile",
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
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

  _account(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              "Account",
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Email & Account",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Manage Subscriptions",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: ListTile(
              onTap: () {},
              title: Text(
                "Privacy & Security",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _preferences(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              "Preferences",
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.language,
              color: Colors.lightGreenAccent,
              size: 25,
            ),
            title: Text(
              'Language',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'English',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade500,
                  size: 24.0,
                ),
              ],
            ),
            onTap: () {},
          ),
          SwitchListTile(
            secondary: Icon(
              size: 25,
              Icons.dark_mode_sharp,
              color: Colors.lightGreenAccent,
            ),
            activeThumbColor: Colors.lightGreenAccent,
            title: Text(
              "Dark Mode",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            value: isDarkModeEnabled,
            onChanged: (value) {
              setState(() {
                isDarkModeEnabled = value;
              });
            },
          ),
          SwitchListTile(
            secondary: Icon(
              size: 25,
              Icons.notifications,
              color: Colors.lightGreenAccent,
            ),
            activeThumbColor: Colors.lightGreenAccent,
            title: Text(
              "Notifications",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            value: isNotificationEnabled,
            onChanged: (value) {
              setState(() {
                isNotificationEnabled = value;
              });
            },
          ),
        ],
      ),
    );
  }

  _support(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              "Support",
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Help Center",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Contact Support",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: ListTile(
              onTap: () {},
              title: Text(
                "Terms & Policies",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
