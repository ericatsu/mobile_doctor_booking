import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
final ScrollController controller = ScrollController();

  Set<PointerDeviceKind> get dragDevices => { 
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return SizedBox(
      height: mediaQuery.height * 0.125,
      child: Column(
        children: [
          Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Categories",
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
          const Spacer(),
          Row(
            children: [
              SizedBox(
                height: mediaQuery.height * 0.085,
                width: mediaQuery.width,
                child: ListView.builder(
                    itemCount: catergories.length,
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: mediaQuery.width * 0.22,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Palette.kPrimaryColor),
                          child: InkWell(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                catergories[index],
                                style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
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

List<String> catergories = ['denteeth', 'Theripist', 'denteeth', 'Theripist', 'denteeth', 'Theripist'];
