import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool switchButton= false;


  Widget notExpanded(r){

      return ListTile(
        title: Text(
            'Varun',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white
          ),
        ),
        subtitle: Text(
            'last seen at 11:30',
          style: TextStyle(
            color: Colors.grey[400]
          ),
        ),
        leading: CircleAvatar(backgroundImage: AssetImage('assets/Varun.jpg'),radius: 30.0+295.0-(r<=295.0?r:295.0),),
      );

  }

  Widget expanded(){

        return Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                  children: [

                    Text(
                        'Varun',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                        'last seen at 11:30',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    )
                  ],
            )

            )

          ],
        );


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body: CustomScrollView(
            slivers: [

              SliverLayoutBuilder
                (builder: (BuildContext context, SliverConstraints constraints){
                  var x=constraints.scrollOffset;
                  print(x);
                  return SliverAppBar(
                      actions: [
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.video_call)
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.call)
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.more_vert)
                        ),
                      ],
                      leading: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_back)
                      ),

                      expandedHeight: 400,
                      toolbarHeight: 100,
                      pinned: true,
                      floating: false,
                      backgroundColor: Colors.blueGrey[800],
                      bottom: PreferredSize(
                        preferredSize: Size.fromHeight(10),
                        child: AnimatedOpacity(opacity: 1.0, duration: Duration(milliseconds: 300),child:x>250?notExpanded(x):expanded() ,),
                      ),

                      flexibleSpace: FlexibleSpaceBar(
                            background: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/Varun.jpg'),
                                    fit: BoxFit.cover
                                  )
                              ),
                            ),


                          ),
















                  );
              }
              ),




              SliverFillRemaining(
                child: Container(
                  color: Colors.grey[900],
                  child: Column(
                    children: [

                      ListTile(
                        title: Text(
                            'Info',
                          style: TextStyle(

                              color: Colors.white
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                            '9819401014',
                          style: TextStyle(

                              color: Colors.white
                          ),
                        ),
                        subtitle: Text(
                            'Mobile',
                          style: TextStyle(
                            color: Colors.green[300]
                          ),

                        ),
                      ),
                      ListTile(
                        title: Text(
                            'Notifications',
                          style: TextStyle(

                              color: Colors.white
                          ),
                        ),
                        subtitle: Text(
                            switchButton?'On':'Off',
                          style: TextStyle(
                              color: Colors.green[300]
                          ),
                        ),
                        trailing: CupertinoSwitch(
                            value: switchButton,
                            onChanged: (value){
                              setState(() {
                                switchButton=value;

                              });

                            }
                        ),
                      )
                    ],

                  ),
                ),
              )
            ],
          ),




    );
  }
}
