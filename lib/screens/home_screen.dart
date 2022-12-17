import 'package:coffee_ordering/colors.dart';
import 'package:coffee_ordering/widgets/home_bottom_bar.dart';
import 'package:coffee_ordering/widgets/items_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState(){
    _tabController = TabController(length:4, vsync: this, initialIndex: 0 );
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }
  _handleTabSelection(){
    if(_tabController.indexIsChanging){
      setState(() {
        //10.28
      });
    }
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top:15),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal:15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Icon(
                        Icons.sort_rounded, 
                        color:wColor.withOpacity(0.5),
                        size: 35,),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Icon(
                        Icons.notifications, 
                        color:wColor.withOpacity(0.5),
                        size: 35,),
                        
                    ),
                  ],
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15,) ,
                  child: Text(
                    "It's a Great Day for Coffee",
                    style: TextStyle(
                      color:txtColor ,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal:15, vertical:20  ),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: slctdColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Find your coffee",
                      hintStyle: TextStyle(
                        color: wColor.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(Icons.search , size:30, color: Colors.white.withOpacity(0.5),)
                    ),
                  ),
                ),
              TabBar(
                controller: _tabController,
                labelColor: slctdColor,
                unselectedLabelColor: txtColor,
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide (
                    width: 3,
                    color: slctdColor,
                  ),
                  insets: EdgeInsets.symmetric(horizontal:16)
                ),
                labelStyle: TextStyle( fontSize: 17, fontWeight: FontWeight.w500),
                labelPadding:EdgeInsets.symmetric(horizontal:20) ,
                tabs: [
                Tab(text: "Hot Coffee"),
                Tab(text: "Cold Coffee"),
                Tab(text: "Copuiccino"),
                Tab(text: "Americano"),
                //18.43
              ],
              ),
              SizedBox(height: 10,),
              Center(
                child: [
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                ][_tabController.index],
              )
            ],
          ),
          ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}