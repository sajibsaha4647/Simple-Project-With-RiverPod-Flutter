
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myProvider = Provider<ProviderViewmodel>((ref) {
  return ProviderViewmodel();
});

class ProviderViewmodel {

  var valueprovider = Provider((ref) =>54);



}