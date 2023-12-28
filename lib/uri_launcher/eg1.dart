import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherSample extends StatefulWidget {
  const UrlLauncherSample({super.key});

  @override
  State<UrlLauncherSample> createState() => _UrlLauncherSampleState();
}

class _UrlLauncherSampleState extends State<UrlLauncherSample> {
  openMapApp() async {
    const String lat = "9.9640985";
    const String lng = "76.2833322";
    const String mapUrl = "geo:$lat,$lng";
    await launchUrl(Uri.parse(mapUrl));
  }

  openSmsApp() async {
    String telephoneNumber = '8129625023';
    String telephoneUrl = "sms:$telephoneNumber";
    await launchUrl(Uri.parse(telephoneUrl));
  }

  openGmailApp() async {
    String email = 'johnwick23@gmail.com';
    String subject = 'This is a test email';
    String body = 'This is a test email body';
    String emailUrl = "mailto:$email?subject=$subject&body=$body";
    await launchUrl(Uri.parse(emailUrl));
  }

  showWebpage() async {
    var url = "https://fitgirl-repacks.site/page/9/";
    await launchUrl(Uri.parse(url));
  }

  openPhoneAPP() async {
    String telephoneNumber = '9747474569';
    String telephoneUrl = "tel:$telephoneNumber";
    await launchUrl(Uri.parse(telephoneUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.adb_sharp, color: Colors.white),
          )
        ],
        title: const Text(
          "U R L  L A U N C H E R",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      drawer: const Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 25,
              ),
            ),
            ListTile(
              title: Text(
                "ACCOUNT",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w200),
              ),
              leading: Icon(Icons.account_circle_rounded, color: Colors.pink),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      foregroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {
                    setState(() {
                      showWebpage();
                    });
                  },
                  child: const Text("FITGIRL REPACKS")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      foregroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {
                    setState(() {
                      openPhoneAPP();
                    });
                  },
                  child: const Text("PHONE")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      foregroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {
                    setState(() {
                      openGmailApp();
                    });
                  },
                  child: const Text("G-MAIL")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      foregroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {
                    setState(() {
                      openSmsApp();
                    });
                  },
                  child: const Text("MESSAGE")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      foregroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {
                    setState(() {
                      openMapApp();
                    });
                  },
                  child: const Text("MAP")),
            )
          ],
        ),
      ),
    );
  }
}
