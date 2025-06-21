import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../Widgets/AnimatedHeaderText.dart';
import '../Widgets/GlassButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 80), () {
      setState(() {
        _opacity = 1.00;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final buttonData = [
     
   
      ['💼', 'Experience', '/experience', [Colors.blue, Colors.cyan]],
      ['🎓', 'Education', '/education', [Colors.purple, Colors.pink]],
      ['🛠️', 'Projects', '/projects', [Colors.orange, Colors.redAccent]],
      ['📬', 'Contact', '/contact', [Colors.teal, Colors.green]],
      ['👨‍💻', 'About Me', '/about', [Colors.deepPurple, Colors.indigo]],
       
    ];

    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 600;
    final isWeb = kIsWeb;

    final headerFontSize = isMobile ? 32.0 : 70.0;
    final subHeaderFontSize = isMobile ? 28.0 : 65.0;
    final buttonFontSize = isMobile ? 16.0 : 22.0;
    final emojiSize = isMobile ? 22.0 : 28.0;
    final buttonPadding = isMobile
        ? const EdgeInsets.symmetric(horizontal: 18, vertical: 12)
        : const EdgeInsets.symmetric(horizontal: 38, vertical: 22);

    // Responsive Rive size
    final riveSize = isMobile
        ? 220.0
        : isWeb
            ? 750.0
            : 750.0;

    if (isMobile) {
      // --- MOBILE DESIGN ---
      return Scaffold(
        backgroundColor: const Color(0xFF181F2A),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Profile avatar
                  const SizedBox(height: 18),
                  CircleAvatar(
                    radius: 54,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/9919?v=4'), // Example GitHub avatar
                    ),
                  ),
                  const SizedBox(height: 18),
                  // Name
                  Text(
                    'SHAHAIB KHAN',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber[700],
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 6),
                  // Title
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 18),
                  // Animated intro
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Hey there Stalker 👀',
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        speed: const Duration(milliseconds: 60),
                      ),
                      TyperAnimatedText(
                        'Welcome to my Space 💻',
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.w600,
                        ),
                        speed: const Duration(milliseconds: 50),
                      ),
                    ],
                    isRepeatingAnimation: true,
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  const SizedBox(height: 24),
                  // Socials row (example)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                                  
                                  GlassButton(
                            Iconimage: "assets/github.png",
                            emoji: '👨‍💻',
                            label: 'My GitHub Profile',
                            onTap: () async {
                              const url = 'https://github.com/shahzaibkhan3356';
                              final uri = Uri.parse(url);
                              if (await url_launcher.canLaunchUrl(uri)) {
                                await url_launcher.launchUrl(uri, mode: url_launcher.LaunchMode.externalApplication);
                            }
                          },
                          gradientColors: [Colors.black, Colors.grey[900]!],
                        ),
                                GlassButton(
                                Iconimage: "assets/lin.png",
                                emoji: '👨‍💻',
                                label: 'Linkedin Profile',
                                onTap: () async {
                                  const url = 'https://www.linkedin.com/in/shahzaib-khan-34912036a';
                                  final uri = Uri.parse(url);
                                  if (await url_launcher.canLaunchUrl(uri)) {
                                    await url_launcher.launchUrl(uri, mode: url_launcher.LaunchMode.externalApplication);
                                }
                              },
                              gradientColors: [Colors.black, Colors.grey[900]!],
                            ),

                           GlassButton(
                            Iconimage: "assets/resume.png",
                            emoji: '👨‍💻',
                            label: 'My Resume',
                            onTap: () async {
                              const url = 'https://drive.google.com/file/d/156rZXDbKACgLuuorsrgrVOLvgumwEzsR/view?usp=drive_link';
                              final uri = Uri.parse(url);
                              if (await url_launcher.canLaunchUrl(uri)) {
                                await url_launcher.launchUrl(uri, mode: url_launcher.LaunchMode.externalApplication);
                            }
                          },
                          gradientColors: [Colors.black, Colors.grey[900]!],
                        ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Buttons as cards
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: buttonData.length,
                    itemBuilder: (context, i) {
                      final data = buttonData[i];
                      return Card(
                        color: Colors.white.withOpacity(0.07),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        elevation: 0,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: ListTile(
                          leading: Text(
                            data[0] as String,
                            style: const TextStyle(fontSize: 26),
                          ),
                          title: Text(
                            data[1] as String,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                      
                          onTap: ()  {
                             Get.toNamed(data[2] as String);
                              },
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 32),
                  // Footer
                  const Text(
                    'Made with ❤️ in Flutter',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    // --- WEB DESIGN (existing) ---
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Centered, non-stretched Rive animation as background
                  IgnorePointer(
                    child: Center(
                      child: SizedBox(
                        width: riveSize,
                        height: riveSize,
                        child: const RiveAnimation.asset(
                          "assets/rivea.riv",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  // Overlay: Centered text and buttons on top of animation
                  Padding(
                    padding: const EdgeInsets.only(top: 190,left: 100,right: 100),
                    child: SafeArea(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top:  48, 
                                  ),
                              child: AnimatedHeaderText(
                                headerFontSize: headerFontSize,
                                subHeaderFontSize: subHeaderFontSize,
                              ),
                            ),
                            const SizedBox(height: 40),
                            Padding(
                              padding: EdgeInsets.only(top: isMobile ? 24 : 48),
                              child: Wrap(
                                spacing:  18,
                                runSpacing:  22,
                                alignment: WrapAlignment.center,
                                children: buttonData.map((data) {
                                  return GlassButton(
                                    emoji: data[0] as String,
                                    label: data[1] as String,
                                    onTap: () => Get.toNamed(data[2] as String),
                                    gradientColors: data[3] as List<Color>,
                                    fontSize: buttonFontSize,
                                    emojiSize: emojiSize,
                                    padding: buttonPadding,
                                  );
                                }).toList(),
                              ),
                            ),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                          GlassButton(
                                Iconimage: "assets/github.png",
                                emoji: '👨‍💻',
                                label: 'My GitHub Profile',
                                onTap: () async {
                                  const url = 'https://github.com/shahzaibkhan3356';
                                  final uri = Uri.parse(url);
                                  if (await url_launcher.canLaunchUrl(uri)) {
                                    await url_launcher.launchUrl(uri, mode: url_launcher.LaunchMode.externalApplication);
                                }
                              },
                              gradientColors: [Colors.black, Colors.grey[900]!],
                            ),

      
                              GlassButton(
                                Iconimage: "assets/lin.png",
                                emoji: '👨‍💻',
                            
                                label: 'Linkedin Profile',
                                onTap: () async {
                                  const url = 'https://www.linkedin.com/in/shahzaib-khan-34912036a';
                                  final uri = Uri.parse(url);
                                  if (await url_launcher.canLaunchUrl(uri)) {
                                    await url_launcher.launchUrl(uri, mode: url_launcher.LaunchMode.externalApplication);
                                }
                              },
                              gradientColors: [Colors.black, Colors.grey[900]!],
                            ),

                                         GlassButton(
                                       
                            Iconimage: "assets/resume.png",
                            emoji: '👨‍💻',
                            label: 'My Resume',
                            onTap: () async {
                              const url = 'https://drive.google.com/file/d/156rZXDbKACgLuuorsrgrVOLvgumwEzsR/view?usp=drive_link';
                              final uri = Uri.parse(url);
                              if (await url_launcher.canLaunchUrl(uri)) {
                                await url_launcher.launchUrl(uri, mode: url_launcher.LaunchMode.externalApplication);
                            }
                          },
                          gradientColors: [Colors.black, Colors.grey[900]!],
                        ),
                            ],
                           )
                       
                  
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}