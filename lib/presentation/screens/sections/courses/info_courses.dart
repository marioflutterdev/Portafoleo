import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoCourses extends StatelessWidget {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credentialUrl;
  const InfoCourses({
    super.key,
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credentialUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0XFF00f7ff),
            offset: Offset(2, 0),
            blurRadius: 20,
          ),
          BoxShadow(
            color: Colors.black,
            offset: Offset(2, 0),
            blurRadius: 20,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  organization,
                  style: const TextStyle(
                    color: Color(0XFF00f7ff),
                    fontSize: 15,
                  ),
                ),
                const Spacer(),
                Text(date),
              ],
            ),
            const SizedBox(height: 10),
            Text('Skills : $skills',
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                )),
            const Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0XFF00f7ff),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  launchUrl(Uri.parse(credentialUrl));
                },
                child: const Text('Credential')),
          ],
        ),
      ),
    );
  }
}
