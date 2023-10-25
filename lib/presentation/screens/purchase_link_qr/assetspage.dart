import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:qr_talkie/presentation/screens/purchase_link_qr/asset_linked.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/presentation/widgets/custom_textfield.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../utils/bottomsheet_util.dart';
import '../../widgets/appbar_custom.dart';
import '../../widgets/custom_appbar.dart';

class Assetspage extends StatefulWidget {
  const Assetspage({super.key});

  @override
  State<Assetspage> createState() => _AssetspageState();
}

class _AssetspageState extends State<Assetspage> {
  XFile? proPic;

  TextEditingController assetImageCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: AppBarCustom(
          centerTitle: false,
          title: "Assets",
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Asset Details',
            style: CustomFontStyle().common(
              color: black2c,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomTextField(
            hintText: "Asset Name",
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomTextField(
            onTap: () {
              // _pickImage(context, ImageSource.gallery);
              bottomSheet(
                  context: context,
                  content: Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      height: ScreenUtil().screenHeight / 5,
                      width: ScreenUtil().screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                    Icons.close_sharp,
                                    color: grey,
                                  ))),
                          InkWell(
                            onTap: () {
                              _openImagePicker(context, ImageSource.gallery);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.image_outlined,
                                  color: black,
                                  size: 25.sp,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  'Choose Gallery',
                                  style: CustomFontStyle().common(
                                    color: black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            color: greybeb,
                          ),
                          InkWell(
                            onTap: () {
                              _openImagePicker(context, ImageSource.camera);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.camera_alt_outlined,
                                  color: black,
                                  size: 25.sp,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  'Choose Camera',
                                  style: CustomFontStyle().common(
                                    color: black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
            },
            controller: assetImageCtrl,
            suffixIcon: const Icon(Icons.file_copy_outlined),
            hintText: "Asset image",
            readonly: true,
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomButton(
            text: 'Done',
            textColor: white,
            bgColor: primaryColor,
            onPress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Assetspagelinked();
              }));
            },
          ),
        ),
      ]),
    );
  }

  Future<void> _openImagePicker(
      BuildContext context, ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        proPic = pickedImage;
        assetImageCtrl.text = proPic!.name.toString();
        Navigator.pop(context);
      });
    }
  }

  // Future<void> _pickImage(BuildContext context, ImageSource source) async {
  //   final XFile? image = await _picker.pickImage(source: source);
  //
  //   if (image != null) {
  //     CroppedFile? croppedFile = await ImageCropper().cropImage(
  //       sourcePath: image.path,
  //       aspectRatioPresets: [
  //         CropAspectRatioPreset.square,
  //       ],
  //       uiSettings: [
  //         AndroidUiSettings(
  //             toolbarTitle: 'Cropper',
  //             toolbarColor: Colors.black,
  //             toolbarWidgetColor: Colors.white,
  //             initAspectRatio: CropAspectRatioPreset.square,
  //             lockAspectRatio: true),
  //         IOSUiSettings(
  //           title: 'Cropper',
  //         ),
  //         WebUiSettings(
  //           context: context,
  //         ),
  //       ],
  //     );
  //
  //     setState(() {
  //       proPic = XFile(File(croppedFile!.path).path, name: image.name);
  //
  //       assetImageCtrl.text = proPic!.name.toString();
  //     });
  //   }
  // }
}
