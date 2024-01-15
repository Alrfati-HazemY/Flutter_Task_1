import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_1/models/vegetable_item.dart';
import 'package:flutter_task_1/widgets/button.dart';
import 'package:flutter_task_1/widgets/image_slider.dart';

class VegetableItemDetails extends StatelessWidget {
  const VegetableItemDetails({required this.item, super.key});
  final VegetableItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
          ),
          ImageSlider(images: item.images),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 245,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 37, 20, 65),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Theme.of(context).colorScheme.background,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 30, fontWeight: FontWeight.w700)),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        item.price.toStringAsFixed(2),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.41,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '€ / ${item.isPerPiece ? 'piece' : 'kg'}',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '~ ${item.weightInGram.toStringAsFixed(0)} gr ${item.isPerPiece ? '/ piece' : ''}',
                    style: const TextStyle(
                      color: Color.fromRGBO(6, 190, 119, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    item.country,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.41,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    item.description,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Button(
                        bgColor: Colors.white,
                        borderColor:
                            Theme.of(context).colorScheme.onPrimaryContainer,
                        size: const Size(78, 56),
                        child: SvgPicture.asset('assets/icons/heart.svg'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Button(
                        bgColor: Theme.of(context).colorScheme.tertiary,
                        borderColor:
                            Theme.of(context).colorScheme.onPrimaryContainer,
                        size: const Size.fromHeight(56),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/icons/shopping_cart.svg'),
                            const SizedBox(
                              width: 16,
                            ),
                            const Text(
                              'ADD TO CART',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
