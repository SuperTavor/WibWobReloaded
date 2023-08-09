# Progress Report 8/9/2023
[Go back to home page](https://supertavor.github.io/WibWobReloaded/)

heya :) welcome to our first weekly progress report! these little progress reports are gonna summarize development for the week and thank contributors for their *epic* work!

First, I wanna thank Blizzie and Spork for boosting our Discord server! While this doesn't support us directly, it means a lot.

Next, I wanna thank BowserJrPlush, Aero and Drako for their contributions!

Furthermore, I also wanna thank all of YOU for supprting us! We opened our Discord server nearly 2 days ago and we already have 280 members!!! THANK YOU SO MUCH

**And without further a do - let's get to the development side of things :)**

After the unfortunate shut down of the Puni Translation Project, Woganog and I could seriously start working on Reloaded with little to no distruptions.

The first 2 days of the project were amazing: while we didn't make any signifcant progress, we learned a lot about the inner workings of Wibble Wobble and how we can deeply modify the game to our liking. We also found that the API used to connect to the server is based on Hangame, which might be difficult to replace.

in simple words, it means that we would have to completely rewrite the network code of the game for Reloaded to work, and that's a big no no. Especially with decompiled source code.

 we decided to ditch making the game offline in favor of an *isolated server*.

An isolated server essentially means that while you will connect to a server, this server will be hosted on your device, locally, and no one else could connect. Using this method, the game could both run offline and connect to a private server.

We will publish the reverse engineered source code of the server on github, so anyone could make a private server and have their community playing in no time!

**PS: we will also have our very own private server with a lot of cool stuff!!**

But reverse engineering a server is absolutely no joke. While I have experience with reverse engineering, servers are a completely new territory for me. 

We already have a concrete plan to actually do this, but it might take a very long time.

Thank for you for reading this, We truly appreciate it!

-SuperTavor
