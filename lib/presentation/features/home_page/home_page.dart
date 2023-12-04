import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technaureus/presentation/features/home_page/home_bloc/home_bloc.dart';
import 'package:technaureus/presentation/features/home_page/widgets/home_grid_card.dart';
import 'package:technaureus/utils/size_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: kAppbarLeftPadding,
          child: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
                "https://krausefx.com/assets/FelixKrauseCropped.jpg"),
          ),
        ),
        actions: const [
          Padding(
            padding: kAppbarRightPadding,
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => HomeBloc(),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: kAppPaddingAll12,
              sliver: SliverGrid.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.5,
                ),
                itemBuilder: (context, index) {
                  return BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return HomeGridCard(
                        index: index,
                        selectedIndex: state.selectedIndex,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
