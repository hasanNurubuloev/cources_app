import 'package:auto_route/auto_route.dart';
import 'package:cources_app/core/extensions/insert_between.dart';
import 'package:cources_app/core/extensions/validation.dart';
import 'package:cources_app/core/network/entity/state_status.dart';
import 'package:cources_app/feature/add_course/domain/bloc/adding_course_bloc.dart';
import 'package:cources_app/feature/add_course/presentation/widgets/list_colors_selected.dart';
import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart';
import 'package:cources_app/injection/injection.dart';
import 'package:cources_app/widgets/snack_bar/app_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddingCourseScreen extends StatefulWidget {
  const AddingCourseScreen({super.key});

  @override
  State<AddingCourseScreen> createState() => _AddingCourseScreenState();
}

class _AddingCourseScreenState extends State<AddingCourseScreen> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _nameController = TextEditingController();
  late final TextEditingController _descriptionController = TextEditingController();
  late final TextEditingController _priceController = TextEditingController();
  late final TextEditingController _durationController = TextEditingController();

  Color? _color;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _durationController.dispose();
    super.dispose();
  }

  InputDecoration _getBoxDecoration(String label) {
    return InputDecoration(
      labelText: label,
      border: const OutlineInputBorder(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddingCourseBloc>(
      create: (context) => getIt<AddingCourseBloc>(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Добавление курса',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: BlocConsumer<AddingCourseBloc, AddingCourseState>(
              listener: (context, state) {
                state.stateStatus.whenOrNull(success: (_) {
                  AppSnackBar.show(context: context, titleText: 'Курс успешно добавлен!');
                  context.maybePop();
                }, failure: (msg) {
                  AppSnackBar.show(context: context, titleText: msg, error: true);
                });
              },
              builder: (context, state) {
                return Stack(
                  children: [
                    if (state.stateStatus is LoadingStatus)
                      const Positioned.fill(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            autofocus: true,
                            controller: _nameController,
                            textInputAction: TextInputAction.next,
                            decoration: _getBoxDecoration('Введите название курса'),
                            validator: (value) => value.validateNotEmpty('Название не может быть пустым'),
                          ),
                          TextFormField(
                            controller: _descriptionController,
                            textInputAction: TextInputAction.next,
                            decoration: _getBoxDecoration('Введите описание курса'),
                            validator: (value) => value.validateNotEmpty('Описание не может быть пустым'),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            controller: _priceController,
                            textInputAction: TextInputAction.next,
                            decoration: _getBoxDecoration('Введите цену курса'),
                            validator: (value) => value.validateIsNumber('Введите корректную цену'),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            controller: _durationController,
                            decoration: _getBoxDecoration('Введите продолжительность'),
                            validator: (value) => value.validateIsNumber('Введите корректную продолжительность'),
                          ),
                          const SizedBox(height: 16),
                          ListColorsSelected(
                            onSelectColor: (Color color) {
                              _color = color;
                            },
                          ),
                          const SizedBox(height: 16),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: TextButton(
                              onPressed: () {
                                if (_formKey.currentState?.validate() == true && _color != null) {
                                  context.read<AddingCourseBloc>().add(
                                        AddingCourseEvent.addCourse(
                                          CoursesEntity(
                                            title: _nameController.text,
                                            description: _descriptionController.text,
                                            price: int.parse(_priceController.text),
                                            duration: int.parse(_durationController.text),
                                            color: _color!,
                                          ),
                                        ),
                                      );
                                }
                              },
                              child: const Text(
                                'Сохранить',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ].insertBetween(const SizedBox(height: 24)).toList(),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
