import 'package:flutter/material.dart';
import 'package:instagram/widgets/profil_info.dart';
import 'package:instagram/widgets/profil_picture.dart';
import 'package:instagram/widgets/profil_story.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Row(children: [
            Text(
              'username',
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ]),
          actions: const [
            Icon(
              Icons.add,
              color: Colors.black,
              size: 28,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.menu_outlined,
              color: Colors.black,
              size: 28,
            )
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const ProfilPicture(),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProfilInfo(
                        count: 123,
                        label: 'Posts',
                      ),
                      ProfilInfo(
                        count: 1000,
                        label: 'Followers',
                      ),
                      ProfilInfo(
                        count: 789,
                        label: 'Following',
                      ),
                    ],
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Username',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Lorem Ipsum is simply dummy text of the printing and hayab typesetting industry. Lorem Ipsum',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: ' #hastag',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Link Goes here',
                style: TextStyle(color: Colors.blue.shade500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProfilStory(
                      label: 'Story 1',
                      image: 'https://picsum.photos/id/0/5000/3333',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProfilStory(
                      label: 'Story 2',
                      image: 'https://picsum.photos/id/1/500/3333',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProfilStory(
                      label: 'Story 3',
                      image: 'https://picsum.photos/id/2/5000/3333',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProfilStory(
                      label: 'Story 4',
                      image: 'https://picsum.photos/id/3/5000/3333',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProfilStory(
                      label: 'Story 5',
                      image: 'https://picsum.photos/id/4/5000/3333',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProfilStory()
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1.5, color: Colors.grey))),
                    child: const Icon(
                      Icons.grid_on_outlined,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1.5, color: Colors.grey.shade300))),
                    child: Icon(
                      Icons.person_pin_outlined,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 2, mainAxisSpacing: 2, crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://picsum.photos/id/${12 + index}/367/267'),
                          fit: BoxFit.cover)),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
