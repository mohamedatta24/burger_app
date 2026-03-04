import 'package:burger_app/core/enum/payment_method.dart';
import 'package:burger_app/core/utils/app_colors.dart';
import 'package:burger_app/core/utils/app_images.dart';
import 'package:burger_app/core/widgets/custom_button.dart';
import 'package:burger_app/core/widgets/paymen_button.dart';
import 'package:burger_app/features/auth/presentation/profiledata_cubits/profiledata_cubit.dart';
import 'package:burger_app/features/auth/presentation/views/login_view.dart';
import 'package:burger_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:burger_app/features/profile/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController visaController = TextEditingController();

  PaymentMethod selectedMethod = PaymentMethod.card;

  String? selectedImage;
  String? image;

  Future<void> pickImage() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedImage != null) {
      setState(() {
        selectedImage = pickedImage.path;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<ProfiledataCubit>().getProfileData();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    addressController.dispose();
    visaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfiledataCubit, ProfiledataState>(
      listener: (context, state) {
        if (state is ProfiledataSuccess) {
          nameController.text = state.userEntity.name;
          emailController.text = state.userEntity.email;
          addressController.text = state.userEntity.address ?? "DBA22";
          visaController.text = state.userEntity.visa ?? visaController.text;
          image ??= state.userEntity.image;
        }

        if (state is ProfiledataFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Skeletonizer(
            containersColor: AppColors.backgroundDark,
            enabled: state is ProfiledataLoading,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CustomImage(
                        image: selectedImage ?? image,
                        onTap: pickImage,
                      ),
                      const SizedBox(height: 50),
                      Column(
                        children: [
                          CustomTextFormField(
                            controller: nameController,
                            hintText: "Name",
                            suffixIcon: Icons.person,
                          ),
                          const SizedBox(height: 16),
                          CustomTextFormField(
                            controller: emailController,
                            hintText: "Email",
                            suffixIcon: Icons.email,
                          ),
                          const SizedBox(height: 16),
                          CustomTextFormField(
                            controller: addressController,
                            hintText: "Address",
                            suffixIcon: Icons.delivery_dining,
                          ),
                          const SizedBox(height: 16),

                          if (state is ProfiledataSuccess)
                            state.userEntity.visa == null
                                ? CustomTextFormField(
                                    controller: visaController,
                                    hintText: "visa",
                                    suffixIcon: Icons.money,
                                  )
                                : Column(
                                    children: [
                                      const SizedBox(height: 32),
                                      PaymenButton(
                                        value: PaymentMethod.card,
                                        groupValue: selectedMethod,
                                        image: Assets.imagesVisa,
                                        title: "Debit Card",
                                        subtitle: Text(
                                          visaController.text.toString(),
                                          style: TextStyle(
                                            color: AppColors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onChanged: (value) {
                                          setState(
                                            () => selectedMethod = value!,
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                        ],
                      ),
                    ],
                  ),
                ),

                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: "Edit Profile",
                        onTap: () {
                          context.read<ProfiledataCubit>().updateProfileData(
                            name: nameController.text,
                            email: emailController.text,
                            address: addressController.text,
                            visa: visaController.text,
                            imagePath: selectedImage ?? '',
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: CustomButton(
                        text: "Log out",
                        onTap: () {
                          context.read<ProfiledataCubit>().logout(context);
                        
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }
}
