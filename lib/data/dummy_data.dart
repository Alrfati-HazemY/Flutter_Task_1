import 'package:flutter_task_1/models/vegetable_item.dart';

const vegetables = [
  VegetableItem(
      name: 'Boston Lettuce',
      price: 1.10,
      isPerPiece: true,
      images: ['boston.jpg', 'boston_1.jpg', 'boston_2.jpg'],
      weightInGram: 150,
      country: "Spain",
      description:
          'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.'),
  VegetableItem(
      name: 'Purple Cauliflower',
      price: 1.85,
      isPerPiece: false,
      images: [
        'purple_cauliflower.jpg',
        'purple_cauliflower_1.jpg',
        'purple_cauliflower_2.jpg',
      ],
      country: "Brazil",
      description:
          'Cauliflower is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.'),
  VegetableItem(
      name: 'Savoy Cabbage',
      price: 1.45,
      isPerPiece: false,
      images: [
        'savoy_cabbage.jpg',
        'savoy_cabbage_1.jpg',
        'savoy_cabbage_2.jpg'
      ],
      country: "Jordan",
      description:
          'Cabbage is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.'),
];

const List<String> chipsOptions = [
  'Cabbage and lettuce (14)',
  'Cucumbers and tomatoes (10)',
  'Onions and garlic (8)',
  'Peppers (7)',
  'Potatoes and carrots (4)',
];
