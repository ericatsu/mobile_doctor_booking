import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/screens/home/widgets/doctors_card.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';

class AllDoctorsWidget extends StatefulWidget {
  const AllDoctorsWidget({super.key});

  @override
  State<AllDoctorsWidget> createState() => _AllDoctorsWidgetState();
}

class _AllDoctorsWidgetState extends State<AllDoctorsWidget> {

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return Expanded(
      child: Column(
        children: [
          Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "All Doctors",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.011,
          ),
          Column(
            children: [
              SizedBox(
                height: mediaQuery.height * 0.20,
                child: ListView.builder(
                    itemCount: localItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: DoctorsCard(
                          cLocalData: localItems[index],
                        ),
                      );
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}


