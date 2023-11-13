import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';

class AddvideoScreen extends StatefulWidget {
  const AddvideoScreen({super.key});

  @override
  State<AddvideoScreen> createState() => _AddvideoScreenState();
}

class _AddvideoScreenState extends State<AddvideoScreen> {
  late CameraController _cameraController;
  late List<CameraDescription> cameras;
  bool _iscamerainitiolize = false;

  // @override
  // void initState() {
  //   super.initState();
  //   availableCameras().then((List<CameraDescription> cameras) {
  //     this.cameras = cameras;
  //     _cameraController = CameraController(cameras[0], ResolutionPreset.max);
  //     _cameraController.initialize().then((value) {
  //       if (!mounted) {
  //         return;
  //       }
  //       setState(() {});
  //     })
  //       ..catchError((Object e) {
  //         if (e is CameraException) {
  //           switch (e.code) {
  //             case "CameraAccessDenied":
  //               print("Access was Denied");
  //               break;
  //             default:
  //               print(e.description);
  //               break;
  //           }
  //         }
  //       });
  //   });
  // }

  Future<void> initializeCamera() async {
    try {
      cameras = await availableCameras();
      _cameraController = CameraController(cameras[0], ResolutionPreset.max);
      await _cameraController.initialize();
      if (mounted) {
        setState(() {
          _iscamerainitiolize = true;
        });
      }
    } catch (e) {
      if (e is CameraException) {
        switch (e.code) {
          case "CameraAccessDenied":
            print("Access was Denied");
            break;
          default:
            print(e.description);
            break;
        }
      }
    }
  }

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _cameraController = CameraController(cameras[0], ResolutionPreset.max);
  //   _cameraController.initialize().then((_) {
  //     if (!mounted) {
  //       return;
  //     }
  //     setState(() {});
  //   }).catchError((Object e) {
  //     if (e is CameraException) {
  //       switch (e.code) {
  //         case "Cameraaceesdained":
  //           print("Acees was Dained");
  //           break;
  //         default:
  //           print(e.description);
  //           break;
  //       }
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          camerafuntion(),
          SizedBox(
            height: 20,
          ),
          buttonsdata(),
        ],
      ),
    );
  }

  // camerafuntion() {
  //   return Container(
  //     height: MediaQuery.of(context).size.height / 1.3,
  //     width: MediaQuery.of(context).size.width,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(25),
  //     ),
  //     child: SingleChildScrollView(
  //       scrollDirection: Axis.horizontal,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         crossAxisAlignment: CrossAxisAlignment.end,
  //         children: [
  //           TextButton(onPressed: () {}, child: Text("10m")),
  //           TextButton(onPressed: () {}, child: Text("60s")),
  //           TextButton(onPressed: () {}, child: Text("15s")),
  //           TextButton(
  //             onPressed: () {},
  //             child: Text("Photo"),
  //             style: ButtonStyle(),
  //           ),
  //           TextButton(onPressed: () {}, child: Text("Text")),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // camerafuntion() {
  //   return Container(
  //     height: MediaQuery.of(context).size.height / 1.3,
  //     width: MediaQuery.of(context).size.width,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(25),
  //     ),
  //     child: _cameraController == null || !_cameraController.value.isInitialized
  //         ? CameraPreview(_cameraController)
  //         : CircularProgressIndicator(),
  //   );
  // }

  Widget camerafuntion() {
    if (!_iscamerainitiolize || !_cameraController.value.isInitialized) {
      return Container(
      height: MediaQuery.of(context).size.height / 1.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.black
      ),
    );
    }

    return Container(
      height: MediaQuery.of(context).size.height / 1.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: CameraPreview(_cameraController),
    );
  }

  buttonsdata() {
    return Material(
      color: backroundcolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.emoji_emotions,
                    size: 30,
                    color: Colors.yellow,
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                "Efects",
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera,
                size: 50,
              )),
          Column(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.file_open)),
              SizedBox(
                height: 5,
              ),
              Text(
                "Upload",
                style: TextStyle(fontSize: 10),
              )
            ],
          )
        ],
      ),
    );
  }
}
