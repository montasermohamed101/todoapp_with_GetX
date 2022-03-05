import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key, required this.payload}) : super(key: key);

  final String payload;

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String _payload = '';
  @override
  void initState() {
    //fe l7zt in4a2 el screen el init stat btt3ml
    super.initState();
    _payload = widget.payload;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.theme.backgroundColor,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
          ),
        ),
        title: Text(
          _payload.toString().split('|')[0],
          style: TextStyle(color: Get.isDarkMode ? Colors.white : darkGreyClr),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'Hello, Montaser',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Get.isDarkMode ? Colors.white : darkGreyClr,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'You Have a new reminder',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Get.isDarkMode ? Colors.grey : darkGreyClr,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: primaryClr,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.text_format,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Title',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        _payload.toString().split('|')[0],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Icon(
                            Icons.description,
                            color: Colors.white,
                            size: 35,
                          ),
                          Text(
                            'Description',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        _payload.toString().split('|')[1],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Date',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        _payload.toString().split('|')[2],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
