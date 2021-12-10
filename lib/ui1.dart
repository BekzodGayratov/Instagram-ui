import 'package:flutter/material.dart';

class HomeOne extends StatelessWidget {
  const HomeOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [Icon(Icons.message)],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: 33,
                            backgroundImage: NetworkImage(
                                'https://source.unsplash.com/random/$index'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 23),
                          child: Text("Profile $index"),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          Divider(),
          SingleChildScrollView(
            child: Column(
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage:
                        NetworkImage('https://source.unsplash.com/random/2'),
                  ),
                  title: Text("westly.winder"),
                  trailing: Icon(Icons.more_vert),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                    height: 390,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://source.unsplash.com/random/1')),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.comment,
                        size: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.send,
                        size: 35,
                      ),
                      SizedBox(
                        width: 205,
                      ),
                      Icon(Icons.save, size: 35),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 280, top:12),
                  child: Text("2,875 Likes", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                 Padding(
                  padding: const EdgeInsets.only(right: 270, top:3),
                  child: Text("westly.winder", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                
              ],
            ),
          ),
        ],
      ),
    
    );
  }
}
