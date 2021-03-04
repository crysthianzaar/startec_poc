import 'package:http/http.dart' as http;

const baseUrl = "https://startecapi.herokuapp.com/";

class API {
  static Future getUsers() async {
    var url = baseUrl;
    return await http.get(url);
  }
}
