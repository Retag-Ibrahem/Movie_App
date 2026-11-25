import 'package:flutter/material.dart';

class Cardcustomes extends StatelessWidget {
  final String ImageUrl;
  final String Titlee;
  final String showDate;
  final String showTime;

  const Cardcustomes({
    super.key,
    required this.ImageUrl,
    required this.Titlee,
    required this.showDate,
    required this.showTime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          ImageUrl,
          errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
        ),
        title: Text(Titlee),
        subtitle: Column(
          children: [
            Row(
              children: [
                Icon(Icons.date_range),
                SizedBox(width: 3),
                Text(showDate),
              ],
            ),
            Row(
              children: [
                Icon(Icons.timelapse_outlined),
                SizedBox(width: 3),
                Text(showTime),
              ],
            ),
          ],
        ),
      ),
    );
  }
}