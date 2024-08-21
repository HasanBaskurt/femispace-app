import 'package:femispace/feature/nutritions/view/widgets/nutritions_information_area.dart';
import 'package:flutter/material.dart';

class NutritionsView extends StatelessWidget {
  const NutritionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: const [
        NutritionsInformationArea(),
      ],
    );
  }
}
