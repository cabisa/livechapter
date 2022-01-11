# livechapter
## Introduction
Small bash scripts to create on the fly chapters for youtube livestreams. Best used with [companion](https://bitfocus.io/companion).

For better usability (especially for longer livestreams) it is recommended to add chapters to your videos. For your viewers it is now easier to navigate. And it is possible to find the chapters directly at google.

## My workflow
In companion I have several buttons:
1. "Start livestream"
  *  Start the livestream/record via companion (you could use an atem mini, obs, etc.)
1. "Chapter Intro", ..., "Chapter Outlook" for each chapter 
  * I create a slide/lower third for each chapter of my livestream. These slides/lower 3rd, videos are shown in my livestream via companion.

## Howto generate live chapters
To generate the chapters automaticly, there are 4 steps necessary:

### Step 1
Download the both scripts to a local directory and ensure, that these scripts are executable (`chmod a+x *.sh` in the terminal in the directory). 

### Step 2
Add an addidtional action to the button "start livestream":

Add action: `internal: Run shell path (local)`
Path: `<complete path>/startchapters.sh <First chapter Name>` 
The parameter `First chapter Name` is optional. Default value is `Intro`

Example for Path: /Users/JohnDoe/projects/livechapter/startchapters.sh Introduction and motivation

### Step 3
Add an addidtional action to each chapter button:

Add action: `internal: Run shell path (local)`
Path: `<complete path>/addchapter.sh <Chapter Name>` 
The parameter `Chapter Name` is optional but very usefull. Default value is `Chapter`

Example for Path: /Users/JohnDoe/projects/livechapter/addchapter.sh Short Introduction

### Step 4
Open the directory where the scripts are stored and search for a file like `chapters-2022-01-11_192555.log` (the date is an example. Your file contains the start date of your stream).
The content is like:

```
0:00 Intro
5:17 Chapter 1
10:37 Chapter 2
17:11 Another chapter
21:22 Conclusion and outlook
```

Copy this to the description of your video. The chapter are created automaticly. For furter information read the article on youtube [Video chapters] (https://support.google.com/youtube/answer/9884579?hl=en).

## Known errors

1. If the stream is not started, an older log file is used or there will be an error
2. It is not possible to use companion variables [companion issue 1248] (https://github.com/bitfocus/companion/issues/1248)
