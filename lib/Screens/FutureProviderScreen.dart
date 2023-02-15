import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_reverpod/Screens/FutureProviderDetails.dart';

import '../Providers/FutureProviderViewModel.dart';
class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({Key? key}) : super(key: key);

  updated (ref) async{
    var FuturesProvider = ref.watch(viewModelfutureservice);
   await ref.refresh(FuturesProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    var FuturesModelProvider = ref.watch(viewModelfutureservice);
    var futuresingleindexProvider = ref.watch(viewModelfutureProvider);
    var sendsingleindexs = ref.read(futuresingleindexProvider.singleIndex);
    var obj= {
      "sfds":"sdfds",
      "sfdrs":34
    };

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("FutureProvider"),
      ),
      body: RefreshIndicator(
          onRefresh:()=>ref.refresh(viewModelfutureservice.future),
        child: Column(
            children: [
              Container(
                child:FuturesModelProvider.when(data: (data){
                  print("data");
                  print(data);
                 return Expanded(
                   child: ListView.builder(
                      itemCount:data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Expanded(child:
                            Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: InkWell(
                                    onTap:(){
                                      ref.read(futuresingleindexProvider.singleIndex.notifier).state = data[index];
                                      Navigator.push(context, MaterialPageRoute(builder: (_)=>FutureProviderDetails()));
                        },
                                    child: Text("${data[index]["title"]}"))))
                          ],
                        );
                      },
                    ),
                 );
                }, error: (error,_){
                  Text("error on api");
                }, loading: (){
                 return Expanded(
                    child: Center(
                      child:CircularProgressIndicator() ,
                    ),
                  );
                }) ,
              )
              // futureProvider.whenComplete(() => null)

            ],
        ),
      ),
    ));
  }
}
