### FLUTTER 实现macos音乐播放器

> 接口感谢 [NeteaseCloudMusicApi](https://github.com/Binaryify/NeteaseCloudMusicApi) 

### 注意事项

由于依赖[dart_vlc](https://github.com/alexmercerind/dart_vlc) 需要安装cmake
```shell script
brew install cmake
```
视频返回的时候报错请查看[dart_vlc Issues](https://github.com/alexmercerind/dart_vlc/pull/149) 修复,作者是手动进行了[修复](https://github.com/alexmercerind/dart_vlc/commit/225cda12cd9feece156a3866127559dceb3d1209)

### 功能

- 歌曲播放 
- 歌单 
- 歌单详情
- FM电台 
- 视频列表 
- 视频播放 

### 问题

- 个别音乐无法播放 由于版权或者没有登录的
- 没有登录有的音乐时长会是试听的片段
- TextField macos端异常bug
- 歌曲和歌单搜索 需要优化路由和TextField问题
- 独家放送播放 待实现
- 播放页面自定义 


### 截图

![music_1](https://wbdear.com/upload/2021/09/music_1-618b78adcce242dfb1ff2a0baf7d6ac2.png)

![music_2](https://wbdear.com/upload/2021/09/music_2-a2f753cccd3141caa5f1c07dac3c741d.png)

![music_3](https://wbdear.com/upload/2021/09/music_3-f672d0b1fb7b4958959e7b0c59d5122b.png)

![music_4](https://wbdear.com/upload/2021/09/music_4-285a9b6f2f384e199321d35cd04fceeb.png)

![music_5](https://wbdear.com/upload/2021/09/music_5-5576248cf91d4c8d89ab06985e659b4b.png)

![music_6](https://wbdear.com/upload/2021/09/music_6-52206e9f9d6e4f1eb5e56dbe07416538.png)

![music_7](https://wbdear.com/upload/2021/09/music_7-0596cd26296746a0830ad24272191363.png)

![music_8](https://wbdear.com/upload/2021/09/music_8-99d0927f8b0f478b8c3056a8b7f2ead2.jpg)

![music_9](https://wbdear.com/upload/2021/09/music_9-f3681e710d4f4c91924d6e2480aabb7f.jpg)

