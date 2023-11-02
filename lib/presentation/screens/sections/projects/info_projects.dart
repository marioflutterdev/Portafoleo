import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoProjects extends StatelessWidget {
  final String name;
  final String description;
  final String image;
  final String credentialUrl;
  const InfoProjects({
    super.key,
    required this.name,
    required this.description,
    required this.image,
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
            Row(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ElevatedButton(
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
                    child: const Center(
                        child: Icon(FontAwesomeIcons.github, size: 20)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(
                color: Color(0XFF00f7ff),
                fontSize: 15,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                launchUrl(Uri.parse(credentialUrl));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 250,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
