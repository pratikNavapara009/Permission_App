import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Permissions"),
        actions: [
          IconButton(
            onPressed: () {
              openAppSettings();
            },
            icon: const Icon(Icons.settings),
          ),
        ],
        backgroundColor: const Color(0xff000000),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff000000),
            const Color(0xff434343),
          ],
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150,
                child: OutlinedButton(
                  onPressed: () async {
                    PermissionStatus Status = await Permission.camera.request();
                    if (Status == PermissionStatus.granted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is granted",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is Denied",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  style: buttonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.camera, color: Color(0xff19601E)),
                      Text(
                        "Camera",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: OutlinedButton(
                  onPressed: () async {
                    PermissionStatus Status = await Permission.photos.request();
                    if (Status == PermissionStatus.granted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is granted",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is Denied",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  style: buttonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.photo, color: Color(0xff19601E)),
                      Text(
                        "Photos",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: OutlinedButton(
                  onPressed: () async {
                    PermissionStatus Status =
                        await Permission.storage.request();
                    if (Status == PermissionStatus.granted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is granted",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is Denied",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  style: buttonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.sd_storage,
                        color: Color(0xff19601E),
                      ),
                      Text(
                        "Storage",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: OutlinedButton(
                  onPressed: () async {
                    PermissionStatus Status =
                        await Permission.microphone.request();
                    if (Status == PermissionStatus.granted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is granted",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is Denied",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  style: buttonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.mic, color: Color(0xff19601E)),
                      Text(
                        "Microphone",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: OutlinedButton(
                  onPressed: () async {
                    PermissionStatus Status =
                        await Permission.calendar.request();
                    if (Status == PermissionStatus.granted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is granted",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is Denied",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  style: buttonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.date_range, color: Color(0xff19601E)),
                      Text(
                        "Calendar",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: OutlinedButton(
                  onPressed: () async {
                    PermissionStatus Status = await Permission.phone.request();
                    if (Status == PermissionStatus.granted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is granted",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is Denied",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  style: buttonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.phone, color: Color(0xff19601E)),
                      Text(
                        "Phones",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: OutlinedButton(
                  onPressed: () async {
                    PermissionStatus Status = await Permission.audio.request();
                    if (Status == PermissionStatus.granted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is granted",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is Denied",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  style: buttonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.speaker, color: Color(0xff19601E)),
                      Text(
                        "Audio",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: OutlinedButton(
                  onPressed: () async {
                    PermissionStatus Status =
                        await Permission.location.request();
                    if (Status == PermissionStatus.granted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is granted",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is Denied",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  style: buttonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.location_on_outlined,
                          color: Color(0xff19601E)),
                      Text(
                        "Location",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: OutlinedButton(
                  onPressed: () async {
                    PermissionStatus Status =
                        await Permission.notification.request();
                    if (Status == PermissionStatus.granted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is granted",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is Denied",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  style: buttonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.notification_add_sharp,
                          color: Color(0xff19601E)),
                      Text(
                        "Notification",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                child: OutlinedButton(
                  onPressed: () async {
                    PermissionStatus Status = await Permission.videos.request();
                    if (Status == PermissionStatus.granted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is granted",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Permission is Denied",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          ),
                          elevation: 1,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  style: buttonStyle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.videocam,
                        color: Color(0xff19601E),
                      ),
                      Text(
                        "Videos",
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle textStyle = const TextStyle(
    color: Colors.black,
  );

  ButtonStyle buttonStyle = ButtonStyle(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    shadowColor: MaterialStateProperty.all(Colors.red),
    elevation: MaterialStateProperty.all(10),
    side: MaterialStateProperty.all(
      const BorderSide(color: Colors.red, width: 3),
    ),
    backgroundColor: MaterialStateProperty.all(
      Colors.white,
    ),
  );
}
