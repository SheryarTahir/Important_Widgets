import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green.shade600,
            title: Text('WhatsApp'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.camera_enhance_sharp),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ]),
          ),
          body: TabBarView(children: [
            Container(child: Center(child: Text('CAMERA', style: TextStyle(fontSize: 30),)),),
            Container(child: Center(child: Text('CHATS', style: TextStyle(fontSize: 30),)),),
            Container(child: Center(child: Text('STATUS', style: TextStyle(fontSize: 30),)),),
            Container(child: Center(child: Text('CALLS', style: TextStyle(fontSize: 30),)),),
          ]),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.green.shade400,
              child: Icon(Icons.add, color: Colors.white,),
              onPressed: (){}),
        ));
  }
}
