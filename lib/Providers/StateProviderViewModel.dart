import 'package:flutter_riverpod/flutter_riverpod.dart';

final mystateProvider = Provider<ProviderViewmodel>((ref) {
  return ProviderViewmodel();
});

class ProviderViewmodel {


  var valueprovider = StateProvider((ref) => [
    {
      "sajib":"sajib"
    }
  ]);

  var increval = StateProvider((ref)=>45);
  // var increval = StateProvider((ref)=>45);



}