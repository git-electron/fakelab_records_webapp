import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import '../../../../../../core/gen/assets.gen.dart';
import '../../../../../../core/theme/theme_extensions.dart';
import 'about_map_and_features.dart';
import '../../../../../ui/app_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'about_gallery.dart';

class HomeScreenAbout extends StatelessWidget {
  const HomeScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: Pad(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AboutHeader(),
          Gap(20),
          AboutGallery(),
          Gap(20),
          AboutText(
            'Fakelab Records — это уютная студия звукозаписи в Санкт-Петербурге. Изначально создаваясь как студия под личные цели творческого объединения FAKELAB, она объединила в себе профессиональную среду для работы над проектами любой сложности и уютную, домашнюю атмосферу, которая не давит на клиентов и позволяет им раскрыть свой творческий потенциал.',
          ),
          Gap(20),
          AboutMapAndFeatures(),
          Gap(20),
          AboutButton(),
          Gap(20),
          AboutText(
            'Студия расположена по адресу г. Санкт-Петербург, ул. Комсомола, д. 2, офис 14. Бизнес-центр находится в 10 минутах пешком от станции метро «Площадь Ленина», а также в удобной транспортной доступности.',
          ),
        ],
      ),
    );
  }
}

class AboutHeader extends StatelessWidget {
  const AboutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      child: Text(
        'О нас',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}

class AboutText extends StatelessWidget {
  const AboutText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      child: Text(
        text,
        style: context.styles.body2,
      ),
    );
  }
}

class AboutButton extends StatelessWidget {
  const AboutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton.primary(
      onTap: () => launchUrlString(
          'https://yandex.ru/maps/?from=mapframe&ll=30.369747%2C59.954633&poi%5Bpoint%5D=30.369747&poi%5Bpoint%5D=59.954633&poi%5Buri%5D=ymapsbm1%3A%2F%2Forg%3Foid%3D64952203819&source=mapframe&utm_source=mapframe&z=12'),
      text: 'Как нас найти?',
      icon: Assets.icons.pinBlack,
    );
  }
}
