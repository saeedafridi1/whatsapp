import 'package:flutter/material.dart';
class Newpage extends StatelessWidget {
  const Newpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title:const Text("WhatsApp UI"),
          actions:[

            const Icon(Icons.search),
            const SizedBox(width: 10,),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
                itemBuilder: (context)=> [
                 const PopupMenuItem(
                    value: 1,
                    child:  Text("NewGroup"),),
                const  PopupMenuItem(
                    value: 1,
                    child:  Text("Setting"),),
                  const PopupMenuItem(
                    value: 1,
                    child:  Text("Logout"),)
                ]),
            const SizedBox(width: 10,),

          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chat"),
              ),
              Tab(
                  child: Text("States"),
              ),
              Tab(
                child: Text('Call'),
              ),
            ],

          ),
        ),
        body: TabBarView(
          children: [
            const Icon(Icons.camera_alt),

            ListView.builder(
                itemCount: 40,
                itemBuilder: (context,index){
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://scontent.fpew1-1.fna.fbcdn.net/v/t39.30808-6/275424360_760093411629946_3283689669884691780_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFD7SsS-mavP0A0WADCzG9Gqm-EQmo8Gcyqb4RCajwZzAqcWzzE_CTLQf3Ix77mu2koTt6t240SLiX1QRHd1UpV&_nc_ohc=7byjKOGWsdEAX96CR_q&_nc_ht=scontent.fpew1-1.fna&oh=00_AT8SyjrVUx3KxUxJ0_Uy16wNOviz8mT_t0DJL62aXzr7lA&oe=6324ABE6"),
                    ),
                    title: Text("Saeed Afridi"),
                    subtitle: Text("Kaha ho"),
                    trailing: Text("6:30 pm"),
                  );
                }
            ),
            ListView.builder(
                itemCount: 40,
                itemBuilder: (context,index){
                  return index == 0 ?Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text("My status"),
                        subtitle: Text("Tap to Add Status update ") ,
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage("https://scontent.fpew1-1.fna.fbcdn.net/v/t39.30808-6/275424360_760093411629946_3283689669884691780_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFD7SsS-mavP0A0WADCzG9Gqm-EQmo8Gcyqb4RCajwZzAqcWzzE_CTLQf3Ix77mu2koTt6t240SLiX1QRHd1UpV&_nc_ohc=7byjKOGWsdEAX96CR_q&_nc_ht=scontent.fpew1-1.fna&oh=00_AT8SyjrVUx3KxUxJ0_Uy16wNOviz8mT_t0DJL62aXzr7lA&oe=6324ABE6"),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.teal,
                                    borderRadius: BorderRadius.circular(20)

                                ),
                                child: Icon(Icons.add,size: 15,)),),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Text("Recent update",style: TextStyle(fontSize: 18),),
                      )
                    ],
                  ):  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://scontent.fpew1-1.fna.fbcdn.net/v/t39.30808-1/266162102_1231162370629280_7259470178509421349_n.jpg?stp=dst-jpg_p200x200&_nc_cat=111&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeERJIYnbyC1LeovsT_V318FTfXKBAoC5sdN9coECgLmxwbFhdwzz-49rE7JrYBYMugKupaxtuhd_NFvxeGOdbD3&_nc_ohc=ChgLBReKBWUAX9OX5up&_nc_ht=scontent.fpew1-1.fna&oh=00_AT--yuGNEyrkyNBHP3z89Euy3JTtKAxWV8E2Fc8pKhGPIg&oe=6324A8FA"),
                    ),
                    title: Text("Zia Ullah "),
                    subtitle: Text("12 minutes ag"),
                  ) ;
                }
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context,index){
                  return  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: const NetworkImage("https://scontent.fpew1-1.fna.fbcdn.net/v/t1.6435-1/128421065_1329603104065492_5106993001235251421_n.jpg?stp=dst-jpg_p200x200&_nc_cat=101&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeG4a11D02svidODtyY-dNv3CB-wP2r3veQIH7A_ave95HXV0LUlpulChMcos2YvDccueFUwPXZXFcxGFUZ45esu&_nc_ohc=LBmpFiLnA94AX-ESz6j&_nc_ht=scontent.fpew1-1.fna&oh=00_AT9HtCHzX6HkFzZZqaU6Bm4E9IJddRmAGXJYB4EYeFiNyQ&oe=6342D75F"),
                    ),
                    title: const Text("Khubab khan"),
                    subtitle: Row(
                      children:  [
                        const Icon(Icons.arrow_back,color: Colors.red,),
                        Text(index/2==0 ?"Yesterday 6:12 PM":"Video call :20min")
                      ],
                    ),
                    trailing: Icon(index/2 ==0?Icons.call:Icons.video_call),
                  );
                })

          ],

        ),
      ),
    );
  }
}
