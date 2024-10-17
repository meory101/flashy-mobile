// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';
// import 'dart:typed_data';
// import 'dart:ui';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_blurhash/flutter_blurhash.dart';
// import 'package:foodify/core/resource/color_manager.dart';
// import 'package:foodify/core/resource/image_manager.dart';
// import 'package:foodify/core/resource/size_manager.dart';
//
// import '../../resource/constant_manager.dart';
//
// class BlurImageWidget extends StatefulWidget {
//   const BlurImageWidget({
//     super.key,
//     required this.imageUrl,
//     required this.imageAsBase64,
//     this.placeholderUrl,
//     this.fit,
//     this.width,
//     this.height,
//     this.shape,
//     this.borderRadius,
//     required this.blurHash,
//   }) ;
//   final String imageUrl;
//   final String imageAsBase64;
//   final String? placeholderUrl;
//   final BoxFit? fit;
//   final double? width;
//   final double? height;
//   final BoxShape? shape;
//   final BorderRadiusGeometry? borderRadius;
//   final String? blurHash;
//
//   @override
//   State<BlurImageWidget> createState() => _BlurImageWidgetState();
// }
//
// class _BlurImageWidgetState extends State<BlurImageWidget>
//     {
//   late Uint8List base64ImageData;
//   late ImageProvider imageProvider;
//
//
//   @override
//   void initState() {
//     base64ImageData = base64.decode(
//         AppConstantManager.imageLoader(imageAsBase64: widget.imageAsBase64));
//     imageProvider = Image.memory(base64ImageData).image;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return CachedNetworkImage(
//       fadeInDuration: Duration.zero,
//       placeholderFadeInDuration: Duration.zero,
//       fadeOutDuration: Duration.zero,
//       imageUrl: widget.imageUrl,
//       width: widget.width ?? AppWidthManager.w100,
//       height: widget.height,
//       fit: widget.fit ?? BoxFit.cover,
//       errorWidget: (context, url, error) => BlurErrorImageWidget(
//         fit: widget.fit,
//       ),
//       placeholder: (context, url) {
//
//         if ((widget.blurHash ?? "").isEmpty) {
//           return const BlurErrorImageWidget();
//         }
//
//         return BlurHash(
//
//           color: AppColorManager.shimmerBaseColor,
//           hash: widget.blurHash ?? "",
//           imageFit: widget.fit ?? BoxFit.cover,
//         );
//       },
//     );
//   }
// }
//
// class BlurErrorImageWidget extends StatelessWidget {
//   const BlurErrorImageWidget({super.key, this.width, this.height, this.fit});
//
//   final double? width, height;
//   final BoxFit? fit;
//
//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       AppImageManager.placeholder,
//       width: width,
//       height: height,
//       fit: fit ?? BoxFit.cover,
//     );
//   }
// }
//
//
//
//
