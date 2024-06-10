import 'package:flutter/material.dart';
import 'package:lotofacil_numbers/common/custom_circle_input.dart';
import 'package:lotofacil_numbers/common/custom_colors.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          children: [
            const Text(
              'Registrar jogos sorteados',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Flexible(
              child: GridView.count(
                crossAxisCount: 5,
                padding: const EdgeInsets.all(16),
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: List.generate(numbers.length, (index) {
                  return const CircleInput();
                }),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 24)),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: double.maxFinite,
                    child: TextFormField(
                      style: TextStyle(
                        color: CustomColors().textGray,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Número do Concurso',
                        filled: true,
                        fillColor: CustomColors().gray,
                        hintStyle: TextStyle(color: CustomColors().textGray),
                        focusColor: CustomColors().textGray,
                        hoverColor: CustomColors().textGray,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: CustomColors().gray),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: CustomColors().gray),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: CustomColors().gray),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: CustomColors().gray),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: CustomColors().gray),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      textAlignVertical: TextAlignVertical.bottom,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 16)),
                  SizedBox(
                    height: 40,
                    width: double.maxFinite,
                    child: TextFormField(
                      style: TextStyle(
                        color: CustomColors().textGray,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Data do Concurso',
                        filled: true,
                        fillColor: CustomColors().gray,
                        hintStyle: TextStyle(color: CustomColors().textGray),
                        focusColor: CustomColors().textGray,
                        hoverColor: CustomColors().textGray,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: CustomColors().gray),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: CustomColors().gray),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: CustomColors().gray),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: CustomColors().gray),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: CustomColors().gray),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      textAlignVertical: TextAlignVertical.bottom,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 32)),
                  SizedBox(
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
                        'REGISTRAR',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
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
