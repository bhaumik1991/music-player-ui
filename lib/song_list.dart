import 'package:flutter/material.dart';
import 'package:music_player_ui/song_detail.dart';

class SongList extends StatefulWidget {
  @override
  _SongListState createState() => _SongListState();
}

class _SongListState extends State<SongList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Press on Song"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index){
              return ListTile(
                onTap: (){
                  Navigator.of(context).
                  push(MaterialPageRoute(builder: (context) => SongDetail()));
                },
                title: Text("Song"),
              );
            },
          ),
        ),
      ),
    );
  }
}
