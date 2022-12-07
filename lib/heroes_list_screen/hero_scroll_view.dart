import 'package:effective_lab_flutter/data/demo_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_3d/gallery3d.dart';

class HeroScrollView extends StatefulWidget {
  const HeroScrollView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HeroScrollViewState createState() => _HeroScrollViewState();
}

class _HeroScrollViewState extends State<HeroScrollView>
    with TickerProviderStateMixin {
  var list = DemoData().heroes;

  int currentIndex = 0;

  Widget buildGallery3D() {
    return Gallery3D(
        autoLoop: false,
        itemCount: list.length,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        itemConfig: GalleryItemConfig(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.75,
            radius: 10),
        currentIndex: currentIndex,
        onItemChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return HeroListItem(heroData: list[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return buildGallery3D();
  }
}

class HeroListItem extends StatelessWidget {
  const HeroListItem({Key? key, required this.heroData}) : super(key: key);
  final HeroData heroData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      fit: StackFit.expand,
      children: [
        Image.network(
          heroData.imageAsset,
          fit: BoxFit.cover,
        ),
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                heroData.name,
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    backgroundColor: Colors.black12),
                textAlign: TextAlign.start,
              ),
            ))
      ],
    );
  }
}
