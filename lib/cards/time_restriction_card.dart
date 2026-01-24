import 'package:flutter/material.dart';

import '../adjust_size.dart';

class TimeRestrictionCard extends StatefulWidget {
  const TimeRestrictionCard({super.key});

  @override
  State<TimeRestrictionCard> createState() => _TimeRestrictionCardState();
}

class _TimeRestrictionCardState extends State<TimeRestrictionCard> {
  bool _enabled = false;

  int _startHour = 0;
  int _startMinute = 0;
  int _endHour = 23;
  int _endMinute = 0;

  final List<String> _days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  Set<int> _selectedDays = {0};

  void _pickTime({required bool isStart}) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return AndroidTimePicker(
          selectedHour: isStart ? _startHour : _endHour,
          selectedMinute: isStart ? _startMinute : _endMinute,
          onHourChanged: (h) {
            setState(() {
              if (isStart) {
                _startHour = h;
              } else {
                _endHour = h;
              }
            });
          },
          onMinuteChanged: (m) {
            setState(() {
              if (isStart) {
                _startMinute = m;
              } else {
                _endMinute = m;
              }
            });
          },
        );
      },
    );
  }

  String _formatTime(int h, int m) {
    // final period = h >= 12 ? "PM" : "AM";
    final hour12 = h % 24;
    return "${hour12.toString().padLeft(2, '0')}:${m.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Time Restrictions",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: Sizes.heights(context) * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Set Time Limit", style: TextStyle(fontSize: 18)),
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
                          Row(
                            children: [
                              Expanded(
                                child: _TimeDropdown(
                                  label: "Start Time",
                                  formatted: _formatTime(
                                    _startHour,
                                    _startMinute,
                                  ),
                                  onTap: () => _pickTime(isStart: true),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: _TimeDropdown(
                                  label: "End Time",
                                  formatted: _formatTime(_endHour, _endMinute),
                                  onTap: () => _pickTime(isStart: false),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),

                          // Days
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: List.generate(_days.length, (index) {
                              final isSelected = _selectedDays.contains(index);
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (isSelected) {
                                      _selectedDays.remove(index);
                                    } else {
                                      _selectedDays.add(index);
                                    }
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        isSelected
                                            ? Colors.cyanAccent.withOpacity(
                                              0.15,
                                            )
                                            : Colors.transparent,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color:
                                          isSelected
                                              ? Colors.lightGreenAccent
                                              : Colors.grey.shade600,
                                      width: 2,
                                    ),
                                  ),
                                  child: Text(
                                    _days[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color:
                                          isSelected
                                              ? Colors.lightGreenAccent
                                              : Colors.white70,
                                    ),
                                  ),
                                ),
                              );
                            }),
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

class _TimeDropdown extends StatelessWidget {
  final String label;
  final String formatted;
  final VoidCallback onTap;

  const _TimeDropdown({
    required this.label,
    required this.formatted,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.grey.shade700),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatted,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AndroidTimePicker extends StatelessWidget {
  final int selectedHour;
  final int selectedMinute;
  final ValueChanged<int> onHourChanged;
  final ValueChanged<int> onMinuteChanged;

  const AndroidTimePicker({
    super.key,
    required this.selectedHour,
    required this.selectedMinute,
    required this.onHourChanged,
    required this.onMinuteChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              onSelectedItemChanged: onHourChanged,
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) {
                  if (index < 0 || index > 23) return null;
                  return Center(
                    child: Text(
                      index.toString().padLeft(2, '0'),
                      style: TextStyle(
                        fontSize: index == selectedHour ? 28 : 20,
                        fontWeight:
                            index == selectedHour
                                ? FontWeight.bold
                                : FontWeight.normal,
                        color:
                            index == selectedHour
                                ? Colors.lightGreenAccent
                                : Colors.white70,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Text(":", style: TextStyle(fontSize: 28, color: Colors.white)),
          Expanded(
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              onSelectedItemChanged: onMinuteChanged,
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) {
                  if (index < 0 || index > 59) return null;
                  return Center(
                    child: Text(
                      index.toString().padLeft(2, '0'),
                      style: TextStyle(
                        fontSize: index == selectedMinute ? 28 : 20,
                        fontWeight:
                            index == selectedMinute
                                ? FontWeight.bold
                                : FontWeight.normal,
                        color:
                            index == selectedMinute
                                ? Colors.lightGreenAccent
                                : Colors.white70,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
