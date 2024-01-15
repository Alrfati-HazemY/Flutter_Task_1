import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_1/data/dummy_data.dart';

class Chips extends StatefulWidget {
  const Chips({super.key});

  @override
  State<Chips> createState() => _ChipsState();
}

class _ChipsState extends State<Chips> {
  List<String> _selectedTags = [chipsOptions[0]];

  @override
  Widget build(BuildContext context) {
    return ChipsChoice<String>.multiple(
      padding: EdgeInsets.zero,
      spacing: 8,
      runSpacing: 20,
      wrapped: true,
      choiceCheckmark: true,
      value: _selectedTags,
      onChanged: (val) {
        setState(() => _selectedTags = val);
      },
      choiceItems: C2Choice.listFrom<String, String>(
        source: chipsOptions,
        value: (i, v) => v,
        label: (i, v) => v,
      ),
      choiceStyle: C2ChipStyle.filled(
        foregroundStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        foregroundColor: Theme.of(context).colorScheme.secondary,
        checkmarkSize: 24,
        height: 34,
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        selectedStyle: const C2ChipStyle(
          foregroundStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: Color.fromRGBO(226, 203, 255, 1),
          foregroundColor: Color.fromRGBO(108, 14, 228, 1),
        ),
      ),
    );
  }
}
