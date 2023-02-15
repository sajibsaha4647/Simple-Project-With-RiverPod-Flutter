

import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamserviceProvider = Provider<StreemViewssProvider>((ref){
  return StreemViewssProvider();
});

final streamvalueProvider = StreamProvider.autoDispose((ref){
  final streamservices = ref.watch(streamserviceProvider);
  return streamservices.getRealTimeData();
});

class StreemViewssProvider {

  Stream getRealTimeData (){
      return Stream.periodic(const Duration(seconds: 1),(i)=>i).take(10);
  }

}