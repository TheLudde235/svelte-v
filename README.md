# What is svelte-v?

v was made to prank my classmates and colleagues quickly. But after I realized free hosting was way too slow I rebuilt the app from a NodeJS app to a svelte app. (node version still live [here](https://v-2unu.onrender.com/) but is very slow).

The files were static in the original v project so this didn't really make a difference.

---
## Uploading sounds

If you'd like to add you're own sounds that you think many people will enjoy, send them through a pr in the `/src/funnies` folder. Note that the format needs to be in the `.wav` file-format.

To convert `.mp3` to `.wav` [cloudconvert.com](https://cloudconvert.com/mp3-to-wav) works for great for me.

---
## Hosting

The website is hosted [here](https://v.theludde235.se/) on cloudflare pages.
If you'd like to host this for your own, I'd recommend Cloudflare pages due to it being free and response speed.

This build does not function correctly locally, I might fix it later.
Right now the scripts are hard coded to use my own domain and the paths to the files are also different depending on if it's on the "build" build or the "dev" build
