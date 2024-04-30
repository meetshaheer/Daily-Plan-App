import 'package:daily_plainer/extensions/paddingext.dart';
import 'package:daily_plainer/widgets/todoContainerWidget.dart';
import 'package:flutter/material.dart';

class plannerView extends StatelessWidget {
  const plannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          children: [
            Text("Tuesday, 30 April",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey[800],
                )),
          ],
        ).paddingTop(50),
        Row(
          children: [
            Text("Hi Shaheer!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[800],
                )),
            Icon(
              Icons.notifications_active,
              color: Colors.grey[800],
            ).paddingLeft(8)
          ],
        ).paddingTop(10),
        Row(
          children: [
            Text("To Do",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey[800],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffFCE0E0),
                  borderRadius: BorderRadius.circular(5),
                ),
                width: 30,
                height: 22,
                child: const Center(
                  child: Text(
                    "10",
                    style: TextStyle(
                      color: Color(0xffEF6565),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ).paddingTop(80),
        const Row(
          children: [
            todoContainerWidget(
                title: "Work",
                task: "5 Task",
                primary: Color(0xffBEEDF6),
                secondary: Color(0xff31AFC8)),
            todoContainerWidget(
                title: "Daily Routines",
                task: "3 Task",
                primary: Color(0xffF6BEBE),
                secondary: Color(0xffEF6565))
          ],
        ),
        const Row(
          children: [
            todoContainerWidget(
                title: "Free Time",
                task: "1 Task",
                primary: Color(0xffB79EFF),
                secondary: Color(0xff6A48CC)),
            todoContainerWidget(
                title: "Free Time",
                task: "1 Task",
                primary: Color(0xff69EDD5),
                secondary: Color(0xff23B097)),
          ],
        )
      ],
    ).paddingLeft(28)));
  }
}
