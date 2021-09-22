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

![music_1](https://wbdear.com/upload/2021/09/music_1-9b840a2f6db1427880ece7c78dc8a9db.png)

![music_2](https://wbdear.com/upload/2021/09/music_2-075aa2455b91492c8516ba6431db7533.png)

![music_3](https://wbdear.com/upload/2021/09/music_3-2febdf5a50d6457f93fe65e2f57beb6e.png)

![music_4](https://wbdear.com/upload/2021/09/music_4-20c4ba1ea5dd4e9ea3a7d523cd531563.png)

![music_5](https://wbdear.com/upload/2021/09/music_5-5fe04c154a184928aa89b97c84a6a138.png)

![music_6](https://wbdear.com/upload/2021/09/music_6-be4d39ac4a2c425ab49239b56027eced.png)

![music_7](https://wbdear.com/upload/2021/09/music_7-9c08fff51fa64295ba9473657e0cb6c0.png)

![music_8](https://wbdear.com/upload/2021/09/music_8-23dd13b8e6f548e490bed55e8ec0073c.jpg)

![music_9](https://wbdear.com/upload/2021/09/music_9-116b44442c0747db9b1524c275f216d7.jpg)

![music_10](https://wbdear.com/upload/2021/09/music_10-9df526aaec8542cd9dc61fbcf70aafa0.jpg)

