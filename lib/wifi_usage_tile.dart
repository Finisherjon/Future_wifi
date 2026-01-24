import 'package:flutter/material.dart';

class WifiUsageTile extends StatelessWidget {
  // final String macAddress;
  final double speedMbps;
  final double maxSpeed;

  const WifiUsageTile({
    super.key,
    // required this.macAddress,
    required this.speedMbps,
    this.maxSpeed = 79,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Text(
            //   "MAC: $macAddress",
            //   style: const TextStyle(color: Colors.white, fontSize: 16),
            // ),
            Text(
              "${speedMbps.toStringAsFixed(1)} Mbps",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: (speedMbps / maxSpeed).clamp(0, 1),
          minHeight: 10,
          backgroundColor: Colors.grey[800],
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          borderRadius: BorderRadius.circular(20),
        ),
      ],
    );
  }
}
