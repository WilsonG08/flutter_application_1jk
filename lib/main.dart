import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(name: "El Tungurahua ", location: "Quito"),
              ImageSection(image: 'images/t.jpg'),
              ButtonSection(),
              TextSection(description: "El Tungurahua (5.023 metros) está localizado en la Cordillera de Ecuador (Los Andes), 140 kilómetros (87 millas) al sur de Quito, la capital del país. Notables montañas y volcanes cercanos son el Chimborazo (6.310 metros) y El Altar (5.319 metros). La pequeña ciudad de Baños, conocida por sus aguas termales, se encuentra en sus faldas, a aproximadamente cinco kilómetros al norte."),
              TitleSection(name: "Nevado Cayambe", location: "Quito"),
              ImageSection(image: 'images/c.jpg'),
              ButtonSection(),
              TextSection(description: "El Cayambe es un estratovolcán activo, situado en el norte de Ecuador, en la Provincia de Pichincha. Perteneciente a la cordillera de los Andes, específicamente a los Andes septentrionales, cuenta con una altitud de 5790 m s. n. m.; por lo que es la tercera montaña más alta del Ecuador y de los Andes septentrionales, sólo superado por el volcán Chimborazo y el volcán Cotopaxi."),
              TitleSection(name: "Volcán Chimborazo", location: "Guaranda"),
              ImageSection(image: 'images/ch.jpg'),
              ButtonSection(),
              TextSection(description: "El Chimborazo es un estratovolcán potencialmente activo, situado en el centro de Ecuador, en la Provincia de Chimborazo. Perteneciente a la cordillera de los Andes, específicamente a los Andes septentrionales, cuenta con una altitud de 6263,47 m s. n. m.;1​Nota 1​ por lo que es la montaña más alta del Ecuador y de los Andes septentrionales."),
              TitleSection(name: "Cotopaxi ", location: "Latacunga"),
              ImageSection(image: 'images/coto.jpg'),
              ButtonSection(),
              TextSection(description: "A 5897 metros encima del nivel de mar, y elevando majestuosamente encima de las montañas Andinas, es el volcán más alto, es uno de los volcanes mas activos en todo el Ecuador.El nombre de la montaña es una voz Cayapa que se descompone así: Coto, cuello; pag, de pagta, sol y si de shi, dulce. Es decir, “Dulce Cuello de Sol”."),
              TitleSection(name: "Antisana  ", location: "Latacunga"),
              ImageSection(image: 'images/anti.jpeg'),
              ButtonSection(),
              TextSection(description: "El volcán Antisana es un nevado de más de 5700 m de altura ubicado a 48 km al sureste de Quito y alejado de las carreteras asfaltadas. La atracción principal es el Cóndor Andino, pero el páramo también alberga inusuales bromelias o “puyas”, frailejones, gran cantidad de especies de colibríes y otras aves de altura que rodean las lagunas, y barrancos de lava de más de 200 años de antigüedad."),
              TitleSection(name: "El Altar   ", location: "Cuencua"),
              ImageSection(image: 'images/foto.jpg'),
              ButtonSection(),
              TextSection(description: "El Altar es un volcán extinto localizado en el centro de Ecuador, en la Cordillera Oriental de los Andes a unos 45 km al suroeste de Riobamba.El volcán recibe su nombre debido a las formas que adoptan sus numerosos picos, semejando el altar de una Iglesia. Los incas llamaron a este volcán Capac Urcu, que significa montaña todopoderosa.")
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
    const FavoriteWidget(),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.green[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
  void _toggleFavorite() {
  setState(() {
    if (_isFavorited) {
      _favoriteCount -= 1;
      _isFavorited = false;
    } else {
      _favoriteCount += 1;
      _isFavorited = true;
    }
  });
}
}