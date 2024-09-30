import 'package:boxingotask/home_screen/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


class DetScreen extends GetView<HomeController> {
  const DetScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.white,
                height: 1.sh,
                width: 1.sw,
                child: Padding(
                  padding:  EdgeInsets.all(8.0.sp),
                  child: Column(
                    children: [

Obx(
   () {
    return Expanded(
    
    
    
    child:  DefaultTabController(length: 3, child:Column(children: [
      const TabBar(indicatorColor: Colors.deepOrange,
      labelColor: Colors.deepOrange,
                        isScrollable: true,
                        tabs: [
                          Tab(text: 'Items',),
                          Tab(text: 'NEW'),
                          Tab(text: 'FOLLOW UP'),
                         
                        ],
                      ),
                 Expanded(child: TabBarView(children: [
       SizedBox(
                            height: 1.sh,
                            width: 1.sw,
                            child: ListView.builder(
                              itemCount: controller.inventoryitems.length,
                              itemBuilder: (context, outerIndex) {
                                final category = controller.inventoryitems[outerIndex];
                                return Obx(
                                   () {
                                    return Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        
                                        Container(
                                          color:  Colors.blueGrey.withOpacity(0.2),
                                          height: 50,
                                          width: 1.sw,
                                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SizedBox(width: 20.sp,),
                                              Center(
                                                child: Text(
                                                  category.name.toString(),
                                                  style: const TextStyle(color:  Colors.deepOrange ,fontWeight:FontWeight.bold ),
                                                ),
                                              ),const Spacer(),
                                              InkWell(
                                                onTap: () {
                                                 controller.drop1.value == false ? controller.drop1.value = true :
                                                  controller.drop1.value = false;
                                    
                                                 controller.drop1index.value = outerIndex;
                                                },
                                                child:  
                                                  controller.drop1.value == true ?
                                    
                                                
                                                const Icon(Icons.keyboard_arrow_down_outlined
                                          
                                                ) :  const Icon(Icons.keyboard_arrow_up_rounded
                                          
                                                )
                                                
                                                )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                    
                                    (controller.drop1.value == true && controller.drop1index.value==  outerIndex)? 
                                    
                                        SizedBox(
                                          height:  400.sp,
                                          width: 1.sw,
                                          child: ListView.builder(
                                            itemCount: category.category?.length ?? 0,
                                            itemBuilder: (context, secondIndex) {
                                              final item = category.category?[secondIndex];
                                    
                                              return SizedBox(
                                                             
                                                // height: 340.sp,
                                                width: 100.sp,
                                                child: Obx(
                                                   () {
                                                    return Column(mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        item != null
                                                            ? Padding(
                                                              padding:  EdgeInsets.only(left: 20.sp,right: 20.sp),
                                                              child: Container(
                                                                 height: 40.sp,width: 1.sw,
                                                                   color:  Colors.blueGrey.withOpacity(0.2),
                                                                child: Center(
                                                                  child: Row(
                                                                    children: [
                                                                      SizedBox(width: 20.sp,),
                                                                      Center(
                                                                        child: Text(
                                                                            item.displayName?.toString() ?? 'No Name',
                                                                            style: const TextStyle(color:  Colors.black),
                                                                          ),
                                                                      ),const Spacer(),
                                                                         InkWell(
                                                    onTap: () {
                                                     controller.drop2.value == false ? controller.drop2.value = true :
                                                      controller.drop2.value = false;
                                                                                  
                                                     controller.drop1index2.value = secondIndex;
                                                    },
                                                    child:  
                                                      controller.drop2.value == true ?
                                                                                  
                                                    
                                                    const Icon(Icons.keyboard_arrow_down_outlined
                                                                                        
                                                    ) :  const Icon(Icons.keyboard_arrow_up_rounded
                                                                                        
                                                    )
                                                    
                                                    )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                            : const SizedBox.shrink(),
                                                                                  
                                                      
                                                        if (item != null && item.items != null)
                                            (controller.drop2.value == true && controller.drop1index2.value==  secondIndex)? 
                                          
                                                          SizedBox(
                                                      
                                                            height:300.sp,
                                                            width: 1.sw, // Use width as per your requirement
                                                            child: ListView.separated(
                                                              separatorBuilder: (context, index) => SizedBox(height: 5.sp,),
                                                              itemCount: item.items!.length,
                                                              itemBuilder: (context, thirdIndex) {
                                                                final nestedItem = item.items![thirdIndex];
                                                                return Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    nestedItem != null
                                                                        ? Padding(
                                                                          padding:  EdgeInsets.all(10.sp),
                                                                          child: SizedBox(height: 50.sp,
                                                                          
                                                                            width: 1.sw,
                                                                            // color:  Colors.grey,
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding:  EdgeInsets.all(8.0.sp),
                                                                                  child: const Icon(Icons.card_travel),
                                                                                ),SizedBox(width: 5.sp,),

                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                        nestedItem.displayName?.toString() ?? 'No Name',
                                                                                        style: const TextStyle(color:  Colors.grey),
                                                                                      ),SizedBox(height: 5.sp,),
                                                                                      Row(
                                                                                        children: [
                                                                                          Text((nestedItem.size!.isEmpty || nestedItem.size == null )  ? "Medium":
                                                                                                                                                                nestedItem.size?.first.option. toString() ?? 'No Name',
                                                                                                                                                                style: const TextStyle(color:  Colors.black,fontWeight: FontWeight.bold),
                                                                                                                                                              ),
                                                                                   Text((nestedItem.type!.isEmpty || nestedItem.type == null )  ? "| Type unavalible":
                                                                                    " | ${nestedItem.type?.first.option. toString() } ",
                                                                                                                                                                style: const TextStyle(color:  Colors.black,fontWeight: FontWeight.bold),
                                                                                                                                                              ),
                                                                                                                                                       
                                                                               
                                                                                        ],
                                                                                      ),
                                                                                  ],
                                                                                
                                                                                ),const Spacer(),
   Padding(
     padding:   EdgeInsets.all(8.0.sp),
     child: Text((nestedItem.qty == null )  ? " 1":
                                                                                      " ${nestedItem.qty. toString() } ",
                                                                                                                                                                  style: const TextStyle(color:  Colors.black,fontWeight: FontWeight.bold),
                                                                                                                                                                ),
   ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        )
                                                                        : const SizedBox.shrink(),
                                                                        
                                                                  ],
                                                                );
                                                              },
                                                            ),
                                                          ):SizedBox(height: 10.sp,)
                                                      ],
                                                    );
                                                  }
                                                ),
                                              );
                                            },
                                          ),
                                        ):
                                       
                                       const SizedBox(height: 16),
                                      ],
                                    );
                                  }
                                );
                              },
                            ),
                          ),
    
    
                  Column(
                   children: [
                     const floorinfo(),
                     SizedBox(height: 20.sp),
                     const floorinfo(),
                   ],
                 ), 
  const Center(child: Text("No Data Avalible")),
                 ]))     
    
    ],) ),
    );
  }
)


                   
                
                    ],
                  ),
                ),
              ),
            )
        
      ),
    );
  }
}

