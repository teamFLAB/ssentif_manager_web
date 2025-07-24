// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get home_tab {
    return Intl.message(
      'Home',
      name: 'home_tab',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat_tab {
    return Intl.message(
      'Chat',
      name: 'chat_tab',
      desc: '',
      args: [],
    );
  }

  /// `My`
  String get my_tab {
    return Intl.message(
      'My',
      name: 'my_tab',
      desc: '',
      args: [],
    );
  }

  /// `MON`
  String get mon {
    return Intl.message(
      'MON',
      name: 'mon',
      desc: '',
      args: [],
    );
  }

  /// `TUE`
  String get tue {
    return Intl.message(
      'TUE',
      name: 'tue',
      desc: '',
      args: [],
    );
  }

  /// `WED`
  String get wed {
    return Intl.message(
      'WED',
      name: 'wed',
      desc: '',
      args: [],
    );
  }

  /// `THU`
  String get thu {
    return Intl.message(
      'THU',
      name: 'thu',
      desc: '',
      args: [],
    );
  }

  /// `FRI`
  String get fri {
    return Intl.message(
      'FRI',
      name: 'fri',
      desc: '',
      args: [],
    );
  }

  /// `SAT`
  String get sat {
    return Intl.message(
      'SAT',
      name: 'sat',
      desc: '',
      args: [],
    );
  }

  /// `SUN`
  String get sun {
    return Intl.message(
      'SUN',
      name: 'sun',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get signUpStringResources {
    return Intl.message(
      '',
      name: 'signUpStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Trainer`
  String get trainer {
    return Intl.message(
      'Trainer',
      name: 'trainer',
      desc: '',
      args: [],
    );
  }

  /// `Trainee`
  String get trainee {
    return Intl.message(
      'Trainee',
      name: 'trainee',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get create_account {
    return Intl.message(
      'Create account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Email ID`
  String get email_id {
    return Intl.message(
      'Email ID',
      name: 'email_id',
      desc: '',
      args: [],
    );
  }

  /// `Check`
  String get check_repetition {
    return Intl.message(
      'Check',
      name: 'check_repetition',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get check_password {
    return Intl.message(
      'Confirm Password',
      name: 'check_password',
      desc: '',
      args: [],
    );
  }

  /// `Please enter an email in proper format including @.`
  String get is_invalid_email_type {
    return Intl.message(
      'Please enter an email in proper format including @.',
      name: 'is_invalid_email_type',
      desc: '',
      args: [],
    );
  }

  /// `User email already exists.`
  String get unavailable_email {
    return Intl.message(
      'User email already exists.',
      name: 'unavailable_email',
      desc: '',
      args: [],
    );
  }

  /// `Available email ID.`
  String get available_email {
    return Intl.message(
      'Available email ID.',
      name: 'available_email',
      desc: '',
      args: [],
    );
  }

  /// `Please press the check button.`
  String get must_check_repetition {
    return Intl.message(
      'Please press the check button.',
      name: 'must_check_repetition',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain: minimum 10 characters, lower case letter, number, and special character.`
  String get unavailable_password {
    return Intl.message(
      'Password must contain: minimum 10 characters, lower case letter, number, and special character.',
      name: 'unavailable_password',
      desc: '',
      args: [],
    );
  }

  /// `Uppercase`
  String get uppercase {
    return Intl.message(
      'Uppercase',
      name: 'uppercase',
      desc: '',
      args: [],
    );
  }

  /// `Lowercase`
  String get lowercase {
    return Intl.message(
      'Lowercase',
      name: 'lowercase',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get number {
    return Intl.message(
      'Number',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Special character`
  String get special_character {
    return Intl.message(
      'Special character',
      name: 'special_character',
      desc: '',
      args: [],
    );
  }

  /// `at least 10 characters`
  String get longer_than_ten {
    return Intl.message(
      'at least 10 characters',
      name: 'longer_than_ten',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password one more time to check your password.`
  String get mismatch_password_check {
    return Intl.message(
      'Please enter your password one more time to check your password.',
      name: 'mismatch_password_check',
      desc: '',
      args: [],
    );
  }

  /// `Available password.`
  String get available_password {
    return Intl.message(
      'Available password.',
      name: 'available_password',
      desc: '',
      args: [],
    );
  }

  /// `The password matches.`
  String get success_password_check {
    return Intl.message(
      'The password matches.',
      name: 'success_password_check',
      desc: '',
      args: [],
    );
  }

  /// `Enter Personal Information`
  String get register_personal_info {
    return Intl.message(
      'Enter Personal Information',
      name: 'register_personal_info',
      desc: '',
      args: [],
    );
  }

  /// `[required] Terms of Service`
  String get agree_terms_of_service {
    return Intl.message(
      '[required] Terms of Service',
      name: 'agree_terms_of_service',
      desc: '',
      args: [],
    );
  }

  /// `[required] Personal Information Policy`
  String get agree_personal_info_policy {
    return Intl.message(
      '[required] Personal Information Policy',
      name: 'agree_personal_info_policy',
      desc: '',
      args: [],
    );
  }

  /// `[optional] Marketing Information Policy`
  String get agree_marketing_policy {
    return Intl.message(
      '[optional] Marketing Information Policy',
      name: 'agree_marketing_policy',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth`
  String get date_of_birth {
    return Intl.message(
      'Date of birth',
      name: 'date_of_birth',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `M`
  String get male_1char {
    return Intl.message(
      'M',
      name: 'male_1char',
      desc: '',
      args: [],
    );
  }

  /// `W`
  String get female_1char {
    return Intl.message(
      'W',
      name: 'female_1char',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Purpose of exercise`
  String get purpose_of_exercise {
    return Intl.message(
      'Purpose of exercise',
      name: 'purpose_of_exercise',
      desc: '',
      args: [],
    );
  }

  /// `What is the purpose of your exercise?`
  String get select_exercise_purpose {
    return Intl.message(
      'What is the purpose of your exercise?',
      name: 'select_exercise_purpose',
      desc: '',
      args: [],
    );
  }

  /// `Lose Weight`
  String get lose_weight {
    return Intl.message(
      'Lose Weight',
      name: 'lose_weight',
      desc: '',
      args: [],
    );
  }

  /// `Body shape correction`
  String get body_shape_correction {
    return Intl.message(
      'Body shape correction',
      name: 'body_shape_correction',
      desc: '',
      args: [],
    );
  }

  /// `Body profile`
  String get body_profile {
    return Intl.message(
      'Body profile',
      name: 'body_profile',
      desc: '',
      args: [],
    );
  }

  /// `Improve physical strength`
  String get improve_physical_strength {
    return Intl.message(
      'Improve physical strength',
      name: 'improve_physical_strength',
      desc: '',
      args: [],
    );
  }

  /// `Increase muscle mass`
  String get increase_muscle_mass {
    return Intl.message(
      'Increase muscle mass',
      name: 'increase_muscle_mass',
      desc: '',
      args: [],
    );
  }

  /// `Body conditioning`
  String get body_conditioning {
    return Intl.message(
      'Body conditioning',
      name: 'body_conditioning',
      desc: '',
      args: [],
    );
  }

  /// `Bulk up`
  String get bulk_up {
    return Intl.message(
      'Bulk up',
      name: 'bulk_up',
      desc: '',
      args: [],
    );
  }

  /// `Athletic knowledge`
  String get athletic_knowledge {
    return Intl.message(
      'Athletic knowledge',
      name: 'athletic_knowledge',
      desc: '',
      args: [],
    );
  }

  /// `Improve performance`
  String get improve_performance {
    return Intl.message(
      'Improve performance',
      name: 'improve_performance',
      desc: '',
      args: [],
    );
  }

  /// `Prepare the competition`
  String get prepare_the_competition {
    return Intl.message(
      'Prepare the competition',
      name: 'prepare_the_competition',
      desc: '',
      args: [],
    );
  }

  /// `You can choose up to three.`
  String get select_count_max_3 {
    return Intl.message(
      'You can choose up to three.',
      name: 'select_count_max_3',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get loginStringResources {
    return Intl.message(
      '',
      name: 'loginStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Success login`
  String get success_login {
    return Intl.message(
      'Success login',
      name: 'success_login',
      desc: '',
      args: [],
    );
  }

  /// `Failed to login. Please check ID and Password.`
  String get failed_login {
    return Intl.message(
      'Failed to login. Please check ID and Password.',
      name: 'failed_login',
      desc: '',
      args: [],
    );
  }

  /// `Find Email`
  String get find_email {
    return Intl.message(
      'Find Email',
      name: 'find_email',
      desc: '',
      args: [],
    );
  }

  /// `Find Password`
  String get find_password {
    return Intl.message(
      'Find Password',
      name: 'find_password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get go_to_login {
    return Intl.message(
      'Login',
      name: 'go_to_login',
      desc: '',
      args: [],
    );
  }

  /// `Please check your account information.`
  String get check_account_information {
    return Intl.message(
      'Please check your account information.',
      name: 'check_account_information',
      desc: '',
      args: [],
    );
  }

  /// `This app is for trainees only. Coaches, please download and use the SSENTIF-Coach from the store!`
  String get toast_available_client {
    return Intl.message(
      'This app is for trainees only. Coaches, please download and use the SSENTIF-Coach from the store!',
      name: 'toast_available_client',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get calendarStringResources {
    return Intl.message(
      '',
      name: 'calendarStringResources',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get unit_session_count {
    return Intl.message(
      '',
      name: 'unit_session_count',
      desc: '',
      args: [],
    );
  }

  /// `Workout`
  String get category_workout {
    return Intl.message(
      'Workout',
      name: 'category_workout',
      desc: '',
      args: [],
    );
  }

  /// `Lesson`
  String get category_class {
    return Intl.message(
      'Lesson',
      name: 'category_class',
      desc: '',
      args: [],
    );
  }

  /// `Diet`
  String get category_diet {
    return Intl.message(
      'Diet',
      name: 'category_diet',
      desc: '',
      args: [],
    );
  }

  /// `Lesson(Booked)`
  String get category_class_reservation_complete {
    return Intl.message(
      'Lesson(Booked)',
      name: 'category_class_reservation_complete',
      desc: '',
      args: [],
    );
  }

  /// `Lesson(Request)`
  String get category_class_reservation_wait {
    return Intl.message(
      'Lesson(Request)',
      name: 'category_class_reservation_wait',
      desc: '',
      args: [],
    );
  }

  /// `Lesson(Complete)`
  String get category_class_complete {
    return Intl.message(
      'Lesson(Complete)',
      name: 'category_class_complete',
      desc: '',
      args: [],
    );
  }

  /// `Lesson(Complete)`
  String get class_complete {
    return Intl.message(
      'Lesson(Complete)',
      name: 'class_complete',
      desc: '',
      args: [],
    );
  }

  /// `ETC`
  String get etc_schedule {
    return Intl.message(
      'ETC',
      name: 'etc_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Lesson(Booked)`
  String get reservation_complete {
    return Intl.message(
      'Lesson(Booked)',
      name: 'reservation_complete',
      desc: '',
      args: [],
    );
  }

  /// `Workout`
  String get label_name_workout {
    return Intl.message(
      'Workout',
      name: 'label_name_workout',
      desc: '',
      args: [],
    );
  }

  /// `Lesson`
  String get label_name_class {
    return Intl.message(
      'Lesson',
      name: 'label_name_class',
      desc: '',
      args: [],
    );
  }

  /// `Diet`
  String get label_name_diet {
    return Intl.message(
      'Diet',
      name: 'label_name_diet',
      desc: '',
      args: [],
    );
  }

  /// `ETC`
  String get label_name_client_etc {
    return Intl.message(
      'ETC',
      name: 'label_name_client_etc',
      desc: '',
      args: [],
    );
  }

  /// `Please request to be matched with a coach.`
  String get request_matching_to_coach {
    return Intl.message(
      'Please request to be matched with a coach.',
      name: 'request_matching_to_coach',
      desc: '',
      args: [],
    );
  }

  /// `You don't have a valid subscription.`
  String get not_exist_voucher_info {
    return Intl.message(
      'You don\'t have a valid subscription.',
      name: 'not_exist_voucher_info',
      desc: '',
      args: [],
    );
  }

  /// `Request`
  String get reservation_wait {
    return Intl.message(
      'Request',
      name: 'reservation_wait',
      desc: '',
      args: [],
    );
  }

  /// `Lesson(Request)`
  String get reservation_wait_2 {
    return Intl.message(
      'Lesson(Request)',
      name: 'reservation_wait_2',
      desc: '',
      args: [],
    );
  }

  /// `Schedules on the waiting list!`
  String get reservation_wait_title {
    return Intl.message(
      'Schedules on the waiting list!',
      name: 'reservation_wait_title',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Reservation`
  String get cancel_reservation {
    return Intl.message(
      'Cancel Reservation',
      name: 'cancel_reservation',
      desc: '',
      args: [],
    );
  }

  /// `Today's class routine`
  String get today_routine {
    return Intl.message(
      'Today\'s class routine',
      name: 'today_routine',
      desc: '',
      args: [],
    );
  }

  /// `Check Attend`
  String get check_class_attend {
    return Intl.message(
      'Check Attend',
      name: 'check_class_attend',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get myTabStringResources {
    return Intl.message(
      '',
      name: 'myTabStringResources',
      desc: '',
      args: [],
    );
  }

  /// `yrs`
  String get unit_years_old {
    return Intl.message(
      'yrs',
      name: 'unit_years_old',
      desc: '',
      args: [],
    );
  }

  /// `Remain`
  String get remain {
    return Intl.message(
      'Remain',
      name: 'remain',
      desc: '',
      args: [],
    );
  }

  /// `Exercise`
  String get tab_exercise_perform {
    return Intl.message(
      'Exercise',
      name: 'tab_exercise_perform',
      desc: '',
      args: [],
    );
  }

  /// `Body`
  String get tab_body_change {
    return Intl.message(
      'Body',
      name: 'tab_body_change',
      desc: '',
      args: [],
    );
  }

  /// `Diet`
  String get tab_diet {
    return Intl.message(
      'Diet',
      name: 'tab_diet',
      desc: '',
      args: [],
    );
  }

  /// `Lesson`
  String get class_record_tab_name {
    return Intl.message(
      'Lesson',
      name: 'class_record_tab_name',
      desc: '',
      args: [],
    );
  }

  /// `Individual`
  String get workout_tab_name {
    return Intl.message(
      'Individual',
      name: 'workout_tab_name',
      desc: '',
      args: [],
    );
  }

  /// `Fitness goal has not been set yet!`
  String get empty_exercise_purposes {
    return Intl.message(
      'Fitness goal has not been set yet!',
      name: 'empty_exercise_purposes',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get routineStringResources {
    return Intl.message(
      '',
      name: 'routineStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Weight X Reps`
  String get record_type_weight_and_reps_string {
    return Intl.message(
      'Weight X Reps',
      name: 'record_type_weight_and_reps_string',
      desc: '',
      args: [],
    );
  }

  /// `Reps`
  String get record_type_reps_string {
    return Intl.message(
      'Reps',
      name: 'record_type_reps_string',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get record_type_time_string {
    return Intl.message(
      'Time',
      name: 'record_type_time_string',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Bookmark`
  String get favorite_exercise {
    return Intl.message(
      'Bookmark',
      name: 'favorite_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Custom`
  String get custom {
    return Intl.message(
      'Custom',
      name: 'custom',
      desc: '',
      args: [],
    );
  }

  /// `Body Parts`
  String get exercise_part {
    return Intl.message(
      'Body Parts',
      name: 'exercise_part',
      desc: '',
      args: [],
    );
  }

  /// `Chest`
  String get chest {
    return Intl.message(
      'Chest',
      name: 'chest',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Lower Body`
  String get lower_body {
    return Intl.message(
      'Lower Body',
      name: 'lower_body',
      desc: '',
      args: [],
    );
  }

  /// `Shoulder`
  String get shoulder {
    return Intl.message(
      'Shoulder',
      name: 'shoulder',
      desc: '',
      args: [],
    );
  }

  /// `Biceps`
  String get biceps {
    return Intl.message(
      'Biceps',
      name: 'biceps',
      desc: '',
      args: [],
    );
  }

  /// `Triceps`
  String get triceps {
    return Intl.message(
      'Triceps',
      name: 'triceps',
      desc: '',
      args: [],
    );
  }

  /// `Core`
  String get core {
    return Intl.message(
      'Core',
      name: 'core',
      desc: '',
      args: [],
    );
  }

  /// `Fore Arm`
  String get fore_arm {
    return Intl.message(
      'Fore Arm',
      name: 'fore_arm',
      desc: '',
      args: [],
    );
  }

  /// `Aerobic`
  String get aerobic_exercise {
    return Intl.message(
      'Aerobic',
      name: 'aerobic_exercise',
      desc: '',
      args: [],
    );
  }

  /// `ETC`
  String get etc {
    return Intl.message(
      'ETC',
      name: 'etc',
      desc: '',
      args: [],
    );
  }

  /// `Performed exercises by part (Lesson)`
  String get exercise_part_rates_class {
    return Intl.message(
      'Performed exercises by part (Lesson)',
      name: 'exercise_part_rates_class',
      desc: '',
      args: [],
    );
  }

  /// `Performed exercises by part (Personal)`
  String get exercise_part_rates_workout {
    return Intl.message(
      'Performed exercises by part (Personal)',
      name: 'exercise_part_rates_workout',
      desc: '',
      args: [],
    );
  }

  /// `When you record your exercise routine,\nan analysis chart is provided.`
  String get exercise_part_rates_empty {
    return Intl.message(
      'When you record your exercise routine,\nan analysis chart is provided.',
      name: 'exercise_part_rates_empty',
      desc: '',
      args: [],
    );
  }

  /// `List of exercises performed (Lesson)`
  String get list_of_exercise_performed_class {
    return Intl.message(
      'List of exercises performed (Lesson)',
      name: 'list_of_exercise_performed_class',
      desc: '',
      args: [],
    );
  }

  /// `List of exercises performed (Personal)`
  String get list_of_exercise_performed_workout {
    return Intl.message(
      'List of exercises performed (Personal)',
      name: 'list_of_exercise_performed_workout',
      desc: '',
      args: [],
    );
  }

  /// `View entire record (Lesson)`
  String get show_entire_class_record {
    return Intl.message(
      'View entire record (Lesson)',
      name: 'show_entire_class_record',
      desc: '',
      args: [],
    );
  }

  /// `View entire record (Personal)`
  String get show_entire_workout_record {
    return Intl.message(
      'View entire record (Personal)',
      name: 'show_entire_workout_record',
      desc: '',
      args: [],
    );
  }

  /// `You haven't done any exercises yet.`
  String get empty_performed_exercises {
    return Intl.message(
      'You haven\'t done any exercises yet.',
      name: 'empty_performed_exercises',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this file?`
  String get delete_media_file_notice {
    return Intl.message(
      'Are you sure you want to delete this file?',
      name: 'delete_media_file_notice',
      desc: '',
      args: [],
    );
  }

  /// `Recent Body Compostion`
  String get recent_body_composition_record {
    return Intl.message(
      'Recent Body Compostion',
      name: 'recent_body_composition_record',
      desc: '',
      args: [],
    );
  }

  /// `History >`
  String get body_composition_all {
    return Intl.message(
      'History >',
      name: 'body_composition_all',
      desc: '',
      args: [],
    );
  }

  /// `Recent body shape photos`
  String get recent_body_picture_record {
    return Intl.message(
      'Recent body shape photos',
      name: 'recent_body_picture_record',
      desc: '',
      args: [],
    );
  }

  /// `FRONT`
  String get body_picture_front {
    return Intl.message(
      'FRONT',
      name: 'body_picture_front',
      desc: '',
      args: [],
    );
  }

  /// `SIDE`
  String get body_picture_side {
    return Intl.message(
      'SIDE',
      name: 'body_picture_side',
      desc: '',
      args: [],
    );
  }

  /// `BACK`
  String get body_picture_back {
    return Intl.message(
      'BACK',
      name: 'body_picture_back',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get body_composition_weight {
    return Intl.message(
      'Weight',
      name: 'body_composition_weight',
      desc: '',
      args: [],
    );
  }

  /// `Skeletal Muscle`
  String get body_composition_skeletalMuscle {
    return Intl.message(
      'Skeletal Muscle',
      name: 'body_composition_skeletalMuscle',
      desc: '',
      args: [],
    );
  }

  /// `Fat`
  String get body_composition_fat {
    return Intl.message(
      'Fat',
      name: 'body_composition_fat',
      desc: '',
      args: [],
    );
  }

  /// `Body fat Percentage`
  String get body_composition_fat_percentage {
    return Intl.message(
      'Body fat Percentage',
      name: 'body_composition_fat_percentage',
      desc: '',
      args: [],
    );
  }

  /// `There's no recorded body composition measurement information 📊`
  String get empty_recent_body_composition {
    return Intl.message(
      'There\'s no recorded body composition measurement information 📊',
      name: 'empty_recent_body_composition',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any body shape pictures 📷`
  String get empty_recent_body_picture {
    return Intl.message(
      'You don\'t have any body shape pictures 📷',
      name: 'empty_recent_body_picture',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any recorded diets 🥗`
  String get empty_diet_list {
    return Intl.message(
      'You don\'t have any recorded diets 🥗',
      name: 'empty_diet_list',
      desc: '',
      args: [],
    );
  }

  /// `Request Class Reservation`
  String get request_class_reservation {
    return Intl.message(
      'Request Class Reservation',
      name: 'request_class_reservation',
      desc: '',
      args: [],
    );
  }

  /// `Record Diet`
  String get record_diet {
    return Intl.message(
      'Record Diet',
      name: 'record_diet',
      desc: '',
      args: [],
    );
  }

  /// `Record Individual Workout`
  String get record_individual_workout {
    return Intl.message(
      'Record Individual Workout',
      name: 'record_individual_workout',
      desc: '',
      args: [],
    );
  }

  /// `Record Body Composition`
  String get record_body_composition {
    return Intl.message(
      'Record Body Composition',
      name: 'record_body_composition',
      desc: '',
      args: [],
    );
  }

  /// `Record Body Picture`
  String get record_body_picture {
    return Intl.message(
      'Record Body Picture',
      name: 'record_body_picture',
      desc: '',
      args: [],
    );
  }

  /// `📋 Routine being recorded.`
  String get title_recording_routines {
    return Intl.message(
      '📋 Routine being recorded.',
      name: 'title_recording_routines',
      desc: '',
      args: [],
    );
  }

  /// `There's no temporarily saved routine record!`
  String get empty_temp_saved_routines {
    return Intl.message(
      'There\'s no temporarily saved routine record!',
      name: 'empty_temp_saved_routines',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete the temporarily saved routine record?`
  String get delete_temp_saved_routine_title {
    return Intl.message(
      'Do you want to delete the temporarily saved routine record?',
      name: 'delete_temp_saved_routine_title',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get dailyRecordsStringResources {
    return Intl.message(
      '',
      name: 'dailyRecordsStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Image/Video`
  String get image_or_video {
    return Intl.message(
      'Image/Video',
      name: 'image_or_video',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message(
      'Feedback',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Prescribed`
  String get prescribed_routine {
    return Intl.message(
      'Prescribed',
      name: 'prescribed_routine',
      desc: '',
      args: [],
    );
  }

  /// `Diet Record`
  String get diet_record {
    return Intl.message(
      'Diet Record',
      name: 'diet_record',
      desc: '',
      args: [],
    );
  }

  /// `Routine Memo`
  String get routine_memo {
    return Intl.message(
      'Routine Memo',
      name: 'routine_memo',
      desc: '',
      args: [],
    );
  }

  /// `Prescribe Workout`
  String get prescribe_workout {
    return Intl.message(
      'Prescribe Workout',
      name: 'prescribe_workout',
      desc: '',
      args: [],
    );
  }

  /// `Record Personal Workout`
  String get record_workout {
    return Intl.message(
      'Record Personal Workout',
      name: 'record_workout',
      desc: '',
      args: [],
    );
  }

  /// `Edit Routine`
  String get edit_routine {
    return Intl.message(
      'Edit Routine',
      name: 'edit_routine',
      desc: '',
      args: [],
    );
  }

  /// `Complete Prescribed Routine`
  String get complete_routine_prescribed {
    return Intl.message(
      'Complete Prescribed Routine',
      name: 'complete_routine_prescribed',
      desc: '',
      args: [],
    );
  }

  /// `There is no recorded lesson 📋`
  String get empty_class_record {
    return Intl.message(
      'There is no recorded lesson 📋',
      name: 'empty_class_record',
      desc: '',
      args: [],
    );
  }

  /// `There is no diet records uploaded 🥗`
  String get empty_diet_record {
    return Intl.message(
      'There is no diet records uploaded 🥗',
      name: 'empty_diet_record',
      desc: '',
      args: [],
    );
  }

  /// `✅ The class reservation is complete.\nPlease ask your coach to mark the class as completed or to record the class details!`
  String get reservation_complete_schedule_notice {
    return Intl.message(
      '✅ The class reservation is complete.\nPlease ask your coach to mark the class as completed or to record the class details!',
      name: 'reservation_complete_schedule_notice',
      desc: '',
      args: [],
    );
  }

  /// `No classes have been recorded yet. Please ask your coach to record the class!`
  String get empty_class_record_notice {
    return Intl.message(
      'No classes have been recorded yet. Please ask your coach to record the class!',
      name: 'empty_class_record_notice',
      desc: '',
      args: [],
    );
  }

  /// `Please ask your coach to record the class!`
  String get toast_empty_class_record {
    return Intl.message(
      'Please ask your coach to record the class!',
      name: 'toast_empty_class_record',
      desc: '',
      args: [],
    );
  }

  /// `Record Diets`
  String get do_record_diet {
    return Intl.message(
      'Record Diets',
      name: 'do_record_diet',
      desc: '',
      args: [],
    );
  }

  /// `Record Diets 〉`
  String get do_record_diet2 {
    return Intl.message(
      'Record Diets 〉',
      name: 'do_record_diet2',
      desc: '',
      args: [],
    );
  }

  /// `Request Class Reservation`
  String get do_request_class_reservation {
    return Intl.message(
      'Request Class Reservation',
      name: 'do_request_class_reservation',
      desc: '',
      args: [],
    );
  }

  /// `Lesson Info`
  String get lesson_info {
    return Intl.message(
      'Lesson Info',
      name: 'lesson_info',
      desc: '',
      args: [],
    );
  }

  /// `Count Of Exercises`
  String get count_exercise {
    return Intl.message(
      'Count Of Exercises',
      name: 'count_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Record workout videos/photos!`
  String get record_exercise_media_file {
    return Intl.message(
      'Record workout videos/photos!',
      name: 'record_exercise_media_file',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get dietStringResources {
    return Intl.message(
      '',
      name: 'dietStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Breakfast`
  String get breakfast {
    return Intl.message(
      'Breakfast',
      name: 'breakfast',
      desc: '',
      args: [],
    );
  }

  /// `Lunch`
  String get lunch {
    return Intl.message(
      'Lunch',
      name: 'lunch',
      desc: '',
      args: [],
    );
  }

  /// `Dinner`
  String get dinner {
    return Intl.message(
      'Dinner',
      name: 'dinner',
      desc: '',
      args: [],
    );
  }

  /// `Snack`
  String get snack {
    return Intl.message(
      'Snack',
      name: 'snack',
      desc: '',
      args: [],
    );
  }

  /// `MidnightSnack`
  String get midnight_snack {
    return Intl.message(
      'MidnightSnack',
      name: 'midnight_snack',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get normal {
    return Intl.message(
      'General',
      name: 'normal',
      desc: '',
      args: [],
    );
  }

  /// `Cheating`
  String get cheat {
    return Intl.message(
      'Cheating',
      name: 'cheat',
      desc: '',
      args: [],
    );
  }

  /// `DietMeal`
  String get diet {
    return Intl.message(
      'DietMeal',
      name: 'diet',
      desc: '',
      args: [],
    );
  }

  /// `Instant`
  String get instant {
    return Intl.message(
      'Instant',
      name: 'instant',
      desc: '',
      args: [],
    );
  }

  /// `Detailed Diet Info`
  String get diet_detail {
    return Intl.message(
      'Detailed Diet Info',
      name: 'diet_detail',
      desc: '',
      args: [],
    );
  }

  /// `carbohydrate`
  String get carbohydrate {
    return Intl.message(
      'carbohydrate',
      name: 'carbohydrate',
      desc: '',
      args: [],
    );
  }

  /// `protein`
  String get protein {
    return Intl.message(
      'protein',
      name: 'protein',
      desc: '',
      args: [],
    );
  }

  /// `fat`
  String get fat {
    return Intl.message(
      'fat',
      name: 'fat',
      desc: '',
      args: [],
    );
  }

  /// `sodium`
  String get sodium {
    return Intl.message(
      'sodium',
      name: 'sodium',
      desc: '',
      args: [],
    );
  }

  /// `fiber`
  String get fiber {
    return Intl.message(
      'fiber',
      name: 'fiber',
      desc: '',
      args: [],
    );
  }

  /// `caffeine`
  String get caffeine {
    return Intl.message(
      'caffeine',
      name: 'caffeine',
      desc: '',
      args: [],
    );
  }

  /// `Member's note`
  String get client_memo {
    return Intl.message(
      'Member\'s note',
      name: 'client_memo',
      desc: '',
      args: [],
    );
  }

  /// `Please inform the coach of any special circumstances during your workout.`
  String get client_workout_memo_hint {
    return Intl.message(
      'Please inform the coach of any special circumstances during your workout.',
      name: 'client_workout_memo_hint',
      desc: '',
      args: [],
    );
  }

  /// `💬 Coach's feedback`
  String get feedback_of_trainer {
    return Intl.message(
      '💬 Coach\'s feedback',
      name: 'feedback_of_trainer',
      desc: '',
      args: [],
    );
  }

  /// `The coach's feedback hasn't been written yet!`
  String get not_exist_feedback_of_trainer {
    return Intl.message(
      'The coach\'s feedback hasn\'t been written yet!',
      name: 'not_exist_feedback_of_trainer',
      desc: '',
      args: [],
    );
  }

  /// `Please eat more!`
  String get eat_more {
    return Intl.message(
      'Please eat more!',
      name: 'eat_more',
      desc: '',
      args: [],
    );
  }

  /// `Please reduce your these!`
  String get eat_less {
    return Intl.message(
      'Please reduce your these!',
      name: 'eat_less',
      desc: '',
      args: [],
    );
  }

  /// `Total feedback stamp`
  String get total_feedback_tag {
    return Intl.message(
      'Total feedback stamp',
      name: 'total_feedback_tag',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get recordRoutineStringResources {
    return Intl.message(
      '',
      name: 'recordRoutineStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Member`
  String get client {
    return Intl.message(
      'Member',
      name: 'client',
      desc: '',
      args: [],
    );
  }

  /// `Individual Exercise`
  String get record_individual_exercise {
    return Intl.message(
      'Individual Exercise',
      name: 'record_individual_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Routine Description`
  String get routine_description {
    return Intl.message(
      'Routine Description',
      name: 'routine_description',
      desc: '',
      args: [],
    );
  }

  /// `Please write a description of the routine!`
  String get routine_description_placeholder {
    return Intl.message(
      'Please write a description of the routine!',
      name: 'routine_description_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Configuration`
  String get routine_configuration {
    return Intl.message(
      'Configuration',
      name: 'routine_configuration',
      desc: '',
      args: [],
    );
  }

  /// `Bring Routine`
  String get bring_routine {
    return Intl.message(
      'Bring Routine',
      name: 'bring_routine',
      desc: '',
      args: [],
    );
  }

  /// `Change Order`
  String get change_order {
    return Intl.message(
      'Change Order',
      name: 'change_order',
      desc: '',
      args: [],
    );
  }

  /// `Add Exercises`
  String get add_exercise {
    return Intl.message(
      'Add Exercises',
      name: 'add_exercise',
      desc: '',
      args: [],
    );
  }

  /// `reps`
  String get reps_format {
    return Intl.message(
      'reps',
      name: 'reps_format',
      desc: '',
      args: [],
    );
  }

  /// `Exercise Record`
  String get exercise_record {
    return Intl.message(
      'Exercise Record',
      name: 'exercise_record',
      desc: '',
      args: [],
    );
  }

  /// `📋 Exercise tips from the coach`
  String get tip_for_exercise {
    return Intl.message(
      '📋 Exercise tips from the coach',
      name: 'tip_for_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Exercise photos and videos`
  String get exercise_photos_and_videos {
    return Intl.message(
      'Exercise photos and videos',
      name: 'exercise_photos_and_videos',
      desc: '',
      args: [],
    );
  }

  /// `Memo of the exercise`
  String get exercise_memo {
    return Intl.message(
      'Memo of the exercise',
      name: 'exercise_memo',
      desc: '',
      args: [],
    );
  }

  /// `Coach's Memo`
  String get coach_memo {
    return Intl.message(
      'Coach\'s Memo',
      name: 'coach_memo',
      desc: '',
      args: [],
    );
  }

  /// `There are no workout notes written.`
  String get exercise_memo_hint {
    return Intl.message(
      'There are no workout notes written.',
      name: 'exercise_memo_hint',
      desc: '',
      args: [],
    );
  }

  /// `Record`
  String get record {
    return Intl.message(
      'Record',
      name: 'record',
      desc: '',
      args: [],
    );
  }

  /// `Previous Record`
  String get previous_exercise_record {
    return Intl.message(
      'Previous Record',
      name: 'previous_exercise_record',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `+ Add Set`
  String get add_set {
    return Intl.message(
      '+ Add Set',
      name: 'add_set',
      desc: '',
      args: [],
    );
  }

  /// `m`
  String get minutes_format {
    return Intl.message(
      'm',
      name: 'minutes_format',
      desc: '',
      args: [],
    );
  }

  /// `s`
  String get seconds_format {
    return Intl.message(
      's',
      name: 'seconds_format',
      desc: '',
      args: [],
    );
  }

  /// `Class Record`
  String get class_record {
    return Intl.message(
      'Class Record',
      name: 'class_record',
      desc: '',
      args: [],
    );
  }

  /// `Individual`
  String get individual_record {
    return Intl.message(
      'Individual',
      name: 'individual_record',
      desc: '',
      args: [],
    );
  }

  /// `Copy & Paste`
  String get paste_record {
    return Intl.message(
      'Copy & Paste',
      name: 'paste_record',
      desc: '',
      args: [],
    );
  }

  /// `There is no record.`
  String get no_record {
    return Intl.message(
      'There is no record.',
      name: 'no_record',
      desc: '',
      args: [],
    );
  }

  /// `Prev Exercise`
  String get prev_exercise {
    return Intl.message(
      'Prev Exercise',
      name: 'prev_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Next Exercise`
  String get next_exercise {
    return Intl.message(
      'Next Exercise',
      name: 'next_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get finish_routine_record {
    return Intl.message(
      'Finish',
      name: 'finish_routine_record',
      desc: '',
      args: [],
    );
  }

  /// `Share This Routine`
  String get share_class_routine {
    return Intl.message(
      'Share This Routine',
      name: 'share_class_routine',
      desc: '',
      args: [],
    );
  }

  /// `Completed sharing routine.`
  String get success_share_class_routine {
    return Intl.message(
      'Completed sharing routine.',
      name: 'success_share_class_routine',
      desc: '',
      args: [],
    );
  }

  /// `Failed to shared this routine.`
  String get failure_share_class_routine {
    return Intl.message(
      'Failed to shared this routine.',
      name: 'failure_share_class_routine',
      desc: '',
      args: [],
    );
  }

  /// `Completed modifying routine.`
  String get success_modify_class_routine {
    return Intl.message(
      'Completed modifying routine.',
      name: 'success_modify_class_routine',
      desc: '',
      args: [],
    );
  }

  /// `Failed to modify this routine.`
  String get failure_modify_class_routine {
    return Intl.message(
      'Failed to modify this routine.',
      name: 'failure_modify_class_routine',
      desc: '',
      args: [],
    );
  }

  /// `Completed recording personal workout routine.`
  String get success_record_workout {
    return Intl.message(
      'Completed recording personal workout routine.',
      name: 'success_record_workout',
      desc: '',
      args: [],
    );
  }

  /// `Failed to record personal workout routine.`
  String get failure_record_workout {
    return Intl.message(
      'Failed to record personal workout routine.',
      name: 'failure_record_workout',
      desc: '',
      args: [],
    );
  }

  /// `Completed modifying personal workout routine.`
  String get success_modify_workout_routine {
    return Intl.message(
      'Completed modifying personal workout routine.',
      name: 'success_modify_workout_routine',
      desc: '',
      args: [],
    );
  }

  /// `Failed to modify personal workout routine.`
  String get failure_modify_workout_routine {
    return Intl.message(
      'Failed to modify personal workout routine.',
      name: 'failure_modify_workout_routine',
      desc: '',
      args: [],
    );
  }

  /// `Completed sending feedback.`
  String get success_feedback_routine {
    return Intl.message(
      'Completed sending feedback.',
      name: 'success_feedback_routine',
      desc: '',
      args: [],
    );
  }

  /// `Failed to send feedback.`
  String get failure_feedback_routine {
    return Intl.message(
      'Failed to send feedback.',
      name: 'failure_feedback_routine',
      desc: '',
      args: [],
    );
  }

  /// `Select Video`
  String get select_video_from_gallery {
    return Intl.message(
      'Select Video',
      name: 'select_video_from_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Select Picture`
  String get select_picture_from_gallery {
    return Intl.message(
      'Select Picture',
      name: 'select_picture_from_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Record Video`
  String get record_video {
    return Intl.message(
      'Record Video',
      name: 'record_video',
      desc: '',
      args: [],
    );
  }

  /// `Take Picture`
  String get take_picture {
    return Intl.message(
      'Take Picture',
      name: 'take_picture',
      desc: '',
      args: [],
    );
  }

  /// `The class record can only be edited by the coach!`
  String get disable_edit_class_routine_toast {
    return Intl.message(
      'The class record can only be edited by the coach!',
      name: 'disable_edit_class_routine_toast',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get selectExerciseStringResources {
    return Intl.message(
      '',
      name: 'selectExerciseStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Add Exercise`
  String get add_exercise_2 {
    return Intl.message(
      'Add Exercise',
      name: 'add_exercise_2',
      desc: '',
      args: [],
    );
  }

  /// `Enter the name of the exercise you are looking for.`
  String get search_exercise_name {
    return Intl.message(
      'Enter the name of the exercise you are looking for.',
      name: 'search_exercise_name',
      desc: '',
      args: [],
    );
  }

  /// `Added it to favorite workout.`
  String get success_register_favorite_exercise {
    return Intl.message(
      'Added it to favorite workout.',
      name: 'success_register_favorite_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Deleted it from favorite workout.`
  String get success_un_register_favorite_exercise {
    return Intl.message(
      'Deleted it from favorite workout.',
      name: 'success_un_register_favorite_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Edit Exercise Order`
  String get reorder_exercises {
    return Intl.message(
      'Edit Exercise Order',
      name: 'reorder_exercises',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `\nAre you sure to delete this item?`
  String get delete_exercise_title {
    return Intl.message(
      '\nAre you sure to delete this item?',
      name: 'delete_exercise_title',
      desc: '',
      args: [],
    );
  }

  /// `* Please note that the exercise history recorded in the routine will also be deleted.`
  String get delete_exercise_subtitle {
    return Intl.message(
      '* Please note that the exercise history recorded in the routine will also be deleted.',
      name: 'delete_exercise_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `There's no registered exercise video`
  String get not_exist_exercise_video {
    return Intl.message(
      'There\'s no registered exercise video',
      name: 'not_exist_exercise_video',
      desc: '',
      args: [],
    );
  }

  /// `Complete Selection`
  String get complete_select {
    return Intl.message(
      'Complete Selection',
      name: 'complete_select',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get prescribeRoutineStringResources {
    return Intl.message(
      '',
      name: 'prescribeRoutineStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Client's Memo`
  String get client_workout_memo {
    return Intl.message(
      'Client\'s Memo',
      name: 'client_workout_memo',
      desc: '',
      args: [],
    );
  }

  /// `Please fill out the notes for today's exercise!`
  String get client_workout_memo_placeholder {
    return Intl.message(
      'Please fill out the notes for today\'s exercise!',
      name: 'client_workout_memo_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Coach's Feedback`
  String get trainer_feedback {
    return Intl.message(
      'Coach\'s Feedback',
      name: 'trainer_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Please write feedback on personal exercise performance!!`
  String get trainer_feedback_placeholder {
    return Intl.message(
      'Please write feedback on personal exercise performance!!',
      name: 'trainer_feedback_placeholder',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get recordBodyCompositionStringResources {
    return Intl.message(
      '',
      name: 'recordBodyCompositionStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Record Date`
  String get record_date {
    return Intl.message(
      'Record Date',
      name: 'record_date',
      desc: '',
      args: [],
    );
  }

  /// `Body Composition`
  String get body_composition {
    return Intl.message(
      'Body Composition',
      name: 'body_composition',
      desc: '',
      args: [],
    );
  }

  /// `Complete record body composition.`
  String get complete_record_body_composition_message {
    return Intl.message(
      'Complete record body composition.',
      name: 'complete_record_body_composition_message',
      desc: '',
      args: [],
    );
  }

  /// `Record of body composition measurement has been deleted.`
  String get complete_deletion {
    return Intl.message(
      'Record of body composition measurement has been deleted.',
      name: 'complete_deletion',
      desc: '',
      args: [],
    );
  }

  /// `You have completed the history modification.`
  String get complete_modify_body_composition_message {
    return Intl.message(
      'You have completed the history modification.',
      name: 'complete_modify_body_composition_message',
      desc: '',
      args: [],
    );
  }

  /// `Failed to perform this request.`
  String get failed_request {
    return Intl.message(
      'Failed to perform this request.',
      name: 'failed_request',
      desc: '',
      args: [],
    );
  }

  /// `Complete Record`
  String get complete_record_body_composition_button {
    return Intl.message(
      'Complete Record',
      name: 'complete_record_body_composition_button',
      desc: '',
      args: [],
    );
  }

  /// `Complete Modify`
  String get complete_modify_body_composition_button {
    return Intl.message(
      'Complete Modify',
      name: 'complete_modify_body_composition_button',
      desc: '',
      args: [],
    );
  }

  /// `Body Composition`
  String get recorded_body_composition {
    return Intl.message(
      'Body Composition',
      name: 'recorded_body_composition',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get bodyPictureStringResources {
    return Intl.message(
      '',
      name: 'bodyPictureStringResources',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get member_body_picture {
    return Intl.message(
      '',
      name: 'member_body_picture',
      desc: '',
      args: [],
    );
  }

  /// `Record Date`
  String get picture_record_date {
    return Intl.message(
      'Record Date',
      name: 'picture_record_date',
      desc: '',
      args: [],
    );
  }

  /// `Direction`
  String get body_direction {
    return Intl.message(
      'Direction',
      name: 'body_direction',
      desc: '',
      args: [],
    );
  }

  /// `Uploading body shape pictures completed.`
  String get success_record_body_pictures {
    return Intl.message(
      'Uploading body shape pictures completed.',
      name: 'success_record_body_pictures',
      desc: '',
      args: [],
    );
  }

  /// `Failed to uploading body shape pictures.`
  String get failed_record_body_pictures {
    return Intl.message(
      'Failed to uploading body shape pictures.',
      name: 'failed_record_body_pictures',
      desc: '',
      args: [],
    );
  }

  /// `Modifying body shape pictures completed.`
  String get success_modify_body_pictures {
    return Intl.message(
      'Modifying body shape pictures completed.',
      name: 'success_modify_body_pictures',
      desc: '',
      args: [],
    );
  }

  /// `Failed to modifying body shape pictures.`
  String get failed_modify_body_pictures {
    return Intl.message(
      'Failed to modifying body shape pictures.',
      name: 'failed_modify_body_pictures',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this picture?`
  String get delete_body_picture_notice {
    return Intl.message(
      'Are you sure you want to delete this picture?',
      name: 'delete_body_picture_notice',
      desc: '',
      args: [],
    );
  }

  /// `The body profile photo could not be deleted. Please try again later.`
  String get failure_delete_body_picture {
    return Intl.message(
      'The body profile photo could not be deleted. Please try again later.',
      name: 'failure_delete_body_picture',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get myPageStringResources {
    return Intl.message(
      '',
      name: 'myPageStringResources',
      desc: '',
      args: [],
    );
  }

  /// `My`
  String get my {
    return Intl.message(
      'My',
      name: 'my',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get my_profile {
    return Intl.message(
      'My Profile',
      name: 'my_profile',
      desc: '',
      args: [],
    );
  }

  /// `Lesson Statistics`
  String get lesson_statistics {
    return Intl.message(
      'Lesson Statistics',
      name: 'lesson_statistics',
      desc: '',
      args: [],
    );
  }

  /// `** If you click on the weekly calendar, you can see the monthly lesson statistics!`
  String get lesson_statistics_notice {
    return Intl.message(
      '** If you click on the weekly calendar, you can see the monthly lesson statistics!',
      name: 'lesson_statistics_notice',
      desc: '',
      args: [],
    );
  }

  /// `Exercises`
  String get my_exercise {
    return Intl.message(
      'Exercises',
      name: 'my_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Exercise Library`
  String get exercise_library {
    return Intl.message(
      'Exercise Library',
      name: 'exercise_library',
      desc: '',
      args: [],
    );
  }

  /// `Compared Previous`
  String get compare_to_previous {
    return Intl.message(
      'Compared Previous',
      name: 'compare_to_previous',
      desc: '',
      args: [],
    );
  }

  /// `Compared First`
  String get compare_to_first {
    return Intl.message(
      'Compared First',
      name: 'compare_to_first',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `There is no recorded body composition measurement information.`
  String get empty_body_composition_records {
    return Intl.message(
      'There is no recorded body composition measurement information.',
      name: 'empty_body_composition_records',
      desc: '',
      args: [],
    );
  }

  /// `** You can modify and delete the history by clicking it.`
  String get edit_body_composition_notice {
    return Intl.message(
      '** You can modify and delete the history by clicking it.',
      name: 'edit_body_composition_notice',
      desc: '',
      args: [],
    );
  }

  /// `Complete Edit`
  String get complete_edit {
    return Intl.message(
      'Complete Edit',
      name: 'complete_edit',
      desc: '',
      args: [],
    );
  }

  /// `Prescribe personal routine`
  String get share_personal_exercise_routine {
    return Intl.message(
      'Prescribe personal routine',
      name: 'share_personal_exercise_routine',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get routineHistoryStringResources {
    return Intl.message(
      '',
      name: 'routineHistoryStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Lesson History`
  String get class_routine_history {
    return Intl.message(
      'Lesson History',
      name: 'class_routine_history',
      desc: '',
      args: [],
    );
  }

  /// `Personal Workout`
  String get workout_routine_history {
    return Intl.message(
      'Personal Workout',
      name: 'workout_routine_history',
      desc: '',
      args: [],
    );
  }

  /// `** You can modify and delete details by clicking routine card!`
  String get notice_routine_history {
    return Intl.message(
      '** You can modify and delete details by clicking routine card!',
      name: 'notice_routine_history',
      desc: '',
      args: [],
    );
  }

  /// `No attached files`
  String get empty_media_file {
    return Intl.message(
      'No attached files',
      name: 'empty_media_file',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get workout_complete {
    return Intl.message(
      'Complete',
      name: 'workout_complete',
      desc: '',
      args: [],
    );
  }

  /// `Not yet`
  String get have_not_worked_out {
    return Intl.message(
      'Not yet',
      name: 'have_not_worked_out',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get recordDietStringResources {
    return Intl.message(
      '',
      name: 'recordDietStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Upload Picture`
  String get upload_picture {
    return Intl.message(
      'Upload Picture',
      name: 'upload_picture',
      desc: '',
      args: [],
    );
  }

  /// `Consumption Date`
  String get consumption_date {
    return Intl.message(
      'Consumption Date',
      name: 'consumption_date',
      desc: '',
      args: [],
    );
  }

  /// `Consumption Time`
  String get consumption_time {
    return Intl.message(
      'Consumption Time',
      name: 'consumption_time',
      desc: '',
      args: [],
    );
  }

  /// `Type of Consumption Time`
  String get meal_time_type {
    return Intl.message(
      'Type of Consumption Time',
      name: 'meal_time_type',
      desc: '',
      args: [],
    );
  }

  /// `Meal Type`
  String get meal_type {
    return Intl.message(
      'Meal Type',
      name: 'meal_type',
      desc: '',
      args: [],
    );
  }

  /// `Memo`
  String get memo {
    return Intl.message(
      'Memo',
      name: 'memo',
      desc: '',
      args: [],
    );
  }

  /// `YYYY-MM-DD`
  String get date_hint {
    return Intl.message(
      'YYYY-MM-DD',
      name: 'date_hint',
      desc: '',
      args: [],
    );
  }

  /// `HH:MM`
  String get time_hint {
    return Intl.message(
      'HH:MM',
      name: 'time_hint',
      desc: '',
      args: [],
    );
  }

  /// `Upload Diet`
  String get upload_diet {
    return Intl.message(
      'Upload Diet',
      name: 'upload_diet',
      desc: '',
      args: [],
    );
  }

  /// `Modify Diet`
  String get modify_diet_completion {
    return Intl.message(
      'Modify Diet',
      name: 'modify_diet_completion',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete the meal picture?`
  String get delete_diet_image_question {
    return Intl.message(
      'Do you want to delete the meal picture?',
      name: 'delete_diet_image_question',
      desc: '',
      args: [],
    );
  }

  /// `Consumed meal has been successfully uploaded.`
  String get complete_upload_diet {
    return Intl.message(
      'Consumed meal has been successfully uploaded.',
      name: 'complete_upload_diet',
      desc: '',
      args: [],
    );
  }

  /// `Failed to upload the consumed meal.`
  String get failed_upload_diet {
    return Intl.message(
      'Failed to upload the consumed meal.',
      name: 'failed_upload_diet',
      desc: '',
      args: [],
    );
  }

  /// `Consumed meal has been successfully modified.`
  String get complete_modify_diet {
    return Intl.message(
      'Consumed meal has been successfully modified.',
      name: 'complete_modify_diet',
      desc: '',
      args: [],
    );
  }

  /// `Failed to modify the consumed meal.`
  String get failed_modify_diet {
    return Intl.message(
      'Failed to modify the consumed meal.',
      name: 'failed_modify_diet',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get do_delete {
    return Intl.message(
      'Delete',
      name: 'do_delete',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to delete the uploaded meal?`
  String get delete_diet_notice {
    return Intl.message(
      'Would you like to delete the uploaded meal?',
      name: 'delete_diet_notice',
      desc: '',
      args: [],
    );
  }

  /// `Uploaded meal has been successfully deleted.`
  String get complete_delete_diet {
    return Intl.message(
      'Uploaded meal has been successfully deleted.',
      name: 'complete_delete_diet',
      desc: '',
      args: [],
    );
  }

  /// `Failed to delete the consumed meal.`
  String get failed_delete_diet {
    return Intl.message(
      'Failed to delete the consumed meal.',
      name: 'failed_delete_diet',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get voucherListStringResources {
    return Intl.message(
      '',
      name: 'voucherListStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Voucher`
  String get voucher {
    return Intl.message(
      'Voucher',
      name: 'voucher',
      desc: '',
      args: [],
    );
  }

  /// `Class`
  String get class_string {
    return Intl.message(
      'Class',
      name: 'class_string',
      desc: '',
      args: [],
    );
  }

  /// `Total Class Count`
  String get total_class_count {
    return Intl.message(
      'Total Class Count',
      name: 'total_class_count',
      desc: '',
      args: [],
    );
  }

  /// `Number of classes with member`
  String get total_class_count_description {
    return Intl.message(
      'Number of classes with member',
      name: 'total_class_count_description',
      desc: '',
      args: [],
    );
  }

  /// `Period`
  String get total_training_period {
    return Intl.message(
      'Period',
      name: 'total_training_period',
      desc: '',
      args: [],
    );
  }

  /// `How long with member`
  String get total_training_period_description {
    return Intl.message(
      'How long with member',
      name: 'total_training_period_description',
      desc: '',
      args: [],
    );
  }

  /// `Days`
  String get unit_day_count {
    return Intl.message(
      'Days',
      name: 'unit_day_count',
      desc: '',
      args: [],
    );
  }

  /// `Times`
  String get unit_session_count2 {
    return Intl.message(
      'Times',
      name: 'unit_session_count2',
      desc: '',
      args: [],
    );
  }

  /// `In Class`
  String get in_class {
    return Intl.message(
      'In Class',
      name: 'in_class',
      desc: '',
      args: [],
    );
  }

  /// `Expired`
  String get expired {
    return Intl.message(
      'Expired',
      name: 'expired',
      desc: '',
      args: [],
    );
  }

  /// `Waiting`
  String get class_wait {
    return Intl.message(
      'Waiting',
      name: 'class_wait',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total_voucher_count {
    return Intl.message(
      'Total',
      name: 'total_voucher_count',
      desc: '',
      args: [],
    );
  }

  /// `Bookable`
  String get reservation_available {
    return Intl.message(
      'Bookable',
      name: 'reservation_available',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get complete_class_count {
    return Intl.message(
      'Completed',
      name: 'complete_class_count',
      desc: '',
      args: [],
    );
  }

  /// `Uncompleted`
  String get uncompleted_class_count {
    return Intl.message(
      'Uncompleted',
      name: 'uncompleted_class_count',
      desc: '',
      args: [],
    );
  }

  /// `Class History`
  String get voucher_class_history {
    return Intl.message(
      'Class History',
      name: 'voucher_class_history',
      desc: '',
      args: [],
    );
  }

  /// `Class`
  String get unit_session_count3 {
    return Intl.message(
      'Class',
      name: 'unit_session_count3',
      desc: '',
      args: [],
    );
  }

  /// `Deduct`
  String get deduct {
    return Intl.message(
      'Deduct',
      name: 'deduct',
      desc: '',
      args: [],
    );
  }

  /// `There are no deduction records for class passes.`
  String get empty_voucher_deduct_histories {
    return Intl.message(
      'There are no deduction records for class passes.',
      name: 'empty_voucher_deduct_histories',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any issued class vouchers\nPlease ask your coach to issue one.`
  String get empty_voucher_list_notice {
    return Intl.message(
      'You don\'t have any issued class vouchers\nPlease ask your coach to issue one.',
      name: 'empty_voucher_list_notice',
      desc: '',
      args: [],
    );
  }

  /// `Modify`
  String get modify {
    return Intl.message(
      'Modify',
      name: 'modify',
      desc: '',
      args: [],
    );
  }

  /// `This is expired voucher.`
  String get expired_voucher {
    return Intl.message(
      'This is expired voucher.',
      name: 'expired_voucher',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get chatStringResources {
    return Intl.message(
      '',
      name: 'chatStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `There are no messages exchanged.`
  String get start_first_chat {
    return Intl.message(
      'There are no messages exchanged.',
      name: 'start_first_chat',
      desc: '',
      args: [],
    );
  }

  /// `sent you a picture.`
  String get suffix_receive_image {
    return Intl.message(
      'sent you a picture.',
      name: 'suffix_receive_image',
      desc: '',
      args: [],
    );
  }

  /// `sent you a video.`
  String get suffix_receive_video {
    return Intl.message(
      'sent you a video.',
      name: 'suffix_receive_video',
      desc: '',
      args: [],
    );
  }

  /// `You sent a picture.`
  String get suffix_sent_image {
    return Intl.message(
      'You sent a picture.',
      name: 'suffix_sent_image',
      desc: '',
      args: [],
    );
  }

  /// `You sent a video.`
  String get suffix_sent_video {
    return Intl.message(
      'You sent a video.',
      name: 'suffix_sent_video',
      desc: '',
      args: [],
    );
  }

  /// `Picture`
  String get picture {
    return Intl.message(
      'Picture',
      name: 'picture',
      desc: '',
      args: [],
    );
  }

  /// `Video`
  String get video {
    return Intl.message(
      'Video',
      name: 'video',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get name_suffix_2 {
    return Intl.message(
      '',
      name: 'name_suffix_2',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this chat room?`
  String get delete_chat_room_questions {
    return Intl.message(
      'Are you sure you want to delete this chat room?',
      name: 'delete_chat_room_questions',
      desc: '',
      args: [],
    );
  }

  /// `Data in deleted chat rooms cannot be recovered.`
  String get delete_chat_room_notice {
    return Intl.message(
      'Data in deleted chat rooms cannot be recovered.',
      name: 'delete_chat_room_notice',
      desc: '',
      args: [],
    );
  }

  /// `Create Chat`
  String get create_chat_room {
    return Intl.message(
      'Create Chat',
      name: 'create_chat_room',
      desc: '',
      args: [],
    );
  }

  /// `Create Chatroom`
  String get do_create_chat_room {
    return Intl.message(
      'Create Chatroom',
      name: 'do_create_chat_room',
      desc: '',
      args: [],
    );
  }

  /// `Turn off notifications`
  String get turn_off_notifications {
    return Intl.message(
      'Turn off notifications',
      name: 'turn_off_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Turn on notifications`
  String get turn_on_notifications {
    return Intl.message(
      'Turn on notifications',
      name: 'turn_on_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Sent you a photo`
  String get send_image_preview_notice {
    return Intl.message(
      'Sent you a photo',
      name: 'send_image_preview_notice',
      desc: '',
      args: [],
    );
  }

  /// `Sent you a video`
  String get send_video_preview_notice {
    return Intl.message(
      'Sent you a video',
      name: 'send_video_preview_notice',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get reservationStringResources {
    return Intl.message(
      '',
      name: 'reservationStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Please select the pass\nfor the class you want to book.`
  String get select_voucher_for_class {
    return Intl.message(
      'Please select the pass\nfor the class you want to book.',
      name: 'select_voucher_for_class',
      desc: '',
      args: [],
    );
  }

  /// `Your matched`
  String get matched {
    return Intl.message(
      'Your matched',
      name: 'matched',
      desc: '',
      args: [],
    );
  }

  /// `Please select a pass`
  String get need_to_select_voucher {
    return Intl.message(
      'Please select a pass',
      name: 'need_to_select_voucher',
      desc: '',
      args: [],
    );
  }

  /// `The selected subscription has 0 available reservations.`
  String get zero_count_voucher {
    return Intl.message(
      'The selected subscription has 0 available reservations.',
      name: 'zero_count_voucher',
      desc: '',
      args: [],
    );
  }

  /// `Date of lesson`
  String get class_date {
    return Intl.message(
      'Date of lesson',
      name: 'class_date',
      desc: '',
      args: [],
    );
  }

  /// `Time of lesson`
  String get class_time {
    return Intl.message(
      'Time of lesson',
      name: 'class_time',
      desc: '',
      args: [],
    );
  }

  /// `Send Request`
  String get complete_class_reservation {
    return Intl.message(
      'Send Request',
      name: 'complete_class_reservation',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable`
  String get impossible_reservation_time_text_1 {
    return Intl.message(
      'Unavailable',
      name: 'impossible_reservation_time_text_1',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable`
  String get impossible_reservation_time_text_2 {
    return Intl.message(
      'Unavailable',
      name: 'impossible_reservation_time_text_2',
      desc: '',
      args: [],
    );
  }

  /// `This time is unavailable for reservation requests.`
  String get impossible_reservation_notice {
    return Intl.message(
      'This time is unavailable for reservation requests.',
      name: 'impossible_reservation_notice',
      desc: '',
      args: [],
    );
  }

  /// `The reservation request has been completed.`
  String get complete_request_reservation {
    return Intl.message(
      'The reservation request has been completed.',
      name: 'complete_request_reservation',
      desc: '',
      args: [],
    );
  }

  /// `The reservation request cannot be completed.`
  String get failed_request_reservation {
    return Intl.message(
      'The reservation request cannot be completed.',
      name: 'failed_request_reservation',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get settingStringResources {
    return Intl.message(
      '',
      name: 'settingStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Set Push Alarm`
  String get set_push_alarm {
    return Intl.message(
      'Set Push Alarm',
      name: 'set_push_alarm',
      desc: '',
      args: [],
    );
  }

  /// `Manage account`
  String get manage_account {
    return Intl.message(
      'Manage account',
      name: 'manage_account',
      desc: '',
      args: [],
    );
  }

  /// `Inquire to CS Center`
  String get ask_question {
    return Intl.message(
      'Inquire to CS Center',
      name: 'ask_question',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Sing Out`
  String get logout {
    return Intl.message(
      'Sing Out',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Member Withdrawal`
  String get member_withdrawal {
    return Intl.message(
      'Member Withdrawal',
      name: 'member_withdrawal',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get new_password {
    return Intl.message(
      'New password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `New password check`
  String get new_password_check {
    return Intl.message(
      'New password check',
      name: 'new_password_check',
      desc: '',
      args: [],
    );
  }

  /// `Complete change password`
  String get complete_change_password {
    return Intl.message(
      'Complete change password',
      name: 'complete_change_password',
      desc: '',
      args: [],
    );
  }

  /// `• Please enter at least 10 characters including all lowercase letters, numbers, and special characters in English!`
  String get password_condition {
    return Intl.message(
      '• Please enter at least 10 characters including all lowercase letters, numbers, and special characters in English!',
      name: 'password_condition',
      desc: '',
      args: [],
    );
  }

  /// `Password change has been completed. Please log in again.`
  String get complete_password_change {
    return Intl.message(
      'Password change has been completed. Please log in again.',
      name: 'complete_password_change',
      desc: '',
      args: [],
    );
  }

  /// `Password change has been failed.`
  String get failed_password_change {
    return Intl.message(
      'Password change has been failed.',
      name: 'failed_password_change',
      desc: '',
      args: [],
    );
  }

  /// `Go to Login`
  String get nav_to_login {
    return Intl.message(
      'Go to Login',
      name: 'nav_to_login',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to sign out?`
  String get logout_notice {
    return Intl.message(
      'Are you sure you want to sign out?',
      name: 'logout_notice',
      desc: '',
      args: [],
    );
  }

  /// `Your session has expired. For your privacy, please log in again.`
  String get request_login_notice {
    return Intl.message(
      'Your session has expired. For your privacy, please log in again.',
      name: 'request_login_notice',
      desc: '',
      args: [],
    );
  }

  /// `When you delete your account\nall information will be removed.`
  String get withdrawal_title {
    return Intl.message(
      'When you delete your account\nall information will be removed.',
      name: 'withdrawal_title',
      desc: '',
      args: [],
    );
  }

  /// `All information, including course passes, class history, and InBody records, will be deleted and cannot be recovered.`
  String get withdrawal_description {
    return Intl.message(
      'All information, including course passes, class history, and InBody records, will be deleted and cannot be recovered.',
      name: 'withdrawal_description',
      desc: '',
      args: [],
    );
  }

  /// `Agree to the account deletion.`
  String get approve_withdrawal {
    return Intl.message(
      'Agree to the account deletion.',
      name: 'approve_withdrawal',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been successfully deleted.`
  String get completion_withdrawal_notice {
    return Intl.message(
      'Your account has been successfully deleted.',
      name: 'completion_withdrawal_notice',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get etcStringResources {
    return Intl.message(
      '',
      name: 'etcStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Search by name or number`
  String get search_name_or_number {
    return Intl.message(
      'Search by name or number',
      name: 'search_name_or_number',
      desc: '',
      args: [],
    );
  }

  /// `Push Message`
  String get setting_push_message {
    return Intl.message(
      'Push Message',
      name: 'setting_push_message',
      desc: '',
      args: [],
    );
  }

  /// `Receive Push Message`
  String get receive_push_message {
    return Intl.message(
      'Receive Push Message',
      name: 'receive_push_message',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Don't show for 3 days`
  String get dont_expose_3_days {
    return Intl.message(
      'Don\'t show for 3 days',
      name: 'dont_expose_3_days',
      desc: '',
      args: [],
    );
  }

  /// `For a smooth experience, please update to the latest version before use.`
  String get update_dialog_title {
    return Intl.message(
      'For a smooth experience, please update to the latest version before use.',
      name: 'update_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `Current App Version`
  String get current_app_version {
    return Intl.message(
      'Current App Version',
      name: 'current_app_version',
      desc: '',
      args: [],
    );
  }

  /// `Latest App Version`
  String get latest_app_version {
    return Intl.message(
      'Latest App Version',
      name: 'latest_app_version',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get go_to_update {
    return Intl.message(
      'Update',
      name: 'go_to_update',
      desc: '',
      args: [],
    );
  }

  /// `Can't open update link.`
  String get cant_open_update_link {
    return Intl.message(
      'Can\'t open update link.',
      name: 'cant_open_update_link',
      desc: '',
      args: [],
    );
  }

  /// `This time slot is not available for booking. Please check your schedule.`
  String get invalid_reservation_time {
    return Intl.message(
      'This time slot is not available for booking. Please check your schedule.',
      name: 'invalid_reservation_time',
      desc: '',
      args: [],
    );
  }

  /// `The start time is later than the end time. Please check again.`
  String get invalid_time_of_schedule {
    return Intl.message(
      'The start time is later than the end time. Please check again.',
      name: 'invalid_time_of_schedule',
      desc: '',
      args: [],
    );
  }

  /// `The body shape photo record already exists on the same date.`
  String get duplicate_dat_noon_body {
    return Intl.message(
      'The body shape photo record already exists on the same date.',
      name: 'duplicate_dat_noon_body',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get exerciseAnalysisStringResources {
    return Intl.message(
      '',
      name: 'exerciseAnalysisStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Volume`
  String get volume {
    return Intl.message(
      'Volume',
      name: 'volume',
      desc: '',
      args: [],
    );
  }

  /// `Max Weight`
  String get maxWeight {
    return Intl.message(
      'Max Weight',
      name: 'maxWeight',
      desc: '',
      args: [],
    );
  }

  /// `1RM`
  String get oneRm {
    return Intl.message(
      '1RM',
      name: 'oneRm',
      desc: '',
      args: [],
    );
  }

  /// `Total Reps`
  String get totalReps {
    return Intl.message(
      'Total Reps',
      name: 'totalReps',
      desc: '',
      args: [],
    );
  }

  /// `Max Reps`
  String get maxReps {
    return Intl.message(
      'Max Reps',
      name: 'maxReps',
      desc: '',
      args: [],
    );
  }

  /// `Total Time`
  String get totalTime {
    return Intl.message(
      'Total Time',
      name: 'totalTime',
      desc: '',
      args: [],
    );
  }

  /// `Max Time`
  String get maxTime {
    return Intl.message(
      'Max Time',
      name: 'maxTime',
      desc: '',
      args: [],
    );
  }

  /// `reps`
  String get reps_unit {
    return Intl.message(
      'reps',
      name: 'reps_unit',
      desc: '',
      args: [],
    );
  }

  /// `kg`
  String get kg {
    return Intl.message(
      'kg',
      name: 'kg',
      desc: '',
      args: [],
    );
  }

  /// `h`
  String get hour_unit {
    return Intl.message(
      'h',
      name: 'hour_unit',
      desc: '',
      args: [],
    );
  }

  /// `m`
  String get minutes_unit {
    return Intl.message(
      'm',
      name: 'minutes_unit',
      desc: '',
      args: [],
    );
  }

  /// `Compared Previous`
  String get compare_to_previous_exercise {
    return Intl.message(
      'Compared Previous',
      name: 'compare_to_previous_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Compared Initial`
  String get compare_to_first_exercise {
    return Intl.message(
      'Compared Initial',
      name: 'compare_to_first_exercise',
      desc: '',
      args: [],
    );
  }

  /// `Best Record`
  String get best_record_exercise {
    return Intl.message(
      'Best Record',
      name: 'best_record_exercise',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get exerciseLibraryStringResources {
    return Intl.message(
      '',
      name: 'exerciseLibraryStringResources',
      desc: '',
      args: [],
    );
  }

  /// `Exercise Name`
  String get exercise_name {
    return Intl.message(
      'Exercise Name',
      name: 'exercise_name',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get exercise_category {
    return Intl.message(
      'Category',
      name: 'exercise_category',
      desc: '',
      args: [],
    );
  }

  /// `Input Type`
  String get exercise_record_type {
    return Intl.message(
      'Input Type',
      name: 'exercise_record_type',
      desc: '',
      args: [],
    );
  }

  /// `Reference video`
  String get exercise_video {
    return Intl.message(
      'Reference video',
      name: 'exercise_video',
      desc: '',
      args: [],
    );
  }

  /// `Exercise Description`
  String get exercise_description {
    return Intl.message(
      'Exercise Description',
      name: 'exercise_description',
      desc: '',
      args: [],
    );
  }

  /// `There is no workout description provided.`
  String get exercise_description_hint {
    return Intl.message(
      'There is no workout description provided.',
      name: 'exercise_description_hint',
      desc: '',
      args: [],
    );
  }

  /// `The file has been downloaded successfully.`
  String get complete_download {
    return Intl.message(
      'The file has been downloaded successfully.',
      name: 'complete_download',
      desc: '',
      args: [],
    );
  }

  /// `UnCompleted Schedule`
  String get unattended_schedule {
    return Intl.message(
      'UnCompleted Schedule',
      name: 'unattended_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Workplace Name`
  String get workplace_name {
    return Intl.message(
      'Workplace Name',
      name: 'workplace_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter the name of workplace.`
  String get hint_workplace_name {
    return Intl.message(
      'Enter the name of workplace.',
      name: 'hint_workplace_name',
      desc: '',
      args: [],
    );
  }

  /// `Workplace Address`
  String get workplace_address {
    return Intl.message(
      'Workplace Address',
      name: 'workplace_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter the address of workplace.`
  String get hint_workplace_address {
    return Intl.message(
      'Enter the address of workplace.',
      name: 'hint_workplace_address',
      desc: '',
      args: [],
    );
  }

  /// `Search Address`
  String get search_address {
    return Intl.message(
      'Search Address',
      name: 'search_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter the detailed address.`
  String get write_workplace_address_detail {
    return Intl.message(
      'Enter the detailed address.',
      name: 'write_workplace_address_detail',
      desc: '',
      args: [],
    );
  }

  /// `Enter Manually`
  String get write_directly {
    return Intl.message(
      'Enter Manually',
      name: 'write_directly',
      desc: '',
      args: [],
    );
  }

  /// `Job Role`
  String get work_position {
    return Intl.message(
      'Job Role',
      name: 'work_position',
      desc: '',
      args: [],
    );
  }

  /// `Representative`
  String get representative {
    return Intl.message(
      'Representative',
      name: 'representative',
      desc: '',
      args: [],
    );
  }

  /// `Manager`
  String get manager {
    return Intl.message(
      'Manager',
      name: 'manager',
      desc: '',
      args: [],
    );
  }

  /// `Employee`
  String get employee {
    return Intl.message(
      'Employee',
      name: 'employee',
      desc: '',
      args: [],
    );
  }

  /// `Freelancer`
  String get freelancer {
    return Intl.message(
      'Freelancer',
      name: 'freelancer',
      desc: '',
      args: [],
    );
  }

  /// `Employee Management`
  String get manage_staff {
    return Intl.message(
      'Employee Management',
      name: 'manage_staff',
      desc: '',
      args: [],
    );
  }

  /// `View each coach’s member management at a glance.`
  String get manage_staff_description {
    return Intl.message(
      'View each coach’s member management at a glance.',
      name: 'manage_staff_description',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ko'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
