import 'package:app_counter_mvc/modules/home/models/count_model.dart';

class HomeController {
  var data = CountModel(value: 0);

  void increment() {
    data = data.copyWith(value: data.value + 1); // Vantagem facilita
  }
}
