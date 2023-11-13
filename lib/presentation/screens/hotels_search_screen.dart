import 'package:flutter/material.dart';
import 'package:hotels_task/core/app_images.dart';
import 'package:hotels_task/presentation/widgets/hotels_search_container_form.dart';
import 'package:hotels_task/presentation/widgets/search_hotels_custom_paint.dart';

class HotelsSearchScreen extends StatelessWidget {
  const HotelsSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.bgImage,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchHotelsCustomPaint(),
                  SizedBox(height: 6),
                  HotelsSearchContainerForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
