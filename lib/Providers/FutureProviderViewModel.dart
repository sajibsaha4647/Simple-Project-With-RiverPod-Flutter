import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_reverpod/Services/Apiservices.dart';

final viewModelfutureservice = FutureProvider.autoDispose((ref){
  final serviceapi = ref.watch(apiserviceProvider);
  return serviceapi.getUserList();
}) ;

final viewDetailswatchProvider = Provider((ref){
  final serviceapi = ref.watch(apiserviceProvider);
  return serviceapi.nameProvider;
}) ;

final viewModelfutureProvider = Provider((ref){
  return FutureProviderViewmodel();
}) ;



class FutureProviderViewmodel {

  final singleIndex = StateProvider<Map<String ,dynamic>>((ref) => {});

}