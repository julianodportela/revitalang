import 'package:flutter/material.dart';
import 'package:revitalang/common/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int bnbIndex = 0;
  int index = 0;
  int indexLanguage = 0;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RevitaLang"),
      ),
      body: IndexedStack(
        index: index,
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: DropdownMenu(
                    onSelected: (value) {
                      setState(() {
                        indexLanguage = value!;
                      });
                    },
                    initialSelection: 0,
                    width: screenWidth - 30,
                    dropdownMenuEntries: const [
                      DropdownMenuEntry(
                          value: 0,
                          label: "Nheengatu"
                      ),
                      DropdownMenuEntry(
                          value: 1,
                          label: "Tikuna"
                      ),
                      DropdownMenuEntry(
                          value: 2,
                          label: "Tupi-Guarani"
                      ),
                      DropdownMenuEntry(
                          value: 3,
                          label: "Bororo"
                      ),
                    ]
                  ),
                ),
              ),
              IndexedStack(
                index: indexLanguage,
                children: [
                  GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    padding: const EdgeInsets.all(15),
                    crossAxisCount: 3,
                    crossAxisSpacing: 10, // Add space between items horizontally
                    mainAxisSpacing: 50, // Add space between items vertically
                    children: const [
                      LessonCircleWidget(title: "Yara Ypy", lessonId: 1, icon: Icons.abc),
                      LessonCircleWidget(title: "Kunhã Mymba", lessonId: 2, icon: Icons.pets),
                      LessonCircleWidget(title: "Mbarete Aka", lessonId: 3, icon: Icons.fastfood),
                      LessonCircleWidget(title: "Arandu Kuery", lessonId: 4, icon: Icons.book),
                      LessonCircleWidget(title: "Kunhãmba'e Apo", lessonId: 1, icon: Icons.school),
                      LessonCircleWidget(title: "Kyringue'i Arawe", lessonId: 2, icon: Icons.access_alarm_outlined),
                      LessonCircleWidget(title: "Pe Guata", lessonId: 3, icon: Icons.hiking),
                      LessonCircleWidget(title: "Mba'e Rendu", lessonId: 4, icon: Icons.photo),
                      LessonCircleWidget(title: "Yvyty Rã", lessonId: 1, icon: Icons.park),
                      LessonCircleWidget(title: "Arandu Aty", lessonId: 2, icon: Icons.museum),
                      LessonCircleWidget(title: "Mbaraka Ñe'ẽ", lessonId: 3, icon: Icons.music_note),
                      LessonCircleWidget(title: "Kuaray Mimbi", lessonId: 4, icon: Icons.star),
                    ],
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    padding: const EdgeInsets.all(15),
                    crossAxisCount: 3,
                    crossAxisSpacing: 10, // Add space between items horizontally
                    mainAxisSpacing: 50, // Add space between items vertically
                    children: const [
                      LessonCircleWidget(title: "Dëü Inü", lessonId: 1, icon: Icons.abc),
                      LessonCircleWidget(title: "Wüna Kumu", lessonId: 2, icon: Icons.pets),
                      LessonCircleWidget(title: "Üi Fügü", lessonId: 3,icon: Icons.fastfood),
                      LessonCircleWidget(title: "Nügü Tüka", lessonId: 4,icon: Icons.book),
                      LessonCircleWidget(title: "Yügü Üi", lessonId: 1,icon: Icons.school),
                      LessonCircleWidget(title: "Üi Siki", lessonId: 2,icon: Icons.access_alarm_outlined),
                      LessonCircleWidget(title: "Rüna Yüi", lessonId: 3,icon: Icons.hiking),
                      LessonCircleWidget(title: "Rügü Sëma", lessonId: 4,icon: Icons.photo),
                      LessonCircleWidget(title: "Dügü Yoi", lessonId: 1,icon: Icons.park),
                      LessonCircleWidget(title: "Tüka Dügü", lessonId: 2,icon: Icons.museum),
                      LessonCircleWidget(title: "Dëna Mëi", lessonId: 3,icon: Icons.music_note),
                      LessonCircleWidget(title: "Üi Düma", lessonId: 4,icon: Icons.star),
                    ],
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    padding: const EdgeInsets.all(15),
                    crossAxisCount: 3,
                    crossAxisSpacing: 10, // Add space between items horizontally
                    mainAxisSpacing: 50, // Add space between items vertically
                    children: const [
                      LessonCircleWidget(title: "Mõarã Nhe'ẽ", lessonId: 1,icon: Icons.abc),
                      LessonCircleWidget(title: "Jagua Opy", lessonId: 2,icon: Icons.pets),
                      LessonCircleWidget(title: "Mba'e Mongeta", lessonId: 3,icon: Icons.fastfood),
                      LessonCircleWidget(title: "Aranduka Renda", lessonId: 4,icon: Icons.book),
                      LessonCircleWidget(title: "Mbo'ehao", lessonId: 1,icon: Icons.school),
                      LessonCircleWidget(title: "Ara Pukukue", lessonId: 2,icon: Icons.access_alarm_outlined),
                      LessonCircleWidget(title: "Yvyra Apé", lessonId: 3,icon: Icons.hiking),
                      LessonCircleWidget(title: "Tatarendy Mimbipa", lessonId: 4,icon: Icons.photo),
                      LessonCircleWidget(title: "Ka'aguy Rupa", lessonId: 1,icon: Icons.park),
                      LessonCircleWidget(title: "Nhemboaty", lessonId: 2,icon: Icons.museum),
                      LessonCircleWidget(title: "Porãnga Nhe'ẽ", lessonId: 3,icon: Icons.music_note),
                      LessonCircleWidget(title: "Kuarahy Mimby", lessonId: 4,icon: Icons.star),
                    ],
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    padding: const EdgeInsets.all(15),
                    crossAxisCount: 3,
                    crossAxisSpacing: 10, // Add space between items horizontally
                    mainAxisSpacing: 50, // Add space between items vertically
                    children: const [
                      LessonCircleWidget(title: "Adurudwa Bari", lessonId: 1,icon: Icons.abc),
                      LessonCircleWidget(title: "Wadaru Aroe", lessonId: 2,icon: Icons.pets),
                      LessonCircleWidget(title: "Esebo Aru", lessonId: 3,icon: Icons.fastfood),
                      LessonCircleWidget(title: "Bari Boe", lessonId: 4,icon: Icons.book),
                      LessonCircleWidget(title: "Boe Daodori", lessonId: 1,icon: Icons.school),
                      LessonCircleWidget(title: "Aru Koebo", lessonId: 2,icon: Icons.access_alarm_outlined),
                      LessonCircleWidget(title: "Adurudwa Koadu", lessonId: 3,icon: Icons.hiking),
                      LessonCircleWidget(title: "Aroe Kugudu", lessonId: 4,icon: Icons.photo),
                      LessonCircleWidget(title: "Dori Arudwa", lessonId: 1,icon: Icons.park),
                      LessonCircleWidget(title: "Boe Arugüe", lessonId: 2,icon: Icons.museum),
                      LessonCircleWidget(title: "Omodu Bari", lessonId: 3,icon: Icons.music_note),
                      LessonCircleWidget(title: "Kugudu Boe", lessonId: 4,icon: Icons.star),
                    ],
                  ),
                ],
              )
            ],
          ),
          ListView(
            shrinkWrap: true,
            children: [
              VideoWidget(title: "Eneldino Kugo Cereu speaks Bororo", subtitle: "Exploring Deep Bororo Language and Culture", descricao: "In this video, Eneldino Kugo Cereu takes us on an immersive journey through the Bororo language and culture, highlighting the importance of linguistic and cultural preservation. Through personal stories and ancestral teachings, Eneldino shares the richness of the Bororo people, offering a unique perspective on their traditions and way of life.", vocabulario: "Kari'o: Community; Rudwa: Ancestor; Boe: Wisdom; Aroe: Nature; Dori: Dance", url: "https://drive.google.com/file/d/1uERiMxuf-OMfM0hNcxA5YN8TmojjUiHO/preview"),
              VideoWidget(title: "Leonida Kurireudo speaks Bororo", subtitle: "Preserving the Oral Traditions of the Bororo People", descricao: "Leonida Kurireudo tells us about the Bororo people's oral traditions, emphasizing knowledge transmission from generation to generation. This video is a powerful testimony to orality as a pillar of culture and identity, showing how stories and legends shape the Bororo's understanding of the world.", vocabulario: "Wadaru: Tale; Opy: Home; Kugudu: Spirit; Adurudwa: Teaching; Aru: Life", url: "https://drive.google.com/file/d/1GzzCosCdR0T6E-Jd70ifME6OFYRsvuYz/preview"),
              VideoWidget(title: "Maria Baikaredo speaks Bororo", subtitle: "Bororo Cultural Heritage Through Generations", descricao: "Maria Baikaredo shares the Bororo cultural heritage, weaving a rich tapestry of traditions, rituals, and the deep connection to the land. This video provides an intimate view of the practices that define Bororo identity, celebrating cultural diversity and resilience.", vocabulario: "Esebo: Ceremony; Koadu: Earth; Mimbipa: Song; Bari: Story; Yoi: Forest", url: "https://drive.google.com/file/d/1G5eAVS3tQXqaPf12TttO8hZPvAO5AzSN/preview"),
              VideoWidget(title: "Mario Cereu speaks Bororo", subtitle: "Voices of Bororo Roots and Identity", descricao: "Mario Cereu gives voice to the Bororo people's roots and identity, delving into the unique aspects of their language and traditions. Through personal accounts and cultural observations, Mario highlights the invaluable heritage of the Bororo and its role in contemporary times.", vocabulario: "Boe: Knowledge; Rüna: Path; Daodori: Gathering; Kugudu: Memory; Aroe: Harmony", url: "https://drive.google.com/file/d/1-cZV-u6-PClwalHd18Xv6Hu8LKQ-jqp7/preview"),
              VideoWidget(title: "Muga Atugoreudo speaks Bororo", subtitle: "Ancestral Bororo Wisdom and Teachings", descricao: "Muga Atugoreudo invites us to explore the ancestral wisdom of the Bororo and their vital teachings. This video is a gateway to understanding how traditional Bororo knowledge can offer valuable lessons for current issues, from sustainability to social coexistence.", vocabulario: "Kari'o: Communion; Aru: Balance; Kugudu: Legacy; Boe: Lesson; Yvyra: Tree", url: "https://drive.google.com/file/d/1VsJ3gDfzHqfJewbYNaZfYpu6fPlni_OH/preview"),
              VideoWidget(title: "Valdir Cerai Ceba speaks Bororo", subtitle: "Bororo History Told by Valdir Cerai", descricao: "Valdir Cerai Ceba tells us the rich history of the Bororo people, highlighting events and historical figures that have shaped their culture. This video is a journey through time that reveals the complexity and beauty of Bororo civilization, underlining their resilience and adaptation over the centuries.", vocabulario: "Dori: Past; Rudwa: Warrior; Aroe: Earth; Boe: Transmission; Kugudu: Ancestry", url: "https://drive.google.com/file/d/1hDAkazct8lQy-fjitKpPgzXglS0Q8V4R/preview"),
              VideoWidget(title: "Creation of the Amazonian World in Nheengatu", subtitle: "Amazonian Creation Myths Narrated in Nheengatu", descricao: "This introductory video to Nheengatu presents basic phrases and useful expressions for those wishing to start learning this rich and historical language. Learn greetings, common questions, and everyday phrases, opening the doors to communication in this fascinating language.", vocabulario: "Yara: Creation; Kuaray: Sun; Jasy: Moon; Y Ipo: River; Ka'a: Forest", url: "https://drive.google.com/file/d/1KCN8SC5ngcGJ_Hb15HgyW5XDjhS9ObJS/preview"),
              VideoWidget(title: "Basic phrases in Nheengatu", subtitle: "Basic Phrases Guide for Beginners in Nheengatu", descricao: "Discover the fascinating mythology of the Amazonian world creation, narrated in the Nheengatu language. This video offers a deep insight into the beliefs and myths that form the Amazonian worldview, through stories rich in symbolism and teachings.", vocabulario: "Mba'eichapa: How are you?; Aguara: Thank you; Ma'era: Yes; Ava'ete: No; Mongara: Please", url: "https://drive.google.com/file/d/1AQw3ssvqXQZ55YtHVjavpsS0kvs1UGFC/preview"),
              VideoWidget(title: "Why Nheengatu?", subtitle: "Discover the Current Importance of the Nheengatu Language", descricao: "Explore the importance and contemporary relevance of Nheengatu, a language with deep roots in Amazonian history. This video highlights the rebirth and revitalization of Nheengatu, showing its role in cultural identity and intercultural communication in today's Amazon.", vocabulario: "Arandu: Wisdom; Ñe'ẽ: Word; Mbarete: Strength; Yvy: Earth; Porang: Beauty", url: "https://drive.google.com/file/d/1OGvtjihstUK7v3blOdtkaeWVUD4By15P/preview"),
              VideoWidget(title: "Cumbia in Ticuna", subtitle: "Cultural Fusion: Ticuna Rhythms Meet Cumbia", descricao: "Dive into the unique cultural fusion of Cumbia with Ticuna rhythms, a vibrant expression of Ticuna identity and musicality. This video features inspiring performances that combine tradition and modernity, creating an unforgettable auditory experience.", vocabulario: "Dëna: Dance; Mëi: Music; Kumu: Gathering; Üi: Movement; Fügü: Joy", url: "https://drive.google.com/file/d/1bQRh3AZqlCl2bd2ClJvUtXjpBvm69iMM/preview"),
              VideoWidget(title: "Times in Ticuna", subtitle: "Understanding Time Concepts in the Ticuna Language", descricao: "Understand how the Ticuna language conceptualizes and expresses different aspects of time, from seasons to moments of the day. This video offers a unique perspective on Ticuna time perception, reflecting their deep connection with nature and life cycles.", vocabulario: "Üi Siki: Dawn; Düüña: Dusk; Rügü: Season; Bëna: Moment; Dügü: Day", url: "https://drive.google.com/file/d/1Wbor_xGjJEcKQP8iOd5CO2a-6lDhuMh6/preview"),
            ],
          ),
          Center(
            child: Container(
              width: screenWidth - 50,
              height: screenHeight - 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey,
                  width: 2
                ),
                color: Colors.white,
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Upload your video here!"
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.upload
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        currentIndex: bnbIndex,
        backgroundColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            label: "Learn",
            icon: IconButton(
              color: Colors.white,
              onPressed: () {
                setState(() {
                  index = 0;
                  bnbIndex = 0;
                });
              },
              icon: const Icon(Icons.library_books)
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: "Videos",
            icon: IconButton(
              color: Colors.white,
              onPressed: () {
                setState(() {
                  index = 1;
                  bnbIndex = 1;
                });
              },
              icon: const Icon(Icons.video_collection_outlined)
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: "Upload",
            icon: IconButton(
              color: Colors.white,
              onPressed: () {
                setState(() {
                  index = 2;
                  bnbIndex = 2;
                });
              },
              icon: const Icon(Icons.upload)
            ),
          ),
        ],
      ),
    );
  }
}

