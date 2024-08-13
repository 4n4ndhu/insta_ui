import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List MyDataList = [
      {
        "name": "Neymar",
        "dp":
            "https://images.pexels.com/photos/8107817/pexels-photo-8107817.jpeg?auto=compress&cs=tinysrgb&w=600",
        "bg":
            "https://images.pexels.com/photos/1083807/pexels-photo-1083807.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Messi",
        "dp":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_jtRlvVpmsIuxB9W2CwlqYgL5EOzHAxpmyQ&s",
        "bg":
            "https://images.pexels.com/photos/18911182/pexels-photo-18911182/free-photo-of-the-tower-of-lisbon-portugal.jpeg?auto=compress&cs=tinysrgb&w=600"
      },
      {
        "name": "Cristiano",
        "dp":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGrQdo-Uim8sx7fUL5rxL6pzRSgzI8_s0Z5w&s",
        "bg":
            "https://images.pexels.com/photos/27496512/pexels-photo-27496512/free-photo-of-a-cup-of-coffee-on-top-of-a-grassy-field.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
      },
      {
        "name": "Mbappe",
        "dp":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1QRErSqlYoq3U6qWSWdpGHpDpwuGQBymxyA&s",
        "bg":
            "https://images.pexels.com/photos/24879640/pexels-photo-24879640/free-photo-of-view-of-a-wood.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
      },
      {
        "name": "Yamal",
        "dp":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOPLhsTWUx4yaqZqAG2z3xbXMJlhCyDOs_6g&s",
        "bg":
            "https://images.pexels.com/photos/27354543/pexels-photo-27354543/free-photo-of-two-buildings-with-balconies-and-windows-in-the-city.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
      },
    ];
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: PageView.builder(
            itemCount: MyDataList.length,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(MyDataList[index]["bg"]))),
              child: Column(
                children: [
                  Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(MyDataList[index]["dp"]),
                    ),
                    title: Text(
                      MyDataList[index]["name"],
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text("user name",
                        style: TextStyle(color: Colors.white)),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(width: 1.5, color: Colors.white)),
                          child: Text(
                            "Send Message",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 40,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
