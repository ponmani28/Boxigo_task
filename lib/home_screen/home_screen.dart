import 'package:boxingotask/home_screen/details_screen.dart';
import 'package:boxingotask/home_screen/home_controller.dart';
import 'package:boxingotask/model/sample_data_model.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class Homescreen extends GetView<HomeController> {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(


        appBar: AppBar(
          actions:  [

            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.cabin_rounded),
                const Text(
                  "Leads",
                  style: TextStyle(
                      color: Colors.black45, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 250.sp,),
                const Icon(Icons.notifications),
                const Icon(Icons.search)
              ],
            )
          ],
        ),
        bottomNavigationBar:  BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.filter_alt_outlined),
                label: 'Lead',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined),
                label: 'Tasks',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart_outline_outlined),
                label: 'Reports',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz_outlined),
                label: 'More',
              ),
            ],
            currentIndex: controller.selectedIndex.value,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black87,
            showUnselectedLabels: true,
            onTap: (index) {
              controller.changeIndex(index);

              controller.selectedIndex.value = index;
              print(controller.selectedIndex.value);
            },
          ),
     
       
        body: Obx(
           () {
            return SizedBox(child: lead(),);
          }
        )
        
        
       
     
     
      );
    });
  }

  SizedBox lead() {
    return SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: SizedBox(
          height: 300.sp,
          width: 360.sp,
          child: DefaultTabController(
            initialIndex: 1,
            length: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TabBar(
                  labelColor: Colors.deepOrange,
                  indicatorColor:Colors.deepOrange ,
                  isScrollable: true,
                  tabs: [
                    Tab(text: 'ALL'),
                    Tab(text: 'NEW'),
                    Tab(text: 'FOLLOW UP'),
                    Tab(text: 'BOOKED'),
                    Tab(text: 'BOOKED'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      const Center(child: Text('No Data Found')),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.sp,
                          ),
                          SizedBox(
                            height: 550.sp,
                            width: 1.sw,
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return const Divider();
                              },
                              itemCount: controller.details.length,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    SizedBox(
                                      height: 15.sp,
                                    ),
                                    SizedBox(
                                      height: 250.sp,
                                      width: 80.sp,
                                      child: Column(
                                        children: [
                                          Text(
                                            controller.details[index]
                                                .dateCreated!.month
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            controller.details[index]
                                                .dateCreated!.day
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 19.sp,
                                                color: Colors.deepOrange,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${controller.details[index].dateCreated!.hour.toString()}:${controller.details[index].dateCreated!.minute.toString()}",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.black45,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: 260.sp,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 0.sp,
                                              right: 10.sp,
                                              top: 0.sp,
                                              bottom: 8.sp),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    controller
                                                        .details[
                                                            index]
                                                        .fromAddress!
                                                        .fromCity!
                                                        .removeAllWhitespace,
                                                    style: TextStyle(
                                                        fontSize: 18.sp,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const Spacer(),
                                                  Text(
                                                    controller
                                                        .details[
                                                            index]
                                                        .estimateId!,
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                controller
                                                    .details[index]
                                                    .movingFrom
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.black45,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),

                                              // SizedBox(height: 5.sp,),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .arrow_downward_rounded,
                                                    size: 20.sp,
                                                    color: Colors.deepOrange,
                                                  ),
                                                  Container(
                                                    height: 45.sp,
                                                    width: 55.sp,
                                                    decoration:
                                                        const BoxDecoration(),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons.home,
                                                          size: 20.sp,
                                                          color: Colors
                                                              .deepOrange,
                                                        ),
                                                        Text(
                                                          controller
                                                              .details[
                                                                  index]
                                                              .propertySize!,
                                                          style: TextStyle(
                                                              fontSize: 10.sp,
                                                              color: Colors
                                                                  .black45,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 45.sp,
                                                    width: 55.sp,
                                                    decoration:
                                                        const BoxDecoration(),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .category_rounded,
                                                          color: Colors
                                                              .deepOrange,
                                                          size: 20.sp,
                                                        ),
                                                        Text(
                                                          controller
                                                              .details[
                                                                  index]
                                                              .propertySize!,
                                                          style: TextStyle(
                                                              fontSize: 10.sp,
                                                              color: Colors
                                                                  .black45,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 45.sp,
                                                    width: 55.sp,
                                                    decoration:
                                                        const BoxDecoration(),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .dashboard_customize_rounded,
                                                          color: Colors
                                                              .deepOrange,
                                                          size: 20.sp,
                                                        ),
                                                        Text(
                                                          "${controller.details[index].totalItems!} Boxes",
                                                          style: TextStyle(
                                                              fontSize: 10.sp,
                                                              color: Colors
                                                                  .black45,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 45.sp,
                                                    width: 55.sp,
                                                    decoration:
                                                        const BoxDecoration(),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .location_on_outlined,
                                                          color: Colors
                                                              .deepOrange,
                                                          size: 20.sp,
                                                        ),
                                                        Text(
                                                          controller
                                                              .details[
                                                                  index]
                                                              .distance!,
                                                          style: TextStyle(
                                                              fontSize: 10.sp,
                                                              color: Colors
                                                                  .black45,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5.sp,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    controller
                                                        .details[
                                                            index]
                                                        .toAddress!
                                                        .toCity!
                                                        .removeAllWhitespace,
                                                    style: TextStyle(
                                                        fontSize: 18.sp,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                controller
                                                    .details[index]
                                                    .movingTo!,
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.black45,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),

                                              SizedBox(
                                                height: 20.sp,
                                              ),
                                              Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () async  {
                        controller. inventoryitems.clear();
controller.productdetails.clear();
// Customer_Estimate_Flow -> index
controller.productdetails.add( controller.details[index]  );
// Customer_Estimate_Flow -> index -> items
controller.productitems.add(controller.productdetails.first.items!) ; 
// Customer_Estimate_Flow -> index -> items -> [inventory,customItems]
controller.inventoryitems.addAll(controller.productitems.first.inventory!) ; 
controller.customitems.add(controller.productitems.first.customItems!) ; 
//items-> inv - >category
controller.inventorycategory.addAll(controller.inventoryitems.first.category!); 
////inv -> category -> item
controller.customCategoryITEMS.addAll(controller.customitems.first.items!); 
////cust -> item
controller.inventorycategoryItems.addAll(controller.inventorycategory.first.items!); 



                            Get.to(const DetScreen(),arguments:controller.details[index] );
                          },
                                                    child: Container(
                                                      height: 35.sp,
                                                      width: 120.sp,
                                                      decoration:
                                                          BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color: Colors
                                                                    .deepOrange,
                                                                width: 1.sp,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(0
                                                                          .sp),
                                                              color: Colors
                                                                  .white),
                                                      child: Center(
                                                        child: Text(
                                                          "View Details",
                                                          style: TextStyle(
                                                              fontSize: 12.sp,
                                                              color: Colors
                                                                  .deepOrange,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 35.sp,
                                                    width: 120.sp,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    0.sp),
                                                        color: Colors
                                                            .deepOrange),
                                                    child: Center(
                                                      child: Text(
                                                        "Submit Quote",
                                                        style: TextStyle(
                                                            fontSize: 12.sp,
                                                            color:
                                                                Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          )
                        ],
                      ),
                      const Center(child: Text('No Data Found')),
                      const Center(child: Text('No Data Found')),
                      const Center(child: Text('No Data Found')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
