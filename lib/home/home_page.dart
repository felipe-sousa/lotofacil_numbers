import 'package:flutter/material.dart';
import 'package:lotofacil_numbers/common/custom_circle_input.dart';
import 'package:lotofacil_numbers/common/custom_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          children: [
            const Text(
              'Informe o último jogo sorteado',
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
                children: List.generate(15, (index) {
                  return const CircleInput();
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
                    'PRÓXIMO',
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
