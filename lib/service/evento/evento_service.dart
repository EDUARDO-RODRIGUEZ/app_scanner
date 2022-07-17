import 'package:app_scanner/type/EventoProximo.dart';
import 'package:app_scanner/const/config.dart' as config;
import 'package:http/http.dart' as http;

class EventoService {
  Future<void> getEventosProximos(int id) async {
    var url = Uri.parse("${config.baseUrl}/api/encargado/proximos/$id");
    try {
      print(url);
      final response = await http.get(url);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      final data = EventoProximo.fromJson(response.body);
      print("response");
      print(data.titulo);
    } catch (error) {
      print("Error EventoService/getEventosProximos:  $error");
    }
  }
}
