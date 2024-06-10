import 'package:flutter/material.dart';
import 'package:lotofacil_numbers/common/custom_colors.dart';

class HomePageListOnly extends StatelessWidget {
  HomePageListOnly({super.key});

  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          children: [
            const Text(
              'Gerador de números para lotofácil',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: GridView.count(
                crossAxisCount: 5,
                padding: const EdgeInsets.all(16),
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: List.generate(numbers.length, (index) {
                  return CircleAvatar(
                    backgroundColor: CustomColors().gray,
                    child: Text(
                      "${numbers[index]}",
                      style: TextStyle(
                        fontSize: 20,
                        color: CustomColors().textGray,
                      ),
                    ),
                  );
                }),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 50,
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors().primary,
                    foregroundColor: CustomColors().textPrimary,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'GERAR',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
