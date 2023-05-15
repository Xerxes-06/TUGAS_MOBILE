import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 0, 0, 0),
        accentColor: Color.fromARGB(255, 58, 58, 58),
      ),
      home: TelegramHome(),
    );
  }
}

class TelegramHome extends StatelessWidget {
  final List<String> usernames = [
    'Aldi',
    'Andi',
    'Ani',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatingan'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Aksi yang ingin dilakukan saat tombol pencarian ditekan
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Aksi yang ingin dilakukan saat tombol opsi ditekan
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: usernames.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBg8IBxARDxASFhUXFhgVDQ8PEBwSFREYGRgWFxgaHSggGxolJxUXLTEhJSkrLi4uFx8zODMtNygtLisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAMgAyAMBIgACEQEDEQH/xAAaAAEAAwEBAQAAAAAAAAAAAAAABAUGAwEC/8QANBABAAEDAQQIBAUFAQAAAAAAAAECAwQRBSExQRJRYXGRobHBFFKB0RMiMnLhBpKy8PEV/8QAFAEBAAAAAAAAAAAAAAAAAAAAAP/EABQRAQAAAAAAAAAAAAAAAAAAAAD/2gAMAwEAAhEDEQA/AN6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPYiap0jj5rnB2PGkV5X9v3n2BU27Vy7OlqJqnsjVMt7Iy641mIp76t/k0Nuii3T0aIiI7I0h9goP/AA8j5qPP7OVzY+XRH5Ypq7p3+bSAMfds3LM6XaZp740c2xroprp0riJjtjWFTnbHpmJrxd0/Ly+nUCkH1XTNFU01xpMdm98gAAAAAAAAAAAAAAHcLPYmLF69+NVwo/yBO2VgRjUfiXY/PPlHV3rMAAAAAAAV+1MCnKt9O3urjh29ks5MTE6S2ag25ixbuRkUcKuP7uv6gqgAAAAAAAAAAAAAGp2ZZizhUU853z3zvZiiOlXEdenq2MRERpAPQAAAAAAAEbPsxfxK6Oem7vjfCS8BjB0v09C/VT1TPq5gAAAAAAAAAAAA+rU6XaZnrj1hsmLa7EufjY9FyOcR48wdgAAAAAAAAc79cWrVVyeUTPkDKZUxOTXMfNPq5PZmZnWXgAAAAAAAAAAAAC82BkRNuqxVxjfHdPHz9VG6WLtdi9FyjjH+6A2A4YmRRlWYuW/5iep3AAAAAAAVO3ciKLMWYnfVx/bH8rDJv0Y9qblzh569UMtk368i/N25xn05QDkAAAAAAAAAAAAAAADvh5dzEudOjhzjlMNJh5lnLp1tzv5xzUGJs6/kxrp0aeufaOa6xdmWMaqK41qq65n0gE4AAABHy8q1i0dK7P05/SEiUHL2ZYyaprnWmrrifWAUWdmXMy5rXuiOEcv+oyZl7Ov40a6dKnrj3jkhgAAAAAAAAAAAAA+qaZrqimmNZnxAopmuqKaI1mfFebP2VTaiLmT+arq40x95dtm7PpxaOnc31z5dkLAAAAAAAAABU7Q2VTdibmN+Wrq4Uz9pWwDG10zRVNNcaTHi+Wk2ls+nKo6dvdXHn2SztVM0VTTVGkx4g+QAAAAAAAAAF7sbCi3R8RdjfPDdwjr75V2y8T4rJ0q/TTvn2hp4jSAegAAAAAAAAAAAKjbOFFyj4i1G+OO7jHX3wt3kxrAMYJm1MT4XJ0p/TVvj3hDAAAAAAABIwLPxGXRbnhrv7o3gvtlY/wAPiRrxq3z7R4JzyIegAAAAAAAAAAAAAAg7Vx/iMSdONO+PeGZbPTXiymfZ+Hy67ccNd3dO8EcAAAAABcf09a1rruzy0jx3z7Kdo9h0dHB6XzTM+3sCxAAAAAAAAAAAAAAAAUf9Q2tK6Lsc9Y8N8e68V23KOlg9L5Zifb3BnAAAAAAGp2ZT0cC3HZr47/cASwAAAAAAAAAAAAAAAETadPSwLkdmvhv9gBlgAAAf/9k=',
              ),
            ),
            title: Text(usernames[index]),
            subtitle: Text('Pesan terakhir dari ${usernames[index]}'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '12:34',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 4),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 48, 48, 48),
                  radius: 10,
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {
              // Aksi yang ingin dilakukan saat pengguna ditekan
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aksi yang ingin dilakukan saat tombol pesan baru ditekan
        },
        child: Icon(Icons.edit),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Kontak',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pengaturan',
          ),
        ],
      ),
    );
  }
}
