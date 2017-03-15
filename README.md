
# Spotify Sinatra Assessment
This is a question repo for testing your web server understanding relate to Ruby. You'll be building a clone of Spotify! but on a web version ... focusing on the backend server application.

The goal of the assessment is to test your understanding about
```
- ActiveRecords
- ActiveRecords Relationship and Associations
- RESTFUL Routes and MVC through the use of Sinatra framework
```
And thus the usage of ActiveRecords, RESTFUL Routes and MVC is a **requirement**.


# Duration
6 hours. Cut off time is 4.30pm.

# What You Will Need to Do
1) FORK this repo out by clicking the "**Fork**" button on the top right side of the GitHub page.

```
$ cd ~/Desktop
```

2) Git clone your own forked repo.

```
$ git clone <your repo address>
```

3) Navigate into the repo.
```
$ cd <repo-name>
```

4) Start writing your code

```
Remember to commit small and often. Some good references:
$ git add .
$ git commit
    - i
    - Write your commit message
    - Esc
    - :wq!
$ git push origin master
```

5) Once done, call a mentor and Slack him/her your GitHub repo link.

6) The mentor will assess your performance.


# Requirements
Your app has to be a working app, with the capabilities as listed below:


### Users
1. User is able to (C)create an account (sign up)
2. User is able to (R)view their own profile (showing own song list- including own created songs)
3. User is able to (R)view other users' profiles (showing their song list)
4. User is able to (U)edit **only their own** profile
5. User is able to (D)delete **only their own** account


### Sessions
1. User is able to log into an account (log in)
2. User is able to log out from an account (log out)



### Playlists
1. User is able to (C) CREATE Playlist **(validation: playlist name is 6 characters minimum)**
3. User is able to (R) view playlists and songs of every public playlist on WebSpotify
4. User is able to (U) UPDATE **only their own** playlists
5. User is able to (D) DELETE **only their own** playlist


### Songs
1. User is able to (C) CREATE song(s) under a created playlist **(validation: song title is 3 characters minimum, playlist_id cannot be null for song creation)**
2. User is able to (R) VIEW details of every single song posted by every webspotify user **(including song title, artist name, album name, created datetime, song duration/length)**
3. User is able to (R) view all songs by every webspotify user
4. User is able to (U) UPDATE **only their own posted** songs
5. User is able to (D) DELETE **only their own posted** songs





#BONUS QUESTIONS (**only attempt this after you finished all the requirements on top**)
### Save Song into my Saved Playlist
```
1) All my uploaded songs are automatically in my saved playlist.
2) By Clicking Button `+` or `Save` beside any other user uploaded song, 
   user is able to save a copy of that song under my saved playlist.
3) By Clicking Button `Save` under any user's Playlist, User is able to save a copy of all songs of 
   that particular playlist under my saved playlist.
```

### Follow random playlist
```
1) By Clicking Button `Follow` under any user's Playlist, User is able to park/save a copy 
   of the playlist under own list of playlists
```

# Good Luck mates!