class floorinfo extends StatelessWidget {
  const floorinfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
    
     Container(
                             color:  Colors.blueGrey.withOpacity(0.2),
                             height: 50,
                             width: 1.sw,
                             child: const Center(child:  Text("Existing House Details",
                                                                           style: TextStyle(color:  Colors.deepOrange,fontWeight: FontWeight.bold),
                                                                         ),),
    
    
                             
                             ),
     Padding(
       padding:  EdgeInsets.all(8.0.sp),
       child: const Row(
         children: [
           Text(
                               "Floor No", style: TextStyle(color:  Colors.grey,fontWeight: FontWeight.bold),
                                                                               ),
                                                                               Spacer(),
                                                                                   Text(
                               "10", style: TextStyle(color:  Colors.black,fontWeight: FontWeight.bold),
                                                                               ),
         ],
       ),
     ),
      Padding(
       padding:  EdgeInsets.all(8.0.sp),
       child: const Row(
         children: [
           Text(
                               "Elevator Avalible", style: TextStyle(color:  Colors.grey,fontWeight: FontWeight.bold),
                                                                               ),
                                                                               Spacer(),
                                                                                   Text(
                               "Yes", style: TextStyle(color:  Colors.black,fontWeight: FontWeight.bold),
                                                                               ),
         ],
       ),
     ),
      Padding(
       padding:  EdgeInsets.all(8.0.sp),
       child: const Row(
         children: [
           Text(
                               "Packing Required", style: TextStyle(color:  Colors.grey,fontWeight: FontWeight.bold),
                                                                               ),
                                                                               Spacer(),
                                                                                   Text(
                               "Yes", style: TextStyle(color:  Colors.black,fontWeight: FontWeight.bold),
                                                                               ),
         ],
       ),
     ),
      Padding(
       padding:  EdgeInsets.all(8.0.sp),
       child: const Row(
         children: [
           Text(
                               "Distance from door to truck", style: TextStyle(color:  Colors.grey,fontWeight: FontWeight.bold),
                                                                               ),
                                                                               Spacer(),
                                                                                   Text(
                               "20 mts", style: TextStyle(color:  Colors.black,fontWeight: FontWeight.bold),
                                                                               ),
         ],
       ),
     ),
    
      Padding(
       padding: EdgeInsets.all(8.0.sp),
       child: const Text(
                                 "Additional Information", style: TextStyle(color:  Colors.grey,fontWeight: FontWeight.bold),
                                                                                 ),
     ),
       Padding(
       padding: EdgeInsets.all(5.sp),
       child: const Text(
                                 "Dog is avalible so please call when you reach", style: TextStyle(color:  Colors.black,fontWeight: FontWeight.bold),
                                                                                 ),
     ),
    
    
    ],);
  }
}