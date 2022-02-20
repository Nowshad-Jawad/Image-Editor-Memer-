import 'package:flutter/material.dart';
import 'package:meme_creator/screens/edit_image_screen.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              'MEMER', style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight:FontWeight.bold,
              fontStyle: FontStyle.italic,
            )
            ),

            SizedBox(
              height: 20,
            ),

            Text(
                'Your Personal Meme Creator', style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight:FontWeight.bold,
            )
            ),

            SizedBox(
              height: 20,
            ),

            IconButton(
              icon: const Icon(
                Icons.upload_file,
              ),
              onPressed: () async {
                XFile? file = await ImagePicker().pickImage(
                  source: ImageSource.gallery,
                );
                if (file != null) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EditImageScreen(
                        selectedImage: file.path,
                      ),
                    ),
                  );
                }
              },
            ),

            SizedBox(
              height: 10,
            ),

            Text(
                'Press The Above Icon To Upload Template', style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight:FontWeight.bold,
            )
            ),
          ],
        ),
      ),
    );
  }
}
