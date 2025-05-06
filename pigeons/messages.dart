// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:pigeon/pigeon.dart';

class TextureMessage {
  int? textureId;
}

class LoopingMessage {
  int? textureId;
  bool? isLooping;
}

class VolumeMessage {
  int? textureId;
  double? volume;
}

class PlaybackSpeedMessage {
  int? textureId;
  double? speed;
}

class PositionMessage {
  int? textureId;
  int? position;
}

class CreateMessage {
  String? asset;
  String? uri;
  String? packageName;
  String? formatHint;
  Map<String, String>? httpHeaders;
}

class MixWithOthersMessage {
  bool? mixWithOthers;
}

@HostApi()
abstract class VideoPlayerApi {
  @async
  void initialize();

  @async
  TextureMessage create(CreateMessage msg);

  @async
  void dispose(TextureMessage msg);

  @async
  void setLooping(LoopingMessage msg);

  @async
  void setVolume(VolumeMessage msg);

  @async
  void setPlaybackSpeed(PlaybackSpeedMessage msg);

  @async
  void play(TextureMessage msg);

  @async
  PositionMessage position(TextureMessage msg);

  @async
  void seekTo(PositionMessage msg);

  @async
  void pause(TextureMessage msg);

  @async
  void setMixWithOthers(MixWithOthersMessage msg);
}