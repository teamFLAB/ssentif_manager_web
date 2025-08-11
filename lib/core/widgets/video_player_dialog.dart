import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';
import 'package:video_player/video_player.dart';

import '../../gen/assets.gen.dart';

class VideoPlayerDialog extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerDialog({
    super.key,
    required this.videoUrl,
  });

  static Future<void> show(
    BuildContext context, {
    required String videoUrl,
    bool barrierDismissible = true,
  }) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (_) => VideoPlayerDialog(videoUrl: videoUrl),
    );
  }

  @override
  State<VideoPlayerDialog> createState() => _VideoPlayerDialogState();
}

class _VideoPlayerDialogState extends State<VideoPlayerDialog> {
  VideoPlayerController? _controller;
  bool _isPlaying = false;
  bool _exposePlayOrPauseIcon = true;
  final Function(bool exposeController)? exposeControllerListener = null;

  @override
  void initState() {
    super.initState();
    initVideo();
  }

  void initVideo() async {
    final videoController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    await videoController.initialize();

    setState(() {
      _controller = videoController;
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double dialogHeight = screenSize.height;

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      backgroundColor: AppColors.black,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: dialogHeight,
          maxWidth: screenSize.width * 0.9,
        ),
        child: Material(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(12),
            clipBehavior: Clip.antiAlias,
            child: FutureBuilder(
              builder: (context, snapshot) {
                final Size? videoSize = snapshot.data;
                final aspectRatio = videoSize?.aspectRatio ?? 0.1;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      var switched = !_exposePlayOrPauseIcon;
                      _exposePlayOrPauseIcon = switched;
                      if (exposeControllerListener != null) {
                        exposeControllerListener!(switched);
                      }
                    });
                  },
                  child: Container(
                    color: AppColors.black,
                    width: double.infinity,
                    height: dialogHeight,
                    child: Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            width: dialogHeight * aspectRatio,
                            child: AspectRatio(
                                aspectRatio: aspectRatio,
                                child: VideoPlayer(_controller!)),
                          ),
                        ),
                        // Close button (top-right)
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Tooltip(
                            message: '닫기',
                            child: Material(
                              color: Colors.black54,
                              shape: const CircleBorder(),
                              clipBehavior: Clip.antiAlias,
                              child: IconButton(
                                icon: const Icon(Icons.close,
                                    color: Colors.white),
                                onPressed: () =>
                                    Navigator.of(context).maybePop(),
                                tooltip: '닫기',
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Visibility(
                            visible: _exposePlayOrPauseIcon,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 12),
                              child: VideoProgressIndicator(_controller!,
                                  allowScrubbing: true,
                                  colors: const VideoProgressColors(
                                      playedColor: AppColors.primary,
                                      backgroundColor: AppColors.white)),
                            ),
                          ),
                        ),
                        Center(
                          child: Visibility(
                              visible: _exposePlayOrPauseIcon,
                              child: IconButton(
                                icon: Image.asset(_isPlaying
                                    ? Assets.images.icPausePrimary.path
                                    : Assets.images.icPlayPrimary.path),
                                onPressed: () {
                                  setState(() {
                                    var switched = !_exposePlayOrPauseIcon;
                                    _exposePlayOrPauseIcon = switched;
                                    if (exposeControllerListener != null) {
                                      exposeControllerListener!(switched);
                                    }
                                    _isPlaying
                                        ? _controller?.pause()
                                        : _controller?.play();
                                    _isPlaying = !_isPlaying;
                                  });
                                },
                              )),
                        ),
                      ],
                    ),
                  ),
                );
              },
              future: _getVideoDimensions(),
            )),
      ),
    );
  }

  Future<Size?> _getVideoDimensions() async {
    final double width = _controller?.value.size.width ?? 0;
    final double height = _controller?.value.size.height ?? 0;
    return Size(width, height);
  }
}
