
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sui_daga/controllers/ProfileScreenController/profile_state.dart';
import 'package:sui_daga/models/ProfileModel/profile_model.dart';
import 'package:sui_daga/routes/routes_helper.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState());

  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController addressControler = TextEditingController();
  FocusNode nameFocusNode = FocusNode();
  FocusNode numberFocusNode = FocusNode();
  FocusNode addressFocusNode = FocusNode();

  void setProfileScreen(ProfileModel profileModel) {
    emit(state.copyWith(profileModel: profileModel));
    nameController.text = profileModel.name;
    numberController.text = profileModel.number.toString();
    addressControler.text = profileModel.address;
  }

  void setProfilePic(BuildContext context) {
    showDialog(context: context, builder: (context) {
      return CupertinoAlertDialog(
        title: const Text("Choose Image"),
        actions: [
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
              _pickImage(ImageSource.camera);
            },
            child: const Text("Camera", style: TextStyle(color: Colors.black)),
          ),
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
              _pickImage(ImageSource.gallery);
            },
            child: const Text("Gallery", style: TextStyle(color: Colors.black)),
          ),
        ],
      );
    });
  }

  void _pickImage(ImageSource source) async {
    final XFile? pickedFile = await ImagePicker().pickImage(source: source);
    debugPrint("pickedFile: $pickedFile");
     ProfileModel profileModel = state.profileModel!.copyWith(profileImage: pickedFile!.path);

       // emit(state.copyWith(profileModel: profileModel));
  }

}
