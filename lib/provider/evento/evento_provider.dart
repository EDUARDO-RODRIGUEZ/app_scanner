import 'package:app_scanner/service/evento/evento_service.dart';
import 'package:app_scanner/type/EventoProximo.dart';
import 'package:flutter/cupertino.dart';

class Evento extends ChangeNotifier {
  List<EventoProximo> eventosProximos = [];
  EventoService _evento = EventoService();

  Evento() {
    getEventosProximos();
  }

  getEventosProximos() {
    print("object");
    _evento.getEventosProximos(4);
  }
}
