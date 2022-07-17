import 'package:app_scanner/provider/evento/evento_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventosProximos extends StatelessWidget {
  EventosProximos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eventop = Provider.of<Evento>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Eventos Proximos"),
          centerTitle: true,
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: eventop.eventosProximos.length,
          itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 200,
            width: double.infinity,
            decoration: Card(),
            child: Row(
              children: [ImagePoster(), Description()],
            ),
          ),
        ));
  }

  // Styles
  BoxDecoration Card() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [const BoxShadow(blurRadius: 1, offset: Offset(1, 1))]);
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        child: Column(
          children: [
            Text("Los kjarkas en conciertos",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                maxLines: 2),
            SizedBox(height: 5),
            Text(
                "Magna anim consectetur irure et do Lorem. Anim nulla aute nisi laboris elit aliquip magna tempor. Veniam sunt labore est id ea. Pariatur id deserunt eiusmod cupidatat nisi eu culpa commodo Lorem anim aliqua aute. Do voluptate aliqua laborum nulla ad eu excepteur amet eu sit proident aliquip. Tempor pariatur dolor fugiat Lorem non laborum.",
                maxLines: 5,
                textAlign: TextAlign.justify)
          ],
        ),
      ),
    );
  }
}

class ImagePoster extends StatelessWidget {
  const ImagePoster({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FadeInImage(
          placeholder: AssetImage("assets/image/loading.png"),
          image: NetworkImage("https://via.placeholder.com/300"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
