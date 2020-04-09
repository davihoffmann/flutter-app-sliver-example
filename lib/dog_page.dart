import 'package:flutter/material.dart';
import 'package:flutter_app_sliver_example/home_page.dart';

class DogPage extends StatelessWidget {
  final Dog dog;

  DogPage(this.dog);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.green[200],
          expandedHeight: 250,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("${dog.foto}"),
            centerTitle: false,
            background: Image.asset("assets/images/${dog.foto}", fit: BoxFit.cover,),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Text("Texto $index");
          },
          childCount: 100+1
        )),
        SliverList(delegate: SliverChildListDelegate([
          Container(
            color: Colors.lightBlue,
            height: 200,
          ),
          Container(
            color: Colors.lightBlue[900],
            height: 200,
          )
        ])),
        SliverFillRemaining(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. \n"
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}
