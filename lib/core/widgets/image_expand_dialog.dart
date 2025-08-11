import 'package:flutter/material.dart';
import 'package:ssentif_manager_web/core/themes/app_colors.dart';

class ImageExpandDialog extends StatelessWidget {
  final String imageUrl;

  const ImageExpandDialog({
    super.key,
    required this.imageUrl,
  });

  /// Convenience method to show the dialog
  static Future<void> show(
    BuildContext context, {
    required String imageUrl,
    bool barrierDismissible = true,
  }) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (_) => ImageExpandDialog(imageUrl: imageUrl),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double dialogHeight = screenSize.height;

    return Dialog(
      backgroundColor: AppColors.blackAlpha50,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: dialogHeight,
          // Use generous width while respecting screen
          maxWidth: screenSize.width * 0.9,
        ),
        child: Material(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(12),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              // Image viewer
              Positioned.fill(
                child: InteractiveViewer(
                  minScale: 1.0,
                  maxScale: 4.0,
                  child: Center(
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.contain,
                      // Add gentle background in case of transparency
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.broken_image_outlined, size: 48),
                              SizedBox(height: 12),
                              Text('이미지를 불러올 수 없어요.'),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
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
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () => Navigator.of(context).maybePop(),
                      tooltip: '닫기',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
