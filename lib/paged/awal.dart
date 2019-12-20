import 'package:flutter/material.dart';
import 'package:login/paged/Akun.dart';

class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('travelooka'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: (){},
            )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        children: <Widget>[
          Profile(),
          Divider(),
          MenuUtama(),
          Lainya(),
          Promo(),
        ],
      ),
    );
  
  }
}

class Profile extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0 ),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage (
                'assets/image111.jpg'
                ),
            ),
          ),
        ),
        title: Text(
          'M Mahmud',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: <Widget>[
            RaisedButton.icon(
              icon: Icon(Icons.album),
              label: Text('666 point',
              style: TextStyle(
                color: Colors.grey[700]
              ),),
              onPressed: (){},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
            ),
            RaisedButton(
              child: Text('Traveloka Pay',
              style: TextStyle(
                color: Colors.grey[700]
              ),),
              onPressed: (){},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            )
          ],
        ),
      ),
    );
  }
}

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: menuUtamaItem,
    );
  }
}

List<MenuUtamaItem> menuUtamaItem =[
  MenuUtamaItem(
      title: 'Tiket Pesawat',
      icon: Icons.flight,
      colorBox: Colors.blue,
      iconColor: Colors.white,
    ),
    MenuUtamaItem(
      title: 'Kuliner',
      icon: Icons.fastfood,
      colorBox: Colors.blue,
      iconColor: Colors.white,
    ),
    MenuUtamaItem(
      title: 'Kereta',
      icon: Icons.train,
      colorBox: Colors.blue[100],
      iconColor: Colors.white,
    ),
    
    MenuUtamaItem(
      title: 'Rental Mobil',
      icon: Icons.card_travel,
      colorBox: Colors.orange,
      iconColor: Colors.white,
    ),
    
    MenuUtamaItem(
      title: 'Hiburan',
      icon: Icons.movie,
      colorBox: Colors.blueGrey,
      iconColor: Colors.white,
    ),
    
    MenuUtamaItem(
      title: 'Hotel',
      icon: Icons.hotel,
      colorBox: Colors.pink,
      iconColor: Colors.white,
    ),
    
    MenuUtamaItem(
      title: 'Buroq',
      icon: Icons.flash_on,
      colorBox: Colors.yellow,
      iconColor: Colors.white,
    ),
    
    MenuUtamaItem(
      title: 'Cybertruck',
      icon: Icons.flash_on,
      colorBox: Colors.lightGreenAccent,
      iconColor: Colors.white,
    ),
    
    MenuUtamaItem(
      
      title: 'Taxi',
      icon: Icons.local_taxi,
      colorBox: Colors.yellow,
      iconColor: Colors.white,
    ),
    
    MenuUtamaItem(
      title: 'Semua Layanan',
      icon: Icons.all_inclusive,
      colorBox: Colors.lightGreen,
      iconColor: Colors.white,
    ),
];
class MenuUtamaItem extends StatelessWidget {
  MenuUtamaItem({this.title, this.icon, this.colorBox, this.iconColor,});
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;
   @override
   Widget build(BuildContext context) {
     return Column(
      children: <Widget>[
        Container(
          height: 40.0,
          width: 50.0,
          decoration: BoxDecoration(
            color: colorBox,
            shape: BoxShape.circle
          ),
          child: IconButton( 
            icon: Icon(icon, color : iconColor,),  
            onPressed: () {},
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: Text(title, style: TextStyle(fontSize: 11.0,), textAlign: TextAlign.center,)
        ),
      ],       
     );
   }
 }

class Lainya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: lainyaList,
      ),
    );
  }
}

List<LainyaList> lainyaList = [
LainyaList(
  title: 'Tagihan & Isi Ulang',
  icon: Icons.receipt,
),
LainyaList(
  title: 'Internet Luar Negeri',
  icon: Icons.cast_connected,
),
LainyaList(
  title: 'Tagihan & Isi Ulang',
  icon: Icons.receipt,
),
LainyaList(
  title: 'Tagihan & Isi Ulang',
  icon: Icons.receipt,
),
LainyaList(
  title: 'Tagihan & Isi Ulang',
  icon: Icons.receipt,
),

];

class LainyaList extends StatelessWidget {
  LainyaList({this.title, this.icon, this.gestur});
  final String title;
  final IconData icon;
  final GestureDetector gestur;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: (){
                final snackBar = SnackBar(content: Text("Tap"));

                Scaffold.of(context).showSnackBar(snackBar);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).buttonColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(icon),
            ),
          ),    
          // IconButton(
          //   splashColor: Colors.blueGrey,
          //   icon : Icon(icon,),
          //   onPressed: (){},
          // ),
          // Icon(
          //   icon
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11.0),
          ),
          ),
        ],
      ),
    );
  }
}

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Promo',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22.0),
          ),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: (){},
          ),
        ),
        Container(
          padding: EdgeInsets.all(2.0),
          width: double.infinity,
          height: 200.0,
          alignment: Alignment.center,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 5.0),
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.blue[900],
                    ]
                  ),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(20.0 ,20.0),
                          bottomRight: Radius.elliptical(150.0, 150.0) 
                        ),
                        
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 20.0,
                          right: 30.0,
                          bottom: 30.0,
                          left:  10.0,
                        ),
                        child: Text(
                          "%",
                          style: TextStyle(fontSize: 37.0, color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                      
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.0,
                        bottom: 20.0
                      ),
                      child: Text(
                        "Lihat Semua \nPromo",
                        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.blue[900],
                    ]
                  ),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(20.0 ,20.0),
                          bottomRight: Radius.elliptical(150.0, 150.0) 
                        ),
                        
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 20.0,
                          right: 30.0,
                          bottom: 30.0,
                          left:  10.0,
                        ),
                        child: Text(
                          "%",
                          style: TextStyle(fontSize: 37.0, color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                      
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.0,
                        bottom: 20.0
                      ),
                      child: Text(
                        "Lihat Semua \nPromo",
                        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),

              ),
              Container(

              ),
            ],
          ),
        )

      ],
    );
  }
}