import 'package:daily_plainer/extensions/paddingext.dart';
import 'package:daily_plainer/widgets/todoContainerWidget.dart';
import 'package:flutter/material.dart';

class plannerView extends StatelessWidget {
  const plannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/image.png'),
                fit: BoxFit.cover,
              )),
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
                  ).paddingTop(10).paddingBottom(80)
                ],
              ).paddingLeft(28),
            ),
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
            ).paddingLeft(28),
            const Row(
              children: [
                todoContainerWidget(
                  title: "Work",
                  task: "5 Task",
                  primary: Color(0xffBEEDF6),
                  secondary: Color(0xff31AFC8),
                  catIcon: Icons.laptop_mac,
                ),
                todoContainerWidget(
                  title: "Daily Routines",
                  task: "3 Task",
                  primary: Color(0xffF6BEBE),
                  secondary: Color(0xffEF6565),
                  catIcon: Icons.route_outlined,
                )
              ],
            ).paddingLeft(28),
            const Row(
              children: [
                todoContainerWidget(
                  title: "Free Time",
                  task: "1 Task",
                  primary: Color(0xffB79EFF),
                  secondary: Color(0xff6A48CC),
                  catIcon: Icons.history,
                ),
                todoContainerWidget(
                  title: "Education",
                  task: "3 Task",
                  primary: Color(0xff69EDD5),
                  secondary: Color(0xff23B097),
                  catIcon: Icons.cast_for_education,
                ),
              ],
            ).paddingLeft(28),
            const Row(
              children: [
                todoContainerWidget(
                  title: "Family",
                  task: "6 Task",
                  primary: Color.fromARGB(255, 255, 131, 168),
                  secondary: Color.fromARGB(255, 159, 49, 82),
                  catIcon: Icons.diversity_1,
                ),
                todoContainerWidget(
                  title: "Financial",
                  task: "1 Task",
                  primary: Color.fromARGB(251, 196, 203, 191),
                  secondary: Color(0xff4E756C),
                  catIcon: Icons.assured_workload,
                ),
              ],
            ).paddingLeft(29),
            const Row(
              children: [
                todoContainerWidget(
                  title: "Traveling",
                  task: "0 Task",
                  primary: Color.fromARGB(255, 233, 157, 236),
                  secondary: Color.fromARGB(255, 157, 45, 161),
                  catIcon: Icons.map,
                ),
                todoContainerWidget(
                  title: "Social Society",
                  task: "3 Task",
                  primary: Color.fromARGB(255, 105, 169, 229),
                  secondary: Color.fromARGB(255, 5, 90, 170),
                  catIcon: Icons.handshake,
                ),
              ],
            ).paddingLeft(28)
          ],
        ),
      ),
    ));
  }
}
