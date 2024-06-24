import 'package:flutter/material.dart';
void main(){
  runApp(usrDashboard());
}
class usrDashboard extends StatefulWidget{
  @override
  State<usrDashboard> createState() => _usrDashboardState();
}

class _usrDashboardState extends State<usrDashboard> {
  int _selected = 0;
  void changeSelected(int index){
    setState(() {
      _selected = index;
    });
  }
  @override
  
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('Prepaid water meter system'),
      backgroundColor: Colors.black,
),
           body:Center(
           ),
      drawer: Drawer(
      
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/water2.jpg'),
                      fit: BoxFit.cover,
                    )
                  ),
                 child: Column(
                  
                 )

                ),
                ListTile(
                  selected: _selected == 0,
                  leading: Icon(
                    Icons.view_agenda,
                    size: 28,
                    color: Colors.black,
                  ),
                  title: Text("View Usage",style: TextStyle(fontSize: 18,color: Colors.black),),
                  onTap: (){
                    changeSelected(0);
                  },
                  
                ),
                  ListTile(
                  selected: _selected == 0,
                  leading: Icon(
                    Icons.payment,
                    size: 28,
                    color: Colors.black,
                  ),
                  title: Text("Pay Now",style: TextStyle(fontSize: 18,color: Colors.black),),
                  onTap: (){
                    changeSelected(1);
                  },
                  
                ),
                 ListTile(
                  selected: _selected == 0,
                  leading: Icon(
                    Icons.warning,
                    size: 28,
                    color: Colors.black,
                  ),
                  title: Text("Leak Detection",style: TextStyle(fontSize: 18,color: Colors.black),),
                  onTap: (){
                    changeSelected(2);
                  },
                  
                ),
                 ListTile(
                  selected: _selected == 0,
                  leading: Icon(
                    Icons.logout,
                    size: 28,
                    color: Colors.black,
                  ),
                  title: Text("Logout",style: TextStyle(fontSize: 18,color: Colors.black),),
                  onTap: (){
                    changeSelected(3);
                  },
                  
                )
              ],
            ),
      )
    );
  }
}