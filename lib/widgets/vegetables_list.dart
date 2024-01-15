import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task_1/data/dummy_data.dart';
import 'package:flutter_task_1/screens/vegetable_item_details.dart';
import 'package:flutter_task_1/widgets/button.dart';

class VegetablesList extends StatelessWidget {
  const VegetablesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: vegetables.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.fromLTRB(0, 16, 20, 16),
          height: 170,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            VegetableItemDetails(item: vegetables[index]),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/${vegetables[index].images[0]}',
                    width: 177,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      vegetables[index].name,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          vegetables[index].price.toStringAsFixed(2),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.41,
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          '€ / ${vegetables[index].isPerPiece ? 'piece' : 'kg'}',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Button(
                            bgColor: Colors.white,
                            size: const Size.fromHeight(40),
                            borderColor: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                            child: SvgPicture.asset('assets/icons/heart.svg'),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Button(
                            bgColor: Theme.of(context).colorScheme.tertiary,
                            size: const Size.fromHeight(40),
                            child: SvgPicture.asset(
                                'assets/icons/shopping_cart.svg'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
