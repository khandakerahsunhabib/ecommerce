import 'package:flutter/material.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: 'Search',
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.grey.shade200),
    );
  }
}
