import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';

class DoctorsCard extends StatefulWidget {
  final LocalData cLocalData;
  const DoctorsCard({
    super.key,
    required this.cLocalData,
  });

  @override
  State<DoctorsCard> createState() => _CarouselCardState();
}

class _CarouselCardState extends State<DoctorsCard>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: mediaQuery.height * 0.26,
        width: mediaQuery.width * 0.90,
        decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Palette.kPrimaryColor),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.cLocalData.ctitle,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: mediaQuery.width * 0.40,
                    child: Text(
                      widget.cLocalData.cnote,
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: mediaQuery.height * 0.15,
                child: Image.asset(
                  widget.cLocalData.docImage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
