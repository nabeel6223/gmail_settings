import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gmail_settings/country_code.dart';
// import 'package:gmail_settings/drag_stars.dart';
// import 'package:gmail_settings/drag_stars2.dart';
import 'package:gmail_settings/language.dart';
// import 'package:gmail_settings/signature.dart';
import 'package:gmail_settings/signatureCont.dart';
import 'package:gmail_settings/stars.dart';
// import 'package:gmail_settings/text-style.dart';
import 'package:gmail_settings/textStyleCont.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  State<SettingsPage> createState() {
    return _SettingsPage();
  }
}

class _SettingsPage extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // width: 1000,
      // height: 1000,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                // width: double.infinity,
                // height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Settings",
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          decoration: const BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                              width: 2.0,
                              color: Colors.blue,
                            ),
                          )),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "General",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                        )),
                        child: Language(),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                        )),
                        child: CountryCode(),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                        )),
                        child: TextStyleContainer(),
                      ),
                      Container(
                          decoration: const BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Colors.grey,
                            ),
                          )),
                          child: Stars()),
                      Container(
                          decoration: const BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Colors.grey,
                            ),
                          )),
                          child: SignContainer()),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                style: OutlinedButton.styleFrom(
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    minimumSize: Size.zero,
                                    padding: EdgeInsets.zero,
                                    backgroundColor:
                                        Color.fromARGB(143, 233, 234, 237),
                                    side: BorderSide(
                                        width: 0, color: Colors.black),
                                    // fixedSize: Size(20, 20),
                                    shape: BeveledRectangleBorder()),
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    "Save Changes",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextButton(
                                  style: OutlinedButton.styleFrom(
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      minimumSize: Size.zero,
                                      padding: EdgeInsets.zero,
                                      backgroundColor:
                                          Color.fromARGB(143, 233, 234, 237),
                                      side: const BorderSide(
                                          width: 0, color: Colors.black),
                                      // fixedSize: Size(20, 20),
                                      shape: BeveledRectangleBorder()),
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      )
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
}
