import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/app/assets_path.dart';
import 'package:ecommerce/features/home/ui/widgets/app_bar_icon_button.dart';
import 'package:ecommerce/features/home/ui/widgets/product_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String name = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchBarController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                ProductSearchBar(
                  controller: _searchBarController,
                ),
                const SizedBox(height: 16),
                CarouselSlider(
                  options: CarouselOptions(height: 200),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'text $i',
                              style: const TextStyle(fontSize: 16.0),
                            ));
                      },
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: SvgPicture.asset(AssetsPath.navBarAppLogoSvg),
      actions: [
        AppBarIconButton(
          icon: Icons.person,
          onTap: () {},
        ),
        const SizedBox(width: 6),
        AppBarIconButton(
          icon: Icons.call,
          onTap: () {},
        ),
        const SizedBox(width: 6),
        AppBarIconButton(
          icon: Icons.notifications_active_outlined,
          onTap: () {},
        ),
      ],
    );
  }
}
