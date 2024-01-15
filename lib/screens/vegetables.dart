import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task_1/widgets/bottm_navbar.dart';
import 'package:flutter_task_1/widgets/chips.dart';
import 'package:flutter_task_1/widgets/vegetables_list.dart';

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final searchBarBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      borderRadius: BorderRadius.circular(27),
    );

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: const SizedBox(
        height: 80,
        child: BottomNavbar(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 212,
                  width: double.infinity,
                  child: SvgPicture.asset(
                    'assets/images/vegetables.svg',
                    alignment: Alignment.topRight,
                  ),
                ),
                Positioned(
                  top: 96,
                  child: Text(
                    "Vegetabless",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 20,
                  top: 164,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal:
                                5), // Figma ==> const EdgeInsets.only(left: 22, right: 16),
                        child: SvgPicture.asset('assets/icons/search.svg',
                            width: 24, height: 24, fit: BoxFit.scaleDown),
                      ),
                      hintText: 'Search',
                      hintStyle:
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                      enabledBorder: searchBarBorder,
                      focusedBorder: searchBarBorder,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Chips(),
            const SizedBox(
              height: 32,
            ),
            const VegetablesList(),
          ],
        ),
      ),
    );
  }
}
