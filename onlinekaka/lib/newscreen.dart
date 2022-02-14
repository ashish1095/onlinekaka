import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  List<String> hotelNameArr = [
    "Alamgir hotel",
    "Awadhi Kakori Kabab",
    "Celebrations By Onlinekaka",
    "La Pino'z Pizza (Hazratganj)",
    "Mubeens",
    "OnlineKaka Nature",
    "OnlineKaka Pharmacy",
    "Royal Cafe (Hazratganj)",
    "Shabaan Tikka Corner",
    "Stationery Products",
    "Subway (Hazratganj)",
    "The Cherry Tree Cafe",
    "Tunday Kababi (Aliganj)",
    "Tunday Kababi (Aminabad)",
    "Tunday Kababi (Chowk)",
    "Tunday Kababi (Rahim Nagar)"
  ];

  List<String> imgArr = [
    "https://www.onlinekaka.com/upload/onlinekaka.com/1606199302-ChickenTandooriSpruce-f238bf7413984e088268565c5b660b11.jpg",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1612521417-Chicken_Malai_Boti.jpg",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1611486835-iPad-Pro-11_---30.jpg",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1551252006-lapinoz-outlet-logo.png",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1602329788-t1mhKVadHDuczeQIDnmLhfaHkua5zC7hTTfiLDOt.jpeg",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1585747899-final.png",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1597565021-IMG_0088.JPG",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1590575433-royalkyt.jpg",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1558039211-shabb.png",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1587196492-download.jpeg",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1566029774-1541222965-ire.jpg",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1599831443-Untitled-1.jpg",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1558374558-tkk.png",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1597048685-IMG_9919.JPG",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1557579263-RAMZAN-SPECIAL1.png",
    "https://www.onlinekaka.com/upload/onlinekaka.com/1535003440-1533375646-36487232_665732003760728_4602324458600923136_n.jpg"
  ];

  List<String> starRatingArr = [
    "3.8",
    "5.0",
    "5.0",
    "5.0",
    "4.1",
    " ",
    "5.0",
    "4.1",
    "5.0",
    "5.0",
    "3.5",
    "4.1",
    "3.6",
    "4.1",
    "2.8",
    "4.7"
  ];

  List<String> addressoneArr = [
    "Mughlai, Kebabs, Biryani \nNaaz Cinema Road,Aminabad Lucknow \nUP 226018",
    "Mughlai, Biryani \nCity Station, Wazirganj Lucknow UP \n226022",
    "Flowers, Cakes \nHazratganj Lucknow Uttar Pradesh \n226001",
    "Pizza, Italian \n1, Sapru Marg Lucknow UP 226001",
    "Mughlai, Biryani, Kulcha Nehari \nAkbari Gate,Chowk Lucknow UP 226003",
    "Farm Fresh, Fruits, Vegetables, Dairy, \nGrocery, Mask Hazratganj Lucknow \nUttar Pradesh 226006 ",
    "Mask \nHazratganj Lucknow Uttar Pradesh 226006",
    "Indian, Vegetarian, Mughlai, Chinese, \nMulti Cuisine Restaurant, Pizza Hazratganj, \nopp Saharaganj Mall Lucknow UP 226001",
    "Mughlai, Biryani \nChowk Lucknow UP 226003",
    "Stationery \nHazratganj Lucknow Superpanel 226001",
    "Healthy Food, Fast Food \n6,Sapru Marg,Hazratganj Lucknow \nUP 226010",
    "Fast Food, Pasta, Pizza, Desserts, Bakery, \nCakes, Pastry Habibullah Estate, \nHazratganj Lucknow UP 226001",
    "Vegetarian, Mughlai, Kebabs, Biryani \nKapoorthala,Aliganj,Opp Novelty Cinema \nLucknow UP 22602",
    "Indian, Mughlai, Kebabs, Biryani \nAminabad Lucknow up 226018",
    "Mughlai, Kebabs \nChowk Lucknow UP 226003",
    "Mughlai, Kebabs, Biryani \nRahim Nagar,Mahanagar Lucknow \nUP 226016"
  ];

  List<String> closeArr = [
    "open",
    "open",
    "open",
    "open",
    "open",
    "open",
    "open",
    "open",
    "closed",
    "open",
    "open",
    "open",
    "open",
    "open",
    "open",
    "open"
  ];

  List<Color> colors = [
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
  ];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        // backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Online KaKa'),
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ),
        body: SafeArea(
            child: ListView(children: [
          Container(
              height: 175,
              width: double.infinity,
              child: Image.asset("assets/image2.jpg")),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              10,
              20,
              10,
              20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Featured Restaurant',
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                for (var i = 0; i < hotelNameArr.length; i++)
                  GestureDetector(
                    child: (buildcard(
                        hotelNameArr[i],
                        imgArr[i],
                        starRatingArr[i],
                        addressoneArr[i],
                        closeArr[i],
                        colors[i])),
                  )
              ],
            ),
          ),
        ])),
      ),
    );
  }

  Container buildcard(String hotelname, String imgurl, String ratings,
      String address, String close, Color col) {
    return Container(
      //height: 150,
      width: double.infinity,
      // height: 180,
      // height: double.infinity,
      //color: Colors.red,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext ctx) => NewScreen()));
        },
        child: Card(
          margin: EdgeInsets.all(5),
          shadowColor: Colors.grey[800],
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(imgurl),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 3, 0),
                            child: Text(
                              (hotelname),
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 3, 0),
                            child: Text(
                              (address),
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      color: Colors.grey[300],
                      thickness: 2,
                      height: 5,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 85,
                        height: 30,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(11, 0, 0, 0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_rate,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  (ratings),
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('MIN-ORDER: \u{20B9}${99}',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          SizedBox(
                            width: 80,
                          ),
                          Container(
                            height: 30,
                            width: 40,
                            color: col,
                            child: Center(
                                child: Text(
                              close,
                              style: TextStyle(fontSize: 15),
                            )),
                          ),
                        ],
                      )
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
