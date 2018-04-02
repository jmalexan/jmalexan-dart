import 'package:angular/core.dart';

import 'package:markdown/markdown.dart';

@Injectable()
class TermService {
  String displayText;

  TermService() {
    execute("home");
  }

  execute(String cmd) {
    if (cmd.toLowerCase() == "home") {
      displayText = markdownToHtml("""# Welcome!

This website is navigated by commands, type one in to get the info!

For links to my resume and LinkedIn, as well as a quick bio, run \`about\`!

For info about my personal projects, run \`projects\`!

\\>jonathan_""");
    } else if (cmd.toLowerCase() == "projects") {
      displayText = markdownToHtml("""# Personal Projects

[Junction Manager](https://github.com/notdisliked/JunctionManager) is an application I created to solve a problem I had with managing what content was on what drive of my multiple drive PC. It lets you move folders back and forth between the drives with ease using Windows' Junctions, as well as helping you keep track and manage all the junctions created using the app.

# Hobby Games

[Contrast](https://tms.ogpc.info/Games/Details/72d4ac5f-d37b-4ac2-a11a-495f4da06174) is a game created during the 2015-2016 session of the Oregon Game Project Challenge. Made using Unity and C#, it revolves around creating portals which alter objects' collision box to avoid obstacles and solve puzzles.

[Vision](https://tms.ogpc.info/Games/Details/fb0afbd3-095f-410f-8be5-ce41c38cccf2) was created during the 2016-2017 session of the Oregon Game Project Challenge. It is a game developed specifically for the HTC Vive, and utilizes the Vive's headtracking to use what the player can or cannot see to solve puzzles""");
    } else if (cmd.toLowerCase() == "about") {
      displayText = markdownToHtml("""# Hey there!

My name's Jonathan, I'm currently attending Oregon State University for a degree in Computer Science. My passion is programming - it's what I want to go into and what I do as a hobby. My interests within programming pertain to interface design and front end programming, but I don't restrict myself to that, I explore as much as I can! I've listed all my personal and collaborative projects on my Projects page, please check them out! I've also listed my internship and job experience below. Thanks for reading!

# Important Links

[Resume](https://drive.google.com/file/d/0B6sJJGWL3mJ2UHlPVUJoQWZNVUU/view?usp=sharing)

[LinkedIn](https://www.linkedin.com/in/jonathan-a-62b610a1)

# Employment

2017: Enli - Summer Intern

2014-2017: Saturday Academy - Computer Science

2016: Saturday Academy - Summer IT Intern

2015: Enli - Summer Intern""");
    }
  }
}
