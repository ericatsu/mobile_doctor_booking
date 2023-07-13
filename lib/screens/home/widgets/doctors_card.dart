import 'package:flutter/cupertino.dart';
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
  bool isLiked = false;

  void _whenLiked() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        height: mediaQuery.height * 0.20,
        width: mediaQuery.width * 0.90,
        decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Color(0xFFD9D9D9)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Image.asset(
                widget.cLocalData.docImage,
              ),
            ),
            SizedBox(
              width: mediaQuery.width * 0.45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.cLocalData.docName,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      InkWell(
                        onTap: _whenLiked,
                        child: Icon(
                          isLiked
                              ? CupertinoIcons.heart
                              : CupertinoIcons.heart_fill,
                          size: 15,
                          color: Palette.kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: mediaQuery.width * 0.46,
                    child: Text(
                      widget.cLocalData.docInfo,
                      style: const TextStyle(fontSize: 10, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.012,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: mediaQuery.width * 0.15,
                          height: mediaQuery.height * 0.029,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                              color: Palette.kPrimaryColor),
                          child: const Center(
                            child: Text(
                              "Book",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        '★',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.amber),
                      ),
                      SizedBox(
                        width: mediaQuery.width * 0.01,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          '5.0',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
