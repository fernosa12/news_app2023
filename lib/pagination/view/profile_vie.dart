// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class ProfileView extends StatefulWidget {
//   const ProfileView({super.key});

//   @override
//   State<ProfileView> createState() => _ProfileViewState();
// }

// class _ProfileViewState extends State<ProfileView> {
//   final currentUser = FirebaseAuth.instance.currentUser!;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           StreamBuilder<DocumentSnapshot>(
//               stream: FirebaseFirestore.instance
//                   .collection('users')
//                   .doc(currentUser.email)
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (snapshot.hasData) {
//                   final userData =
//                       snapshot.data!.data() as Map<String, dynamic>;
//                   return ListView(
//                     children: [
//                       SizedBox(
//                         height: 10,
//                       ),
//                       const Icon(
//                         Icons.person,
//                         size: 24.0,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         currentUser.email!,
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(userData['name']),
//                       SizedBox(
//                         height: 10,
//                       ),
//                     ],
//                   );
//                 } else {
//                   return CircularProgressIndicator();
//                 }
//               })
//         ],
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final currentUser = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          // ... other widgets ...

          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Card(
                child: SizedBox(
                  width: 328,
                  height: 430,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            const CircleAvatar(
                              radius: 60,
                              backgroundImage: NetworkImage(
                                  'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg'),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.camera_alt),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Add StreamBuilder here
                      Expanded(
                        // This will give the ListView the remaining space
                        child: StreamBuilder<DocumentSnapshot>(
                          stream: FirebaseFirestore.instance
                              .collection('users')
                              .doc(currentUser.uid)
                              .snapshots(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            }
                            if (snapshot.hasError) {
                              print('StreamBuilder Error: ${snapshot.error}');
                              return const Center(
                                  child: Text('Something went wrong'));
                            }
                            if (!snapshot.hasData ||
                                snapshot.data!.data() == null) {
                              return const Center(
                                  child: Text('Document does not exist'));
                            }
                            final userData =
                                snapshot.data?.data() as Map<String, dynamic>;
                            return Column(
                              mainAxisSize: MainAxisSize
                                  .min, // Use min to shrink to fit content
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Center children vertically
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Center children horizontally// Add this to make ListView take minimum space
                              children: [
                                const SizedBox(height: 10),
                                Text(
                                  currentUser.email!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  userData['name'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(height: 10),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
