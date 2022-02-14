import 'package:flutter/material.dart';
import 'package:mandoub/screens/tabs/clients_screen.dart';
import 'package:mandoub/screens/tabs/company_screen.dart';
import 'package:mandoub/screens/tabs/orders_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
   @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xff1379A2),
        elevation: 0,
        title: Image.asset('images/mandub.png' , width: 59, height: 40,),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: 
        [
          Tab(child: Text(' العملاء ', style: TextStyle(fontFamily: 'Tj' , fontSize: 16  , fontWeight: FontWeight.bold),),),
          Tab(child: Text(' الطلبيات ', style: TextStyle(fontFamily: 'Tj' , fontSize: 16  , fontWeight: FontWeight.bold),),),
         
           Tab(child: Text('قائمة الشركات ', style: TextStyle(fontFamily: 'Tj' , fontSize: 16  , fontWeight: FontWeight.bold),),),

        ]),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff1379A2)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
         CircleAvatar(
            child:  Icon(Icons.person_outlined, color: Colors.black,size: 40,),
           backgroundColor: Colors.white,
           radius: 40,
         ),
         SizedBox(height: 10.h,),
         Text('محمد احمد ' , style: TextStyle(fontFamily: 'Tj' , fontSize: 16 , color: Colors.white),)
                ],
              )),

            ListTile(
              onTap: (){
               
                Navigator.pushNamed(context, '/account_screen');
              
              },
              contentPadding: EdgeInsets.all(15),
              title: Text('الحساب'  ,textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontFamily: 'Tj', fontSize: 16),),
              trailing: Image.asset('images/account.png'),
            ) , 
                ListTile(
              onTap: (){
               
                Navigator.pushNamed(context, '/aboutapp_screen');
              
              },
              contentPadding: EdgeInsets.all(15),
              title: Text('حول التطبيق '  ,textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontFamily: 'Tj', fontSize: 16),),
              trailing: Image.asset('images/Info.png'),
            ) ,
             ListTile(
              onTap: (){
               
                Navigator.pushNamed(context, '/help_screen');
              
              },
              contentPadding: EdgeInsets.all(15),
              title: Text('المساعدة  '  ,textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontFamily: 'Tj', fontSize: 16),),
              trailing: Image.asset('images/help.png'),
            ) ,
             ListTile(
              onTap: (){
               
                
              
              },
              contentPadding: EdgeInsets.all(15),
              title: Text('خروج  '  ,textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontFamily: 'Tj', fontSize: 16),),
              trailing: Image.asset('images/logout.png'),
            ) ,
            

          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
            ClientsScreen(),
            OrdersScreen(),
            CompanyScreen()
        ],),
      
    );
  }
}