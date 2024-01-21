# scrivener2dayone
A shell script to convert [Scrivener](https://www.literatureandlatte.com/scrivener/overview) project files to [DayOne](https://dayoneapp.com))-ready test files.  

Tested and works on macOS (requires shell access).

## 👉 But why?

Always a good question: *why*.  Why would I want to convert Scrivener to DayOne?

I had a writing project in Scrivener that I decided I wanted to move to DayOne to simplify my writing process.  As it turns out, I had **506 entries** in Scriviner.  When I though about convering those manually, I cried one tear and nearly abandonded the project. 🤦🏻‍♂️

And then I decided to dust off the ol' shell scripting skills 👨🏻‍💻 and automate this tedious process.  That's that computers are for, right?

Admittedly, this is a pretty specific case and likely only useful to me, but I thought I'd toss it out into the world just in case someone else is in the same boat. 🚤

## How to use

It's a semi-automated process.

See [HOWTO.md](HOWTO.md).

## SAQ (Sometimes Asked Questions)

### Does this script convert Scrivener's keywords to DayOne tags?

No.  Well, sort of.

Fortunately, Scrivener does export keywords as metadata.

```
Created: November 30, 2023 at 7:24 PM
Modified: November 30, 2023 at 7:25 PM
Status: No Status
Label: No Label
Keywords: funny, family
```

But DayOne does not support importing tags (unless you're importing a PDF, which we are not 🤷🏻‍♂️).

So as a fallback, this script will include keywords as hashtags in the body of the text imported into DayOne.

So Scrivener's keywords...

``
Keywords: funny, family
``

Become hashtags in DayOne.  This script automatically includes a `#scrivener_import` hashtag as well.

``
#scrivener_import
#funny #family
``

You can also add your own hashtags, or anything else you wand, as command-line args.  See [HOWTO.md](HOWTO.md).
