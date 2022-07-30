import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Post {
  final String title;
  final String browser;
  final String location;
  final String fileFormat;
  final int duration;
  final String backdropPhotoUrl;
  final String originalLang;
  final String originalTitle;
  final String overview;
  final String photoUrl;
  final String filePath;
  final String fileName;
  final int channels;
  final String resolution;
  final String screenRes;
  final String colorRange;
  final String colorSpace;
  final String colorTransfer;
  final int seekTime;
  final String subtitles;
  final int subtitleSelect;
  final String audio;
  final int audioSelect;
  final String pixFmt;

  Post({
    required this.title,
    required this.browser,
    required this.location,
    required this.fileFormat,
    required this.duration,
    required this.backdropPhotoUrl,
    required this.originalLang,
    required this.originalTitle,
    required this.overview,
    required this.photoUrl,
    required this.filePath,
    required this.fileName,
    required this.channels,
    required this.resolution,
    required this.screenRes,
    required this.colorRange,
    required this.colorSpace,
    required this.colorTransfer,
    required this.seekTime,
    required this.subtitles,
    required this.subtitleSelect,
    required this.audio,
    required this.audioSelect,
    required this.pixFmt
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        title: json['title'] as String,
        browser: json['browser'] as String,
        location: json['location'] as String,
        fileFormat: json['fileformat'] as String,
        duration: json['duration'] as int,
        backdropPhotoUrl: json['backdropPhotoUrl'] as String,
        originalLang: json['originalLang'] as String,
        originalTitle: json['originalTitle'] as String,
        overview: json['overview'] as String,
        photoUrl: json['photoUrl'] as String,
        filePath: json['filePath'] as String,
        fileName: json['fileName'] as String,
        channels: json['channels'] as int,
        resolution: json['resolution'] as String,
        screenRes: json['screenRes'] as String,
        colorRange: json['color_range'] as String,
        colorSpace: json['color_space'] as String,
        colorTransfer: json['color_transfer'] as String,
        seekTime: json['seekTime'] as int,
        subtitles: json['subtitles'] as String,
        subtitleSelect: json['subtitleSelect'] as int,
        audio: json['audio'] as String,
        audioSelect: json['audioSelect'] as int,
        pixFmt: json['pixFmt'] as String
    );
  }
}