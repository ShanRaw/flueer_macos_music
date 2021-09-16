### FLUTTER 实现macos音乐播放器

> 接口感谢 [NeteaseCloudMusicApi](https://github.com/Binaryify/NeteaseCloudMusicApi) 

### 注意事项

由于依赖[dart_vlc](https://github.com/alexmercerind/dart_vlc) 需要安装cmake
```shell script
brew install cmake
```
视频返回的时候报错请查看[dart_vlc Issues](https://github.com/alexmercerind/dart_vlc/pull/149) 修复,作者是手动进行了[修复](https://github.com/alexmercerind/dart_vlc/commit/225cda12cd9feece156a3866127559dceb3d1209)

### 功能

- 歌曲播放  已实现
- 歌单 已实现
- 歌单 详情
- 歌曲和歌单搜索 需要优化路由和TextField问题
- FM 待实现
- 视频列表
- 视频播放 简单实现

### 问题

- 个别音乐无法播放
- 没有登录有的音乐时长会是试听的片段
- TextField macos端异常bug

### 截图

![flutter_macos_music2](https://wbdear.com/upload/2021/09/flutter_macos_music2-44c2386e89ec47d2b473bb7512b719b4.png)

![flutter_macos_music3](https://wbdear.com/upload/2021/09/flutter_macos_music3-04e4d978e7bb46e7b946e6d38df7da3d.png)

![flutter_macos_music4](https://wbdear.com/upload/2021/09/flutter_macos_music4-e3f752590929474dbe9ab58ca26cc225.png)

![flutter_macos_music5](https://wbdear.com/upload/2021/09/flutter_macos_music5-4f4a5615346f4089b1c23938e7277e4d.png)

![flutter_macos_music7](https://wbdear.com/upload/2021/09/flutter_macos_music7-db2557ac071a4f8aa901188f36a9e6ed.png)

![flutter_macos_music6](https://wbdear.com/upload/2021/09/flutter_macos_music6-0d82cb01cd7146f58c6a0ade05d525fc.png)

![image](https://wbdear.com/upload/2021/09/image-a4b0834899244faa95c659cf58d6739e.png)
