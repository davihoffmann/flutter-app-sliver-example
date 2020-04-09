import 'package:flutter/material.dart';
import 'package:flutter_app_sliver_example/dog_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliver Example"),
      ),
      body: _body(),
    );
  }

  _body() {
    List<Dog> dogs = DogService.getDogs();

    return ListView.builder(
      itemCount: dogs.length,
      itemBuilder: (context, index) {
        Dog dog = dogs[index];

        return GestureDetector(
          onTap: () => _onClickDog(context, dog),
          child: Image.asset("assets/images/${dog.foto}", fit: BoxFit.cover,),
        );
      }
    );
  }
          
  _onClickDog(BuildContext context, Dog dog) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => DogPage(dog)));
  }
}

class Dog {
  String foto;
  Dog(this.foto);
}

class DogService {
  static List<Dog> getDogs() {
    List<Dog> dogs = List<Dog>();
    dogs.add(Dog("dog1.png"));
    dogs.add(Dog("dog2.png"));
    dogs.add(Dog("dog3.png"));
    dogs.add(Dog("dog4.png"));
    dogs.add(Dog("dog5.png"));
    return dogs;
  }
}