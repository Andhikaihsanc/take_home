import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[400],
        title: const Text('Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildTop() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            padding: const EdgeInsets.only(bottom: 68),
            child: buildCoverImage()),
        Positioned(
          top: 175,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildContent() => const Column(
        children: [
          SizedBox(height: 8),
          Text(
            'Andhika Ihsan Cendekia',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 3),
          Text(
            'Web And Mobile Developer',
            style: TextStyle(fontSize: 17, color: Colors.grey),
          ),
          SizedBox(height: 16),
          Divider(),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'With two years of experience as a Software Engineer specializing in web and mobile applications, I have a proven track record of delivering high-quality software solutions. I am proficient in Flutter and Android for mobile app development, and HTML, CSS, JavaScript, Laravel, and PHP for web development. My meticulous attention to detail and strong analytical skills, I’m actively seeking opportunities to contribute to impactful projects. I am a determined, active and collaborative individual when it comes to completing tasks. I am easily adaptable and have a good communication skill',
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 16),
          Divider(),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Education',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Universitas Brawijaya'),
                    Text('(2021 - Present)')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('SMA Negeri 1 Bogor'), Text('(2018 - 2021)')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('SMP Negeri 2 Bogor'), Text('(2015 - 2018)')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('SMP Negeri 2 Bogor'), Text('(2015 - 2018)')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('SDIT At Taufiq'), Text('(2009 - 2015)')],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Divider(),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Work Experiences',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'PT Quantum Infra Solusindo \n - Application Developer Intern'),
                    Text('Mar 2024 - May 2024')
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Bank Mandiri \n - Mobile Apps Developer'),
                    Text('Feb 2024')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Qwords \n - Fullstack Developer '),
                    Text('Nov 2023')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('PT Duta Cantik Indonesia \n - IT Consultant'),
                    Text('Aug 2023')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('FILKOM UB \n - Laboratory Assistant'),
                    Text('Sep 2022 - Dec 2023')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Divider(),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Organization Experiences',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('LKMM-TM 2022 \n (Chief Executive)'),
                    Text('Feb 2022 - Nov 2022')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('BEM FILKOM \n (HRD Staff)'),
                    Text('Feb 2022 - Dec 2022')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('FILKOM INAUGURATION 2021 \n (Chief Executive)'),
                    Text('Sep 2021 - Dec 2021')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('FILKOM UB \n (Vice Chairman)'),
                    Text('Sep 2021 - Present ')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Divider(),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Projects',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Blommy App \n (Flower Seller App)'),
                    Text('2023')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Medifinder App \n (Healthcare Information App)'),
                    Text('2023')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Desa Kutorenon Website \n (Village Information Website)'),
                    Text('2023')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Gadget Galaxy Website \n (ECommerce Website)'),
                    Text('2023')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('PairFit Website \n (Find Gyms and Friend)'),
                    Text('2022')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Divider(),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Skill',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'SoftSkill',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Leadership'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Public Speaking'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Collaboration'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Critical Thinking'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Responsible'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Easy to Adapt'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'HardSkill',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('HTML'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('CSS'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('JavaScript'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Laravel'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('PHP'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Angular'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('MySQL'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Kotlin'),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Flutter'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Ionic'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Figma'),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Firebase'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget buildCoverImage() => SizedBox(
        width: double.infinity,
        child: Image.network(
          'https://images.unsplash.com/photo-1555066931-4365d14bab8c?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: 75, // or any other size you prefer
        backgroundImage: Image.asset('images/Pas Foto Crop.jpg').image,
      );
}
