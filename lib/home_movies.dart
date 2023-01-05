import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class homeMovies extends StatefulWidget {
  const homeMovies({Key? key}) : super(key: key);

  @override
  _homeMoviesState createState() => _homeMoviesState();
}

class _homeMoviesState extends State<homeMovies> with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(length: 8, vsync: this, initialIndex: 0);
    super.initState();
  }

  List<String> names=["Pak", "KHI", "Hyd", "ok"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: TextButton.icon(onPressed: (){},
            icon: Icon(Icons.menu, color: Colors.white,),
            label: Text("Menu", style: TextStyle(color: Colors.white),)),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.filter_alt_outlined)
          ),
          IconButton(onPressed: (){},
              icon: Icon(Icons.search)
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          isScrollable: true,
          tabs: [
            Tab(
              text: ("Trending"),
            ),
            Tab(
              text: ("Top Rated"),
            ),
            Tab(
              text: ("New Release"),
            ),
            Tab(
              text: ("Movies"),
            ),
            Tab(
              text: ("Dramas"),
            ),
            Tab(
              text: ("Live"),
            ),
            Tab(
              text: ("TV Shows"),
            ),
            Tab(
              text: ("Songs"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
       child: (
        Container(
          color: Colors.black87,
          width: double.infinity,
          child: Column (
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                child: Text("Trending", style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
              Container(
                height: 250,
                child: ListView.builder(
                  itemCount: names.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    color: Colors.black87,
                    width:160,
                    margin: EdgeInsets.all(1),
                    foregroundDecoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://cdn.bollywoodmdb.com/fit-in/movies/largethumb/2022/pathan/poster.jpg',),
                          fit: BoxFit.fill),
                    ),
                    // child: Column(
                    //   children: [
                    //     Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-movie-poster-template-design-0f5fff6262fdefb855e3a9a3f0fdd361_screen.jpg?ts=1636996054", fit: BoxFit.fill,),
                    //     //Text(names[index]),
                    //   ],
                    // ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 20, bottom: 10, left: 5),
                child: Text("Top Rated", style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              Container(
                height: 162,
                child: ListView.builder(
                  itemCount: names.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    color: Colors.black87,
                    width:120,
                    margin: EdgeInsets.all(1),
                    foregroundDecoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://pbs.twimg.com/media/E0DIrgZXMAArU0G?format=jpg&name=900x900'),
                          fit: BoxFit.fill),
                     ),

                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 20, bottom: 10, left: 5),
                child: Text("Movies", style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
              Container(
                height: 162,
                child: ListView.builder(
                  itemCount: names.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    color: Colors.black87,
                    width:120,
                    margin: EdgeInsets.all(1),
                    foregroundDecoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-movie-poster-template-design-0f5fff6262fdefb855e3a9a3f0fdd361_screen.jpg?ts=1636996054',),
                          fit: BoxFit.fill),
                    ),
                    // child: Column(
                    //   children: [
                    //     Image.network("https://pbs.twimg.com/media/D4QE1WhW0AEM6xO?format=jpg&name=900x900"),
                    //     //Text(names[index]),
                    //   ],
                    // ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 20, bottom: 10, left: 5),
                child: Text("Drama's", style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
              Container(
                height: 162,
                child: ListView.builder(
                  itemCount: names.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    color: Colors.black87,
                    width:120,
                    margin: EdgeInsets.all(1),
                    foregroundDecoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://koreanbinge.files.wordpress.com/2022/04/runon-poster.jpg?w=708',),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
       ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        fixedColor: Colors.blue,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add_check),
            label: 'My List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
