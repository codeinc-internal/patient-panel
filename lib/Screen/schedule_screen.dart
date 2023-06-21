import 'package:flutter/material.dart';
import 'package:patient_panel/widgets/upcoming_schedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _ButtonIndex = 0;
  final List<Widget> _scheduleWidget = [
    // upcoming widget
    UpcomingSchedule(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Schedule",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Color(0xFFF4F6FA),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        _ButtonIndex = 0;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                          color: _ButtonIndex == 0
                              ? Color.fromARGB(255, 102, 102, 235)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Upcoming",
                        style: TextStyle(
                            color:
                                _ButtonIndex == 0 ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                InkWell(
                    onTap: () {
                      setState(() {
                        _ButtonIndex = 1;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                          color: _ButtonIndex == 1
                              ? Color.fromARGB(255, 102, 102, 235)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Completed",
                        style: TextStyle(
                            color:
                                _ButtonIndex == 1 ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                InkWell(
                    onTap: () {
                      setState(() {
                        _ButtonIndex = 2;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                          color: _ButtonIndex == 2
                              ? Color.fromARGB(255, 102, 102, 235)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Canceled",
                        style: TextStyle(
                            color:
                                _ButtonIndex == 2 ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          _scheduleWidget[_ButtonIndex]
        ],
      ),
    ));
  }
}
