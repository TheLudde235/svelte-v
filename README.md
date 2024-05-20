# What is v?

v was made to prank my classmates for when they left their computer unnatended and I wanted to quickly prank them by setting a sound for when a new program is started. (inspired by [this](https://www.youtube.com/shorts/usAOiprtEs4) video by Veraxity)


The files were static in the original v project so this didn't really make a difference when "translating" it to svelte.

## Uploading sounds

If you'd like to add you're own sounds that you think other people will enjoy, send them through a pull request in the [`/src/funnies`](https://github.com/TheLudde235/svelte-v/tree/master/src/funnies) folder. Note that the format needs to be in the `.wav` file-format.

To convert other formats to `.wav` [cloudconvert.com](https://cloudconvert.com/mp3-to-wav) works for great for me.

## Future

v has evolved since I first started. It is now my coworkers I am pranking instead of classmates and some new scripts have popped up. When I find something funny and not too destructive I'll probably upload it here too.

## Hosting

The website is hosted [here](https://v.theludde235.se/) on cloudflare pages.
If you'd like to host this for your own, I'd recommend Cloudflare pages due to it being free and response speed.

This build does not function correctly locally, I might fix it later.
Right now the scripts are hard coded to use my own domain and the paths to the files are also different depending on if it's on the "build" build or the "dev" build
