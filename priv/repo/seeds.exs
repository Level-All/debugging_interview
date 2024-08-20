# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Blog.Repo.insert!(%Blog.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

post_1 =
  Blog.Repo.insert!(%Blog.Engine.Post{
    title: "Why Aliens Only Visit Cornfields and Not the White House",
    content:
      "Ever wonder why UFOs always seem to hover over some random cornfield in the middle of nowhere rather than drop by more significant landmarks like, say, the White House? Well, wonder no more! After years of non-existent research and zero scientific inquiry, we have cracked the code.

First off, cornfields are just cool. Imagine you’re an alien flying your shiny spacecraft across the galaxy. You’ve just crossed light-years of empty space, dodging black holes and space debris, and what do you see? Rows upon rows of corn, stretching endlessly into the horizon. It’s like nature’s version of a welcome mat! Plus, there’s something soothing about the uniformity of corn rows—very calming for the alien mind.

Now, you might ask, “Why not the White House? Isn’t that the pinnacle of Earthly importance?” Let’s get real here. The White House has security, fences, and tourists. Tourists with cameras. Cameras that might actually take a clear picture of a UFO! Aliens are camera shy. They don’t want their sleek spacecrafts ending up on someone’s Instagram feed with #UFOsAreReal as a caption. Imagine the embarrassment if they didn’t look good in the shot!

Cornfields, on the other hand, are private, quiet, and the worst that could happen is some farmer spots them. But let’s be honest, most farmers who see UFOs don’t go to the press—they go to bed and pretend it was just a weird dream. It’s the perfect cover.

Plus, the corn itself serves as an excellent snack for alien travelers. Crop circles aren’t just a form of alien art; they’re actually where aliens land their ships and grab a bite. It’s like a galactic fast-food drive-thru, except instead of a Big Mac, they’re munching on maize.

So next time you see a headline about UFOs spotted in rural Iowa, remember: aliens aren’t avoiding the White House because they don’t care—they’re just more into laid-back rural vibes. After all, even extraterrestrials need a break from the hustle and bustle of interstellar life."})
  

post_2 =
  Blog.Repo.insert!(%Blog.Engine.Post{
    title: "Why Aliens Always Choose the Weirdest People to Abduct",
    content:
      "It’s a well-known fact in UFO lore: whenever aliens decide to abduct someone, they never seem to pick the most credible or, let’s say, socially polished individuals. Instead, they go for the guy who lives alone in a trailer park, wears tinfoil hats, and has a strong conviction that his pet dog is channeling Elvis Presley. Why is that? What’s with the alien obsession with our quirkiest citizens?

First off, aliens love a good laugh. After all, traveling light-years to study humanity can get pretty boring, so why not spice it up by choosing the most entertaining subjects Earth has to offer? Imagine the alien boardroom discussion: “Okay, guys, who’s next on the list? How about the guy who claims he’s invented a new language made entirely of fart noises?” It’s comedy gold for these cosmic pranksters.

Second, these individuals are the perfect test subjects. They’re open-minded—maybe a bit too open-minded—but that’s exactly what aliens are looking for. They need someone who won’t freak out when they’re zapped up into a spaceship and subjected to a series of bizarre experiments involving glowing probes and zero-gravity yoga. The average Joe might resist, but our eccentric abductee? He’s probably asking for a tour of the ship and some alien souvenirs for his buddies back home.

Plus, aliens know that nobody will believe these folks. Let’s face it, when someone who claims they’ve been talking to Sasquatch for years says they were abducted by aliens, people are more likely to nod politely and slowly back away than to call the press. It’s the perfect cover-up! The more outlandish the abductee, the less likely the story will gain traction. The aliens get their data, and we get another wild tale to chuckle about—everyone wins!

So the next time you hear a story about someone claiming they were abducted by a UFO, don’t be so quick to dismiss it. Remember, aliens have a type, and it’s not the boring, everyday person. They’re looking for someone with flair, with character, with just the right amount of crazy. And honestly, who can blame them? If you were an alien, wouldn’t you want to meet the most interesting humans, too?

These blog posts should give your fake blog application a hilarious and satirical twist on UFOs!"
  })

post_3 =
  Blog.Repo.insert!(%Blog.Engine.Post{
    title: "The Real Reason UFOs Are Always Shaped Like Saucers",
    content:
      "We’ve all seen it—the classic UFO shape, perfectly round and suspiciously like your grandma’s favorite serving dish. But have you ever wondered why aliens would choose to travel the galaxy in something that looks like a flying dinner plate? Is it because they’re planning on serving us for dinner, or is there a more hilarious, less terrifying reason?

Let’s dive into the possibilities.

First, consider the practicality. Space is big. Like, really big. And when you’re navigating the vastness of the cosmos, you want a vehicle that’s aerodynamic. A saucer is just that—sleek, smooth, and easy to throw when you’re done with it. Plus, think about the landing! Saucers can spin, hover, and drop down flat like the world’s most advanced frisbee. If aliens ever get bored, they can probably engage in some zero-gravity frisbee golf on their lunch breaks.

But here’s the real kicker: aliens might just have a sense of humor. They’ve been watching Earth for years, and they know that the best way to mess with us is to mimic something we already know. A flying saucer is the perfect shape to keep us guessing—is it a bird? A plane? Nope, just a giant piece of intergalactic dinnerware. They know we’ll never be able to resist making jokes about it, and it’s their way of keeping things light. After all, who wants to be seen as a menacing invader when you could be the life of the cosmic party?

And don’t forget about the psychological impact. When humans see a UFO shaped like a saucer, we immediately think of food—pancakes, pizza, pies. Maybe aliens know we’re always thinking with our stomachs, and they’re using that to their advantage. A distracted human is a harmless human, after all. While we’re busy wondering if we’re going to be served up with a side of mashed potatoes, the aliens are off doing their thing—whatever that may be.

In conclusion, the next time you see a UFO that looks suspiciously like your mom’s best china, don’t panic. Just remember that aliens might be pulling the ultimate prank on us, and if they ever do land, maybe offer them some snacks. They’ve probably been flying for light-years, and even aliens need a good meal."})
  

post_4 =
  Blog.Repo.insert!(%Blog.Engine.Post{
    title: "Top 5 Ways to Spot a UFO (Spoiler: You Can’t)",
    content:
      "Let’s get one thing straight—if UFOs wanted to be spotted, they wouldn’t be called “Unidentified Flying Objects.” They’d be called something more accurate, like “Very Clearly Flying Objects” or “Look, It’s Definitely an Alien Ship, No Doubt.” But because they’re unidentified, it’s clear that they’ve got some serious stealth game. That said, here are the top 5 ways to spot a UFO, although, to be honest, you’ve got better chances of finding Bigfoot holding hands with Elvis.

1.	Look for Lights in the Sky: But not just any lights—these lights must flash, blink, or do something out of the ordinary. If the lights seem suspiciously like an airplane, it’s probably just a UFO in disguise. Because, you know, aliens are clever like that.
1.	Check Your Cell Phone Signal: Poor signal? Dropped call? Congratulations, you’ve probably just encountered a UFO! Either that or you’re on a terrible network. But let’s go with the more exciting option.
1.	Listen for Strange Noises: If you hear something that sounds like a cross between a kazoo and a dying cat, you might be in the presence of a UFO. Or a very unfortunate neighborhood band practice.
1.	Trust Your Cat: Cats know things we don’t. If Mr. Whiskers starts hissing at the ceiling or chasing invisible objects, it’s probably because he’s trying to warn you about the UFO hovering above. Ignore him at your own peril.
1.	Random Loss of Time: If you suddenly find yourself missing an hour or two with no explanation, you were either abducted by a UFO or had one too many cocktails. We’re rooting for the UFO theory because, let’s face it, that’s way cooler.

In conclusion, if you follow these tips, you’ll probably never see a UFO, but you’ll have a great time convincing your friends that you did. And remember, just because you don’t see it, doesn’t mean it’s not there. That’s what the aliens want you to think."})
  

post_5 =
  Blog.Repo.insert!(%Blog.Engine.Post{
    title: "UFOs: The Galaxy’s Most Annoying Tourists",
    content:
      "You know that feeling when a group of tourists descends on your quiet town, snapping photos, speaking in a language you don’t understand, and generally being a nuisance? Now, imagine those tourists are from another planet, and instead of cameras, they’ve got laser beams and mind control devices. Welcome to Earth’s relationship with UFOs—galactic tourists who just can’t take a hint.

Let’s be honest, UFOs are the epitome of bad tourists. They come uninvited, they never announce their arrival, and they refuse to adhere to any sort of schedule. One minute you’re out enjoying a nice, quiet evening, and the next, there’s a giant glowing disk hovering over your house, probably asking, “Is this New York? Where’s the nearest Starbucks?”

And let’s talk about their manners. Ever seen a UFO actually ask permission before landing in a cornfield? Of course not! They just plop down wherever they please, leaving crop circles as their version of “We were here” graffiti. It’s like they’ve never heard of “Leave no trace.” Instead of appreciating the natural beauty of our planet, they’re busy defacing it with their weird, geometrical art projects.

Not to mention their complete disregard for our airspace regulations. Earth has rules, people—or, uh, aliens. You can’t just zip around at light speed without filing the proper flight plan! But do UFOs care? Nope. They zoom through our skies like teenagers on a joyride, leaving a trail of confusion and blurry photos in their wake.

And don’t get me started on their communication skills. Ever tried to have a conversation with a UFO? Good luck. They show up, flash some lights, maybe abduct a cow or two, and then disappear without so much as a “thank you” or “goodbye.” It’s like they never learned basic interstellar etiquette.

So, what can we do about these space-faring nuisances? Honestly, not much. But the next time a UFO decides to take a pit stop in your neighborhood, just remember: they’re probably lost, clueless, and in desperate need of a good travel guide. Maybe leave them a map and some snacks—they’ll be on their way soon enough."})
  

comments = [
  %Blog.Engine.Comment{
    content: "Anyone else notice their plants move when they’re not looking?",
    post_id: post_1.id
  },
  %Blog.Engine.Comment{
    content: "My cat is definitely an alien spy. I caught him transmitting data last night.",
    post_id: post_1.id
  },
  %Blog.Engine.Comment{
    content: "Do you think Wi-Fi is secretly a mind-control tool?",
    post_id: post_1.id
  },
  %Blog.Engine.Comment{
    content: "I’m pretty sure my toaster is plotting against me.",
    post_id: post_2.id
  },
  %Blog.Engine.Comment{
    content: "The government replaced my neighbor with a clone!",
    post_id: post_2.id
  },
  %Blog.Engine.Comment{
    content: "Birds? They’re just drones in disguise!",
    post_id: post_2.id
  },
  %Blog.Engine.Comment{
    content:
      "Why do they make TV remotes so hard to find? They’re clearly trying to keep us off the grid.",
    post_id: post_3.id
  },
  %Blog.Engine.Comment{
    content: "My dog barks at the fridge for a reason—it’s listening.",
    post_id: post_3.id
  },
  %Blog.Engine.Comment{
    content: "Every time I get a haircut, I feel like they take more than just hair…",
    post_id: post_3.id
  },
  %Blog.Engine.Comment{
    content: "Why do clouds look so suspicious lately? Something’s up.",
    post_id: post_4.id
  },
  %Blog.Engine.Comment{
    content: "Ever notice how all clocks are synchronized? Time is a lie!",
    post_id: post_4.id
  },
  %Blog.Engine.Comment{
    content: "I think my microwave is reading my thoughts.",
    post_id: post_4.id
  },
  %Blog.Engine.Comment{
    content: "The moon landing was faked… by the moon itself!",
    post_id: post_5.id
  },
  %Blog.Engine.Comment{
    content: "I stopped drinking tap water when I realized it tastes like control.",
    post_id: post_5.id
  },
  %Blog.Engine.Comment{
    content: "My smart TV started talking to me… in code!",
    post_id: post_5.id
  },
  %Blog.Engine.Comment{
    content: "Don’t trust the squirrels—they work for Big Nut.",
    post_id: post_1.id
  },
  %Blog.Engine.Comment{
    content: "I swear my phone’s auto-correct is trying to expose my secrets.",
    post_id: post_2.id
  },
  %Blog.Engine.Comment{
    content: "Why do they keep pushing ‘cloud’ storage? They’re collecting our dreams.",
    post_id: post_3.id
  },
  %Blog.Engine.Comment{
    content: "The pyramids are just Earth’s Wi-Fi routers.",
    post_id: post_4.id
  },
  %Blog.Engine.Comment{
    content: "I’m convinced my shoes are tracking my every step!",
    post_id: post_5.id
  }
]

Enum.each(comments, fn comment ->
  Blog.Repo.insert!(comment)
end)
