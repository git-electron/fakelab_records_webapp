part of '../../home_screen.dart';

class _About extends StatelessWidget {
  const _About();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: Pad(horizontal: 20),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _AboutHeader(),
          _AboutGallery(),
          _AboutText(_text1),
          _AboutFeatures(),
          _AboutButton(),
          _AboutText(_text2),
        ],
      ),
    );
  }

  static const String _text1 =
      'Fakelab Records — это уютная студия звукозаписи в Санкт-Петербурге. Изначально создаваясь как студия под личные цели творческого объединения FAKELAB, она объединила в себе профессиональную среду для работы над проектами любой сложности и уютную, домашнюю атмосферу, которая не давит на клиентов и позволяет им раскрыть свой творческий потенциал.';

  static const String _text2 =
      'Студия расположена по адресу г. Санкт-Петербург, ул. Комсомола, д. 2, офис 14. Бизнес-центр находится в 10 минутах пешком от станции метро «Площадь Ленина», а также в удобной транспортной доступности.';
}
