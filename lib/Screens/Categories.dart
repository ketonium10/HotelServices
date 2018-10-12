import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggeredtile = const <StaggeredTile>[

  const StaggeredTile.count(2,1),
  const StaggeredTile.count(2,1),
  const StaggeredTile.count(2,1),
 // const StaggeredTile.count(1,1),
  //const StaggeredTile.count(1,1),
];

List<Widget>  _tiles = const<Widget>[
  const categories_1(Colors.lightBlue, Icons.room_service, 'Room Service' ),
  const categories_1(Colors.lightGreen, Icons.local_laundry_service, 'Laundry'),
  const categories_1(Colors.redAccent , Icons.network_check, 'Network Error'),
//  const categories_1(Colors.purple, Icons.local_taxi, 'Book a taxi'),
 // const categories_1(Colors.orange , Icons.local_hospital, 'Emergency'),


];


class Categories extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
          padding: const EdgeInsets.only(top:12.0),
        child: StaggeredGridView.count(
            crossAxisCount: 2,
            staggeredTiles: _staggeredtile,
            children: _tiles,
            mainAxisSpacing: 4.0 ,
            crossAxisSpacing: 4.0 ,
            padding: const EdgeInsets.all(4.0),
        ),
      ),
    );
  }
}

class categories_1 extends StatelessWidget{

 const categories_1(this.backgroundColor,this.iconData,this.string);

 final Color  backgroundColor;
 final IconData iconData;
 final String string;

// void _showSnackBar(String value){
//   if(value.isEmpty)
//     return null;
//   _ScaffoldState.currentState.showSnackBar(
//       new SnackBar(
//           content: new Text(value)
//       )
//   );
// }
 @override
  Widget build(BuildContext context) {
    return new Card(
     color: backgroundColor,
      child: new InkWell(
        onTap: (){
          new Tooltip(message: string, child: new Text('hello'),);

          },
        child: new Center(
          child: new Padding(
              padding: const EdgeInsets.all(32.0),
              child: new FlatButton(
                  onPressed: null,
                  child: new Row(
                    children: <Widget>[
                      Icon(iconData, size: 50.0,),
                      Text(string,style: new TextStyle(fontSize: 20.0),)
                    ],
                  ))
              ),
          ),
        ),
    );
  }


}