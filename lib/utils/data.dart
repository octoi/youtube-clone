class User {
  final String name;
  final String email;
  final String profile;

  User({this.email, this.name, this.profile});
}

// users

User currentUser = User(
  name: "test",
  email: "test@test.com",
  profile: "https://avatars.githubusercontent.com/u/82007161?s=200&v=4",
);
User youtuber = User(
  name: "Rick Astley 🎵",
  email: "rick@roll.com",
  profile:
      "https://static.wikia.nocookie.net/youtube/images/c/ce/RickRollButWithADifferentLink.jpg/revision/latest/top-crop/width/360/height/360?cb=20201023192005",
);

// videos

class YoutubeVideo {
  final User creator;
  final String thumbnail;
  final String url;
  final String id;

  YoutubeVideo({this.creator, this.thumbnail, this.url, this.id});
}

YoutubeVideo ytVideo = YoutubeVideo(
    creator: youtuber,
    thumbnail:
        "https://i.ytimg.com/vi/dQw4w9WgXcQ/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&amp;rs=AOn4CLAfut6ib46TKYWnNm5PxBrcX8HLWg",
    url: "https://youtu.be/dQw4w9WgXcQ",
    id: "dQw4w9WgXcQ");
