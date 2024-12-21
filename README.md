# ElKowar's boxful of gruv

## Discontinued and Probably dead

I've not used any of these themes in a long while, and haven't had the motivation to keep anything here updated or working.
Thus, if something still works for you, that's great, but keep your expectations low.
Website theming is a constant game of catch-up.


This is a collection of my gruvbox themes for different webpages and applications.

## Installation

### Prequisites

Some of these themes use special fonts. You'll have to either install them or change the fonts in the respective CSS files.

Fonts used:
- [`Terminus (TTF)`](https://aur.archlinux.org/packages/terminus-font-ttf/)
- [`Jetbrains Mono`](https://www.jetbrains.com/lp/mono/)


### Websites

Most of these themes are just custom CSS for websites.  
You need the `stylus` browser extension (available for chrome and firefox and probably more)
to apply these themes.

After installing the extension, click on the little icon and go to `manage`.
in there, you *enable `as Usercss` and click on "write new style".

![newstyle](./images/writenewstyle.png)

Now, select all of the text that is already there, and delete it.
The next step is to paste in the contents of the desired `.styl` file from the `./default-gruvbox/` directory.

If you want to change anything, make sure you set the CSS Linter to "Stylelint", 
as that one will accept the stylus syntax used here.

### Discord

The Discord-theme can be installed using any css-loader of your choice. 
If all you want is to apply this theme, I recommend [discocss](https://github.com/mlvzk/discocss).
Follow the instructions for your chosen CSS loader, and load in the theme. That's all!

### Generating your own versions of the themes

This box not only contains finished gruvbox themes, but also a system for generating your own versions of them.
To do that, you can use the generate.sh script.

1. First, copy the `template` file and change it to match your desired colorscheme
2. run `./generate.sh <name-of-your-theme> <path-to-your-template-file>`

The script will then generate a version of the theme, ready for you to insert into your stylus and discord styles.

## Showcase

![haskell](./images/haskell.gif)
![duckduckgo](./images/ddg.gif)
![rust](./images/rustdoc.gif)
![discord](./images/discord.gif)


## Contributing

If you find any missing parts (not unlikely, little of this is complete), feel free to submit a PR, fixing the issue.
If your stuff _works_ and is atleast _somewhat_ maintainable, i'll probably merge it if i like it.  
Make sure to describe the thing you're fixing or adding, and to use css variables where appropriate.


> If live gives you lemons, make sure they match `#fabd2f`.  
> ~ Cave Johnson*


_*citation needed_
