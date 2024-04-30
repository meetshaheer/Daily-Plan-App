import 'package:flutter/material.dart';
import 'package:daily_plainer/extensions/paddingext.dart';

class todoContainerWidget extends StatelessWidget {
  final String title;
  final String task;
  final Color primary;
  final Color secondary;
  final IconData catIcon;

  const todoContainerWidget({
    super.key,
    required this.title,
    required this.task,
    required this.primary,
    required this.secondary,
    required this.catIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.circular(25),
          ),
          height: 170,
          width: 170,
          margin: const EdgeInsets.only(right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    catIcon,
                    color: secondary,
                    size: 50,
                  ).paddingLeft(30).paddingTop(30),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: secondary,
                    size: 30,
                  ).paddingRight(15).paddingTop(20)
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: secondary,
                  ),
                ),
              ).paddingLeft(30),
              SizedBox(
                width: double.infinity,
                child: Text(
                  task,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: secondary,
                  ),
                ).paddingTop(20),
              ).paddingLeft(30)
            ],
          ),
        ),
      ],
    ).paddingTop(20);
  }
}
