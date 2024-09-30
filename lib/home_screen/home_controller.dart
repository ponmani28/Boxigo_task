import 'package:boxingotask/model/sample_data_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeController extends GetxController {
//   RxString a = "hello".obs;
// var selectedIndex = 0.obs; // Observable variable for selected index
// RxList<CustomerEstimateFlowElement> sampleddataList = <CustomerEstimateFlowElement>  [].obs;
// RxList<CustomerEstimateFlow> detailspage =<CustomerEstimateFlow>  [].obs;
// RxBool livingroom = false.obs;
// RxList display =  [].obs;
// RxList quantity =  [].obs;



// RxBool deatils  = false.obs ;
// @override
//   void onInit() {
// getdata();
//     super.onInit();
//   }


//   void changeIndex(int index) {
//     selectedIndex.value = index; // Update the index
//   }

//   getdata() async{


//  final result = await Dio().get("http://test.api.boxigo.in/sample-data/");
//     final res = CustomerEstimateFlow.fromJson(result.data);

//    sampleddataList .addAll(res.customerEstimateFlow!);

    
//   }



 var selectedIndex = 1.obs; 
  RxBool loading = false.obs;
 RxInt selected = 0.obs; 

  RxList<CustomerEstimateFlowElement> details =
      <CustomerEstimateFlowElement>[].obs;
  RxList<CustomerEstimateFlowElement> productdetails =
      <CustomerEstimateFlowElement>[].obs;

  RxList<Items> productitems = <Items>[].obs;
  RxList<Inventory> inventoryitems = <Inventory>[].obs;
  RxList<CustomItems> customitems = <CustomItems>[].obs;

  RxList<Category> inventorycategory = <Category>[].obs;

  RxList<CustomItemsItem> customCategoryITEMS = <CustomItemsItem>[].obs;
  RxList<ChildItemElement> inventorycategoryItems = <ChildItemElement>[].obs;

  RxBool drop1 = false.obs;
  RxBool drop2 = false.obs;
  RxBool drop3 = false.obs;

  RxInt drop1index = 0.obs;
  RxInt drop1index2 = 0.obs;
  RxInt drop1index3 = 0.obs;
  @override
  Future<void> onInit() async {
    det();
    super.onInit();
  }


  

  det() async {
    final result = await Dio().get("http://test.api.boxigo.in/sample-data/");
    final res = CustomerEstimateFlow.fromJson(result.data);

    details.addAll(res.customerEstimateFlow!);
    // green(details);
  }


  void changeIndex(int index) {
    selectedIndex.value = index; // Update the index
  }

  


}