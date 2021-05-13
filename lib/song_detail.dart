import 'package:flutter/material.dart';

class SongDetail extends StatefulWidget {
  @override
  _SongDetailState createState() => _SongDetailState();
}

class _SongDetailState extends State<SongDetail> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/musician-349790_1280.jpg",
                ),
              ),
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Slider(
                    activeColor: Colors.pink,
                    min: 0.0,
                    max: 10.0,
                    value: 0.0,
                    onChanged: (value){}
                ),
                Positioned(
                  right: 16,
                  bottom: 0.0,
                  child: Text("0.0"),
                )
              ],
            ),
            Center(
              child: Text(
                "Song Name",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(Icons.skip_previous),
                    iconSize: 50,
                    onPressed: (){}
                ),
                IconButton(
                    icon: Icon(Icons.play_arrow),
                    iconSize: 50,
                    onPressed: (){}
                ),
                IconButton(
                    icon: Icon(Icons.skip_next),
                    iconSize: 50,
                    onPressed: (){}
                )
              ],
            ),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(Icons.loop),
                    iconSize: 50,
                    onPressed: (){}
                ),
                IconButton(
                    icon: Icon(Icons.shuffle),
                    iconSize: 50,
                    onPressed: (){}
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}