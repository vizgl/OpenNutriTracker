// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(versionNumber) => "Версия ${versionNumber}";

  static String m1(pctCarbs, pctFats, pctProteins) =>
      "${pctCarbs}% углеводов, ${pctFats}% жиров, ${pctProteins}% белков";

  static String m2(riskValue) => "Риск сопутствующих заболеваний: ${riskValue}";

  static String m3(age) => "${age} лет";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "activityExample": MessageLookupByLibrary.simpleMessage(
      "напр. бег, велосипед, йога ...",
    ),
    "activityLabel": MessageLookupByLibrary.simpleMessage("Активность"),
    "addItemLabel": MessageLookupByLibrary.simpleMessage(
      "Добавить новый элемент:",
    ),
    "addLabel": MessageLookupByLibrary.simpleMessage("Добавить"),
    "additionalInfoLabelCompendium2011": MessageLookupByLibrary.simpleMessage(
      "Информация предоставлена\n \n«Справочником по физической\n активности 2011 года»",
    ),
    "additionalInfoLabelCustom": MessageLookupByLibrary.simpleMessage(
      "Пользовательский элемент приема пищи",
    ),
    "additionalInfoLabelFDC": MessageLookupByLibrary.simpleMessage(
      "Дополнительная информация на\nFoodData Central",
    ),
    "additionalInfoLabelOFF": MessageLookupByLibrary.simpleMessage(
      "Дополнительная информация на\nOpenFoodFacts",
    ),
    "additionalInfoLabelUnknown": MessageLookupByLibrary.simpleMessage(
      "Неизвестный элемент приема пищи",
    ),
    "ageLabel": MessageLookupByLibrary.simpleMessage("Возраст"),
    "allItemsLabel": MessageLookupByLibrary.simpleMessage("Все"),
    "alphaVersionName": MessageLookupByLibrary.simpleMessage("[Альфа]"),
    "appDescription": MessageLookupByLibrary.simpleMessage(
      "OpenNutriTracker — это бесплатный и открытый счетчик калорий и нутриентов, который уважает вашу конфиденциальность.",
    ),
    "appLicenseLabel": MessageLookupByLibrary.simpleMessage("Лицензия GPL-3.0"),
    "appTitle": MessageLookupByLibrary.simpleMessage("OpenNutriTracker"),
    "appVersionName": m0,
    "baseQuantityLabel": MessageLookupByLibrary.simpleMessage(
      "Базовое количество (г/мл)",
    ),
    "betaVersionName": MessageLookupByLibrary.simpleMessage("[Бета]"),
    "bmiInfo": MessageLookupByLibrary.simpleMessage(
      "Индекс массы тела (ИМТ) — это показатель для классификации избыточной массы и ожирения у взрослых. Он определяется как отношение массы тела в килограммах к квадрату роста в метрах (кг/м²).\n\nИМТ не различает жировую и мышечную массу и может вводить в заблуждение для некоторых людей.",
    ),
    "bmiLabel": MessageLookupByLibrary.simpleMessage("ИМТ"),
    "breakfastExample": MessageLookupByLibrary.simpleMessage(
      "напр. хлопья, молоко, кофе ...",
    ),
    "breakfastLabel": MessageLookupByLibrary.simpleMessage("Завтрак"),
    "burnedLabel": MessageLookupByLibrary.simpleMessage("сожжено"),
    "buttonNextLabel": MessageLookupByLibrary.simpleMessage("ДАЛЕЕ"),
    "buttonResetLabel": MessageLookupByLibrary.simpleMessage("Сброс"),
    "buttonSaveLabel": MessageLookupByLibrary.simpleMessage("Сохранить"),
    "buttonStartLabel": MessageLookupByLibrary.simpleMessage("НАЧАТЬ"),
    "buttonYesLabel": MessageLookupByLibrary.simpleMessage("ДА"),
    "calculationsMacronutrientsDistributionLabel":
        MessageLookupByLibrary.simpleMessage("Распределение макросов"),
    "calculationsMacrosDistribution": m1,
    "calculationsRecommendedLabel": MessageLookupByLibrary.simpleMessage(
      "(рекомендуется)",
    ),
    "calculationsTDEEIOM2006Label": MessageLookupByLibrary.simpleMessage(
      "Формула Института медицины",
    ),
    "calculationsTDEELabel": MessageLookupByLibrary.simpleMessage(
      "Формула TDEE",
    ),
    "calculationsTDEEManualLabel": MessageLookupByLibrary.simpleMessage(
      "Вручную (свои цели)",
    ),
    "calculationsTDEEWHO2001Label": MessageLookupByLibrary.simpleMessage(
      "ВОЗ/ФАО/ЮНУ (2001)",
    ),
    "carbohydrateLabel": MessageLookupByLibrary.simpleMessage("углеводы"),
    "carbsLabel": MessageLookupByLibrary.simpleMessage("углеводы"),
    "chooseWeightGoalLabel": MessageLookupByLibrary.simpleMessage(
      "Выберите цель по весу",
    ),
    "cmLabel": MessageLookupByLibrary.simpleMessage("см"),
    "copyDialogTitle": MessageLookupByLibrary.simpleMessage(
      "В какой тип приема пищи вы хотите скопировать?",
    ),
    "copyOrDeleteTimeDialogContent": MessageLookupByLibrary.simpleMessage(
      "С помощью «Копировать на сегодня» вы можете скопировать прием пищи на сегодня. С помощью «Удалить» вы можете удалить прием пищи.",
    ),
    "copyOrDeleteTimeDialogTitle": MessageLookupByLibrary.simpleMessage(
      "Что вы хотите сделать?",
    ),
    "createCustomDialogContent": MessageLookupByLibrary.simpleMessage(
      "Вы хотите создать собственный элемент приема пищи?",
    ),
    "createCustomDialogTitle": MessageLookupByLibrary.simpleMessage(
      "Создать собственный элемент приема пищи?",
    ),
    "dailyKcalAdjustmentLabel": MessageLookupByLibrary.simpleMessage(
      "Ежедневная корректировка ккал:",
    ),
    "dataCollectionLabel": MessageLookupByLibrary.simpleMessage(
      "Поддержать разработку, предоставляя анонимные данные использования",
    ),
    "deleteAllLabel": MessageLookupByLibrary.simpleMessage("Удалить все"),
    "deleteTimeDialogContent": MessageLookupByLibrary.simpleMessage(
      "Вы хотите удалить выбранный элемент?",
    ),
    "deleteTimeDialogPluralContent": MessageLookupByLibrary.simpleMessage(
      "Вы хотите удалить все элементы этого приема пищи?",
    ),
    "deleteTimeDialogPluralTitle": MessageLookupByLibrary.simpleMessage(
      "Удалить элементы?",
    ),
    "deleteTimeDialogTitle": MessageLookupByLibrary.simpleMessage(
      "Удалить элемент?",
    ),
    "dialogCancelLabel": MessageLookupByLibrary.simpleMessage("ОТМЕНА"),
    "dialogCopyLabel": MessageLookupByLibrary.simpleMessage(
      "Копировать на сегодня",
    ),
    "dialogDeleteLabel": MessageLookupByLibrary.simpleMessage("УДАЛИТЬ"),
    "dialogOKLabel": MessageLookupByLibrary.simpleMessage("ОК"),
    "diaryLabel": MessageLookupByLibrary.simpleMessage("Дневник"),
    "dinnerExample": MessageLookupByLibrary.simpleMessage(
      "напр. суп, курица, вино ...",
    ),
    "dinnerLabel": MessageLookupByLibrary.simpleMessage("Ужин"),
    "disclaimerText": MessageLookupByLibrary.simpleMessage(
      "OpenNutriTracker не является медицинским приложением. Все предоставляемые данные не проверяются и должны использоваться с осторожностью. Пожалуйста, ведите здоровый образ жизни и обратитесь к специалисту, если у вас есть какие-либо проблемы. Использование во время болезни, беременности или лактации не рекомендуется.",
    ),
    "editItemDialogTitle": MessageLookupByLibrary.simpleMessage(
      "Редактировать элемент",
    ),
    "editMealLabel": MessageLookupByLibrary.simpleMessage(
      "Редактировать прием пищи",
    ),
    "energyLabel": MessageLookupByLibrary.simpleMessage("энергия"),
    "errorFetchingProductData": MessageLookupByLibrary.simpleMessage(
      "Ошибка при получении данных о продукте",
    ),
    "errorLoadingActivities": MessageLookupByLibrary.simpleMessage(
      "Ошибка при загрузке активностей",
    ),
    "errorMealSave": MessageLookupByLibrary.simpleMessage(
      "Ошибка при сохранении приема пищи. Вы ввели корректную информацию?",
    ),
    "errorOpeningBrowser": MessageLookupByLibrary.simpleMessage(
      "Ошибка при открытии браузера",
    ),
    "errorOpeningEmail": MessageLookupByLibrary.simpleMessage(
      "Ошибка при открытии почтового приложения",
    ),
    "errorProductNotFound": MessageLookupByLibrary.simpleMessage(
      "Продукт не найден",
    ),
    "exportAction": MessageLookupByLibrary.simpleMessage("Экспорт"),
    "exportImportDescription": MessageLookupByLibrary.simpleMessage(
      "Вы можете экспортировать данные приложения в zip-файл и импортировать их позже. Это полезно, если вы хотите создать резервную копию данных или перенести их на другое устройство.\n\nПриложение не использует облачные сервисы для хранения ваших данных.",
    ),
    "exportImportErrorLabel": MessageLookupByLibrary.simpleMessage(
      "Ошибка экспорта / импорта",
    ),
    "exportImportLabel": MessageLookupByLibrary.simpleMessage(
      "Экспорт / Импорт данных",
    ),
    "exportImportSuccessLabel": MessageLookupByLibrary.simpleMessage(
      "Экспорт / Импорт выполнен успешно",
    ),
    "fatLabel": MessageLookupByLibrary.simpleMessage("жиры"),
    "fiberLabel": MessageLookupByLibrary.simpleMessage("клетчатка"),
    "flOzUnit": MessageLookupByLibrary.simpleMessage("жидк. унц"),
    "ftLabel": MessageLookupByLibrary.simpleMessage("фут"),
    "genderFemaleLabel": MessageLookupByLibrary.simpleMessage("♀ женщина"),
    "genderLabel": MessageLookupByLibrary.simpleMessage("Пол"),
    "genderMaleLabel": MessageLookupByLibrary.simpleMessage("♂ мужчина"),
    "goalGainWeight": MessageLookupByLibrary.simpleMessage("Набрать вес"),
    "goalLabel": MessageLookupByLibrary.simpleMessage("Цель"),
    "goalLoseWeight": MessageLookupByLibrary.simpleMessage("Похудеть"),
    "goalMaintainWeight": MessageLookupByLibrary.simpleMessage(
      "Поддерживать вес",
    ),
    "gramMilliliterUnit": MessageLookupByLibrary.simpleMessage("г/мл"),
    "gramUnit": MessageLookupByLibrary.simpleMessage("г"),
    "heightLabel": MessageLookupByLibrary.simpleMessage("Рост"),
    "homeLabel": MessageLookupByLibrary.simpleMessage("Главная"),
    "importAction": MessageLookupByLibrary.simpleMessage("Импорт"),
    "infoAddedActivityLabel": MessageLookupByLibrary.simpleMessage(
      "Добавлена новая активность",
    ),
    "infoAddedIntakeLabel": MessageLookupByLibrary.simpleMessage(
      "Добавлен новый прием пищи",
    ),
    "itemDeletedSnackbar": MessageLookupByLibrary.simpleMessage(
      "Элемент удален",
    ),
    "itemUpdatedSnackbar": MessageLookupByLibrary.simpleMessage(
      "Элемент обновлен",
    ),
    "kcalLabel": MessageLookupByLibrary.simpleMessage("ккал"),
    "kcalLeftLabel": MessageLookupByLibrary.simpleMessage("ккал осталось"),
    "kgLabel": MessageLookupByLibrary.simpleMessage("кг"),
    "lbsLabel": MessageLookupByLibrary.simpleMessage("фунты"),
    "lunchExample": MessageLookupByLibrary.simpleMessage(
      "напр. пицца, салат, рис ...",
    ),
    "lunchLabel": MessageLookupByLibrary.simpleMessage("Обед"),
    "macroDistributionLabel": MessageLookupByLibrary.simpleMessage(
      "Распределение макронутриентов:",
    ),
    "manualCalorieGoalLabel": MessageLookupByLibrary.simpleMessage(
      "Калорий в день",
    ),
    "manualCarbsGoalLabel": MessageLookupByLibrary.simpleMessage(
      "Цель по углеводам (г)",
    ),
    "manualFatsGoalLabel": MessageLookupByLibrary.simpleMessage(
      "Цель по жирам (г)",
    ),
    "manualProteinsGoalLabel": MessageLookupByLibrary.simpleMessage(
      "Цель по белкам (г)",
    ),
    "manualTargetsDescription": MessageLookupByLibrary.simpleMessage(
      "Задайте собственные цели по калориям и макронутриентам.",
    ),
    "manualTargetsSectionLabel": MessageLookupByLibrary.simpleMessage(
      "Пользовательские цели",
    ),
    "manualTargetsValidationError": MessageLookupByLibrary.simpleMessage(
      "Введите положительные значения для всех целей.",
    ),
    "mealBrandsLabel": MessageLookupByLibrary.simpleMessage("Бренды"),
    "mealCarbsLabel": MessageLookupByLibrary.simpleMessage("углеводов на"),
    "mealFatLabel": MessageLookupByLibrary.simpleMessage("жиров на"),
    "mealKcalLabel": MessageLookupByLibrary.simpleMessage("ккал на"),
    "mealNameLabel": MessageLookupByLibrary.simpleMessage(
      "Название приема пищи",
    ),
    "mealProteinLabel": MessageLookupByLibrary.simpleMessage(
      "белков на 100 г/мл",
    ),
    "mealSizeLabel": MessageLookupByLibrary.simpleMessage(
      "Размер приема пищи (г/мл)",
    ),
    "mealSizeLabelImperial": MessageLookupByLibrary.simpleMessage(
      "Размер приема пищи (унц/жидк. унц)",
    ),
    "mealUnitLabel": MessageLookupByLibrary.simpleMessage(
      "Единица приема пищи",
    ),
    "milliliterUnit": MessageLookupByLibrary.simpleMessage("мл"),
    "missingProductInfo": MessageLookupByLibrary.simpleMessage(
      "У продукта отсутствуют обязательные данные о ккал или макронутриентах",
    ),
    "noActivityRecentlyAddedLabel": MessageLookupByLibrary.simpleMessage(
      "Недавно добавленной активности нет",
    ),
    "noMealsRecentlyAddedLabel": MessageLookupByLibrary.simpleMessage(
      "Недавно добавленных приемов пищи нет",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage("Ничего не найдено"),
    "notAvailableLabel": MessageLookupByLibrary.simpleMessage("Н/Д"),
    "nothingAddedLabel": MessageLookupByLibrary.simpleMessage(
      "Ничего не добавлено",
    ),
    "nutritionInfoLabel": MessageLookupByLibrary.simpleMessage(
      "Пищевая информация",
    ),
    "nutritionalStatusNormalWeight": MessageLookupByLibrary.simpleMessage(
      "Норма",
    ),
    "nutritionalStatusObeseClassI": MessageLookupByLibrary.simpleMessage(
      "Ожирение I степени",
    ),
    "nutritionalStatusObeseClassII": MessageLookupByLibrary.simpleMessage(
      "Ожирение II степени",
    ),
    "nutritionalStatusObeseClassIII": MessageLookupByLibrary.simpleMessage(
      "Ожирение III степени",
    ),
    "nutritionalStatusPreObesity": MessageLookupByLibrary.simpleMessage(
      "Избыточный вес",
    ),
    "nutritionalStatusRiskAverage": MessageLookupByLibrary.simpleMessage(
      "Средний",
    ),
    "nutritionalStatusRiskIncreased": MessageLookupByLibrary.simpleMessage(
      "Повышенный",
    ),
    "nutritionalStatusRiskLabel": m2,
    "nutritionalStatusRiskLow": MessageLookupByLibrary.simpleMessage(
      "Низкий \n(но повышен риск\nдругих клинических проблем)",
    ),
    "nutritionalStatusRiskModerate": MessageLookupByLibrary.simpleMessage(
      "Умеренный",
    ),
    "nutritionalStatusRiskSevere": MessageLookupByLibrary.simpleMessage(
      "Высокий",
    ),
    "nutritionalStatusRiskVerySevere": MessageLookupByLibrary.simpleMessage(
      "Очень высокий",
    ),
    "nutritionalStatusUnderweight": MessageLookupByLibrary.simpleMessage(
      "Недостаточный вес",
    ),
    "offDisclaimer": MessageLookupByLibrary.simpleMessage(
      "Данные, предоставляемые этим приложением, получены из базы данных Open Food Facts. Никакие гарантии не даются относительно точности, полноты или надежности предоставленной информации. Данные предоставляются «как есть», и исходный источник данных (Open Food Facts) не несет ответственности за какой‑либо ущерб, возникший вследствие использования данных.",
    ),
    "onboardingActivityQuestionSubtitle": MessageLookupByLibrary.simpleMessage(
      "Насколько вы активны? (без тренировок)",
    ),
    "onboardingBirthdayHint": MessageLookupByLibrary.simpleMessage(
      "Введите дату",
    ),
    "onboardingBirthdayQuestionSubtitle": MessageLookupByLibrary.simpleMessage(
      "Когда у вас день рождения?",
    ),
    "onboardingEnterBirthdayLabel": MessageLookupByLibrary.simpleMessage(
      "Дата рождения",
    ),
    "onboardingGenderQuestionSubtitle": MessageLookupByLibrary.simpleMessage(
      "Ваш пол?",
    ),
    "onboardingGoalQuestionSubtitle": MessageLookupByLibrary.simpleMessage(
      "Какова ваша текущая цель по весу?",
    ),
    "onboardingHeightExampleHintCm": MessageLookupByLibrary.simpleMessage(
      "напр. 170",
    ),
    "onboardingHeightExampleHintFt": MessageLookupByLibrary.simpleMessage(
      "напр. 5.8",
    ),
    "onboardingHeightQuestionSubtitle": MessageLookupByLibrary.simpleMessage(
      "Какой у вас текущий рост?",
    ),
    "onboardingIntroDescription": MessageLookupByLibrary.simpleMessage(
      "Чтобы начать, приложению нужна информация о вас, чтобы рассчитать вашу дневную норму калорий.\nВся информация о вас хранится безопасно на вашем устройстве.",
    ),
    "onboardingKcalPerDayLabel": MessageLookupByLibrary.simpleMessage(
      "ккал в день",
    ),
    "onboardingOverviewLabel": MessageLookupByLibrary.simpleMessage("Обзор"),
    "onboardingSaveUserError": MessageLookupByLibrary.simpleMessage(
      "Неверный ввод, попробуйте еще раз",
    ),
    "onboardingWeightExampleHintKg": MessageLookupByLibrary.simpleMessage(
      "напр. 60",
    ),
    "onboardingWeightExampleHintLbs": MessageLookupByLibrary.simpleMessage(
      "напр. 132",
    ),
    "onboardingWeightQuestionSubtitle": MessageLookupByLibrary.simpleMessage(
      "Какой у вас текущий вес?",
    ),
    "onboardingWelcomeLabel": MessageLookupByLibrary.simpleMessage(
      "Добро пожаловать в",
    ),
    "onboardingWrongHeightLabel": MessageLookupByLibrary.simpleMessage(
      "Введите корректный рост",
    ),
    "onboardingWrongWeightLabel": MessageLookupByLibrary.simpleMessage(
      "Введите корректный вес",
    ),
    "onboardingYourGoalLabel": MessageLookupByLibrary.simpleMessage(
      "Ваша цель по калориям:",
    ),
    "onboardingYourMacrosGoalLabel": MessageLookupByLibrary.simpleMessage(
      "Ваши цели по макронутриентам:",
    ),
    "ozUnit": MessageLookupByLibrary.simpleMessage("унц"),
    "paAmericanFootballGeneral": MessageLookupByLibrary.simpleMessage("футбол"),
    "paAmericanFootballGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "тач, флаг, общий",
    ),
    "paArcheryGeneral": MessageLookupByLibrary.simpleMessage(
      "стрельба из лука",
    ),
    "paArcheryGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "не охотничья",
    ),
    "paAutoRacing": MessageLookupByLibrary.simpleMessage("автогонки"),
    "paAutoRacingDesc": MessageLookupByLibrary.simpleMessage(
      "болиды с открытыми колесами",
    ),
    "paBackpackingGeneral": MessageLookupByLibrary.simpleMessage(
      "пеший туризм с рюкзаком",
    ),
    "paBackpackingGeneralDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paBadmintonGeneral": MessageLookupByLibrary.simpleMessage("бадминтон"),
    "paBadmintonGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "игровой одиночный и парный, общий",
    ),
    "paBasketballGeneral": MessageLookupByLibrary.simpleMessage("баскетбол"),
    "paBasketballGeneralDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paBicyclingGeneral": MessageLookupByLibrary.simpleMessage(
      "езда на велосипеде",
    ),
    "paBicyclingGeneralDesc": MessageLookupByLibrary.simpleMessage("общая"),
    "paBicyclingMountainGeneral": MessageLookupByLibrary.simpleMessage(
      "горный велосипед",
    ),
    "paBicyclingMountainGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "общая",
    ),
    "paBicyclingStationaryGeneral": MessageLookupByLibrary.simpleMessage(
      "велотренажер",
    ),
    "paBicyclingStationaryGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "общая",
    ),
    "paBilliardsGeneral": MessageLookupByLibrary.simpleMessage("бильярд"),
    "paBilliardsGeneralDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paBowlingGeneral": MessageLookupByLibrary.simpleMessage("боулинг"),
    "paBowlingGeneralDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paBoxingBag": MessageLookupByLibrary.simpleMessage("бокс"),
    "paBoxingBagDesc": MessageLookupByLibrary.simpleMessage("работа по мешку"),
    "paBoxingGeneral": MessageLookupByLibrary.simpleMessage("бокс"),
    "paBoxingGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "в ринге, общий",
    ),
    "paBroomball": MessageLookupByLibrary.simpleMessage("бромбол"),
    "paBroomballDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paCalisthenicsGeneral": MessageLookupByLibrary.simpleMessage(
      "калистеника",
    ),
    "paCalisthenicsGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "легкая или умеренная нагрузка, общая (напр., упражнения для спины)",
    ),
    "paCanoeingGeneral": MessageLookupByLibrary.simpleMessage("каноэ"),
    "paCanoeingGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "гребля для удовольствия, общая",
    ),
    "paCatch": MessageLookupByLibrary.simpleMessage("футбол или бейсбол"),
    "paCatchDesc": MessageLookupByLibrary.simpleMessage("перекидывание мячом"),
    "paCheerleading": MessageLookupByLibrary.simpleMessage("черлидинг"),
    "paCheerleadingDesc": MessageLookupByLibrary.simpleMessage(
      "гимнастические элементы, соревнования",
    ),
    "paChildrenGame": MessageLookupByLibrary.simpleMessage("детские игры"),
    "paChildrenGameDesc": MessageLookupByLibrary.simpleMessage(
      "(напр., классики, вышибалы, игровые площадки, игры с мячом, автоматы), умеренная нагрузка",
    ),
    "paClimbingHillsNoLoadGeneral": MessageLookupByLibrary.simpleMessage(
      "подъем в гору без груза",
    ),
    "paClimbingHillsNoLoadGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "без груза",
    ),
    "paCricket": MessageLookupByLibrary.simpleMessage("крикет"),
    "paCricketDesc": MessageLookupByLibrary.simpleMessage(
      "бэттинг, подача, игра в поле",
    ),
    "paCroquet": MessageLookupByLibrary.simpleMessage("крокет"),
    "paCroquetDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paCurling": MessageLookupByLibrary.simpleMessage("кёрлинг"),
    "paCurlingDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paDancingAerobicGeneral": MessageLookupByLibrary.simpleMessage("аэробика"),
    "paDancingAerobicGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "общая",
    ),
    "paDancingGeneral": MessageLookupByLibrary.simpleMessage("танцы"),
    "paDancingGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "напр. диско, народные, ирландские, линейные танцы, полька, контра, кантри",
    ),
    "paDartsWall": MessageLookupByLibrary.simpleMessage("дартс"),
    "paDartsWallDesc": MessageLookupByLibrary.simpleMessage(
      "настенный или на лужайке",
    ),
    "paDivingGeneral": MessageLookupByLibrary.simpleMessage("дайвинг"),
    "paDivingGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "подводное плавание с аквалангом или трубкой, общий",
    ),
    "paDivingSpringboardPlatform": MessageLookupByLibrary.simpleMessage(
      "прыжки в воду",
    ),
    "paDivingSpringboardPlatformDesc": MessageLookupByLibrary.simpleMessage(
      "с трамплина или вышки",
    ),
    "paFencing": MessageLookupByLibrary.simpleMessage("фехтование"),
    "paFencingDesc": MessageLookupByLibrary.simpleMessage("общее"),
    "paFrisbee": MessageLookupByLibrary.simpleMessage("фрисби"),
    "paFrisbeeDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paGeneralDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paGolfGeneral": MessageLookupByLibrary.simpleMessage("гольф"),
    "paGolfGeneralDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paGymnasticsGeneral": MessageLookupByLibrary.simpleMessage("гимнастика"),
    "paGymnasticsGeneralDesc": MessageLookupByLibrary.simpleMessage("общая"),
    "paHackySack": MessageLookupByLibrary.simpleMessage("хэки-сэк"),
    "paHackySackDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paHandballGeneral": MessageLookupByLibrary.simpleMessage("гандбол"),
    "paHandballGeneralDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paHangGliding": MessageLookupByLibrary.simpleMessage("дельтапланеризм"),
    "paHangGlidingDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paHeadingBicycling": MessageLookupByLibrary.simpleMessage(
      "езда на велосипеде",
    ),
    "paHeadingConditionalExercise": MessageLookupByLibrary.simpleMessage(
      "силовые упражнения",
    ),
    "paHeadingDancing": MessageLookupByLibrary.simpleMessage("танцы"),
    "paHeadingRunning": MessageLookupByLibrary.simpleMessage("бег"),
    "paHeadingSports": MessageLookupByLibrary.simpleMessage("спорт"),
    "paHeadingWalking": MessageLookupByLibrary.simpleMessage("ходьба"),
    "paHeadingWaterActivities": MessageLookupByLibrary.simpleMessage(
      "водные виды активности",
    ),
    "paHeadingWinterActivities": MessageLookupByLibrary.simpleMessage(
      "зимние виды активности",
    ),
    "paHikingCrossCountry": MessageLookupByLibrary.simpleMessage("пеший поход"),
    "paHikingCrossCountryDesc": MessageLookupByLibrary.simpleMessage(
      "по пересеченной местности",
    ),
    "paHockeyField": MessageLookupByLibrary.simpleMessage("хоккей на траве"),
    "paHockeyFieldDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paHorseRidingGeneral": MessageLookupByLibrary.simpleMessage(
      "верховая езда",
    ),
    "paHorseRidingGeneralDesc": MessageLookupByLibrary.simpleMessage("общая"),
    "paIceHockeyGeneral": MessageLookupByLibrary.simpleMessage(
      "хоккей на льду",
    ),
    "paIceHockeyGeneralDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paIceSkatingGeneral": MessageLookupByLibrary.simpleMessage(
      "катание на коньках",
    ),
    "paIceSkatingGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
    "paJaiAlai": MessageLookupByLibrary.simpleMessage("хай-алай"),
    "paJaiAlaiDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paJoggingGeneral": MessageLookupByLibrary.simpleMessage("джоггинг"),
    "paJoggingGeneralDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paJuggling": MessageLookupByLibrary.simpleMessage("жонглирование"),
    "paJugglingDesc": MessageLookupByLibrary.simpleMessage("общее"),
    "paKayakingModerate": MessageLookupByLibrary.simpleMessage("каякинг"),
    "paKayakingModerateDesc": MessageLookupByLibrary.simpleMessage(
      "умеренная нагрузка",
    ),
    "paKickball": MessageLookupByLibrary.simpleMessage("кикбол"),
    "paKickballDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paLacrosse": MessageLookupByLibrary.simpleMessage("лакросс"),
    "paLacrosseDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paLawnBowling": MessageLookupByLibrary.simpleMessage("боулз"),
    "paLawnBowlingDesc": MessageLookupByLibrary.simpleMessage(
      "ботчи, на улице",
    ),
    "paMartialArtsModerate": MessageLookupByLibrary.simpleMessage(
      "боевые искусства",
    ),
    "paMartialArtsModerateDesc": MessageLookupByLibrary.simpleMessage(
      "разные виды, умеренный темп (напр., дзюдо, джиу-джитсу, каратэ, кикбоксинг, тхэквондо, тай-бо, муай-тай)",
    ),
    "paMartialArtsSlower": MessageLookupByLibrary.simpleMessage(
      "боевые искусства",
    ),
    "paMartialArtsSlowerDesc": MessageLookupByLibrary.simpleMessage(
      "разные виды, медленный темп, новички, тренировка",
    ),
    "paMotoCross": MessageLookupByLibrary.simpleMessage("мотокросс"),
    "paMotoCrossDesc": MessageLookupByLibrary.simpleMessage(
      "внедорожные мотоспорт, квадроциклы, общий",
    ),
    "paMountainClimbing": MessageLookupByLibrary.simpleMessage("скалолазание"),
    "paMountainClimbingDesc": MessageLookupByLibrary.simpleMessage(
      "скалы или горы",
    ),
    "paOrienteering": MessageLookupByLibrary.simpleMessage("ориентирование"),
    "paOrienteeringDesc": MessageLookupByLibrary.simpleMessage("общее"),
    "paPaddleBoarding": MessageLookupByLibrary.simpleMessage("паддлбординг"),
    "paPaddleBoardingDesc": MessageLookupByLibrary.simpleMessage("стоя"),
    "paPaddleBoat": MessageLookupByLibrary.simpleMessage("педальная лодка"),
    "paPaddleBoatDesc": MessageLookupByLibrary.simpleMessage("общая"),
    "paPaddleball": MessageLookupByLibrary.simpleMessage("пэддлбол"),
    "paPaddleballDesc": MessageLookupByLibrary.simpleMessage(
      "любительский, общий",
    ),
    "paPoloHorse": MessageLookupByLibrary.simpleMessage("поло"),
    "paPoloHorseDesc": MessageLookupByLibrary.simpleMessage("верхом"),
    "paRacquetball": MessageLookupByLibrary.simpleMessage("ракетбол"),
    "paRacquetballDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paResistanceTraining": MessageLookupByLibrary.simpleMessage(
      "силовая тренировка",
    ),
    "paResistanceTrainingDesc": MessageLookupByLibrary.simpleMessage(
      "подъем тяжестей, свободные веса, тренажеры",
    ),
    "paRodeoSportGeneralModerate": MessageLookupByLibrary.simpleMessage(
      "родео",
    ),
    "paRodeoSportGeneralModerateDesc": MessageLookupByLibrary.simpleMessage(
      "общие, умеренная нагрузка",
    ),
    "paRollerbladingLight": MessageLookupByLibrary.simpleMessage(
      "роллерблейдинг",
    ),
    "paRollerbladingLightDesc": MessageLookupByLibrary.simpleMessage(
      "катание на роликах в линию",
    ),
    "paRopeJumpingGeneral": MessageLookupByLibrary.simpleMessage(
      "прыжки через скакалку",
    ),
    "paRopeJumpingGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "средний темп, 100–120 прыжков/мин, общие, прыжки с двух ног",
    ),
    "paRopeSkippingGeneral": MessageLookupByLibrary.simpleMessage(
      "прыжки через скакалку",
    ),
    "paRopeSkippingGeneralDesc": MessageLookupByLibrary.simpleMessage("общая"),
    "paRugbyCompetitive": MessageLookupByLibrary.simpleMessage("регби"),
    "paRugbyCompetitiveDesc": MessageLookupByLibrary.simpleMessage(
      "юнион, команда, соревнования",
    ),
    "paRugbyNonCompetitive": MessageLookupByLibrary.simpleMessage("регби"),
    "paRugbyNonCompetitiveDesc": MessageLookupByLibrary.simpleMessage(
      "тач, без соревнований",
    ),
    "paRunningGeneral": MessageLookupByLibrary.simpleMessage("бег"),
    "paRunningGeneralDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paSailingGeneral": MessageLookupByLibrary.simpleMessage("парусный спорт"),
    "paSailingGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "парусные лодки и доски, виндсерфинг, буер, общий",
    ),
    "paShuffleboard": MessageLookupByLibrary.simpleMessage("шаффлборд"),
    "paShuffleboardDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paSkateboardingGeneral": MessageLookupByLibrary.simpleMessage(
      "скейтбординг",
    ),
    "paSkateboardingGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "общий, умеренная нагрузка",
    ),
    "paSkatingRoller": MessageLookupByLibrary.simpleMessage(
      "катание на роликах",
    ),
    "paSkatingRollerDesc": MessageLookupByLibrary.simpleMessage("общее"),
    "paSkiingGeneral": MessageLookupByLibrary.simpleMessage("лыжи"),
    "paSkiingGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
    "paSkiingWaterWakeboarding": MessageLookupByLibrary.simpleMessage(
      "водные лыжи",
    ),
    "paSkiingWaterWakeboardingDesc": MessageLookupByLibrary.simpleMessage(
      "водные лыжи или вейкбординг",
    ),
    "paSkydiving": MessageLookupByLibrary.simpleMessage("скайдайвинг"),
    "paSkydivingDesc": MessageLookupByLibrary.simpleMessage(
      "прыжки с парашютом, бейсджампинг, банджи-джампинг",
    ),
    "paSnorkeling": MessageLookupByLibrary.simpleMessage("сноркелинг"),
    "paSnorkelingDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paSnowShovingModerate": MessageLookupByLibrary.simpleMessage(
      "уборка снега",
    ),
    "paSnowShovingModerateDesc": MessageLookupByLibrary.simpleMessage(
      "лопатой, умеренная нагрузка",
    ),
    "paSoccerGeneral": MessageLookupByLibrary.simpleMessage("футбол"),
    "paSoccerGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "любительский, общий",
    ),
    "paSoftballBaseballGeneral": MessageLookupByLibrary.simpleMessage(
      "софтбол / бейсбол",
    ),
    "paSoftballBaseballGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "быстрый или медленный подач, общий",
    ),
    "paSquashGeneral": MessageLookupByLibrary.simpleMessage("сквош"),
    "paSquashGeneralDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paSurfing": MessageLookupByLibrary.simpleMessage("серфинг"),
    "paSurfingDesc": MessageLookupByLibrary.simpleMessage(
      "на теле или доске, общий",
    ),
    "paSwimmingGeneral": MessageLookupByLibrary.simpleMessage("плавание"),
    "paSwimmingGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "на воде, умеренная нагрузка, общее",
    ),
    "paTableTennisGeneral": MessageLookupByLibrary.simpleMessage(
      "настольный теннис",
    ),
    "paTableTennisGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "настольный теннис, пинг-понг",
    ),
    "paTaiChiQiGongGeneral": MessageLookupByLibrary.simpleMessage(
      "тай-чи, цигун",
    ),
    "paTaiChiQiGongGeneralDesc": MessageLookupByLibrary.simpleMessage("общие"),
    "paTennisGeneral": MessageLookupByLibrary.simpleMessage("теннис"),
    "paTennisGeneralDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paTrackField": MessageLookupByLibrary.simpleMessage("легкая атлетика"),
    "paTrackField1Desc": MessageLookupByLibrary.simpleMessage(
      "(напр., толкание ядра, метание диска, молота)",
    ),
    "paTrackField2Desc": MessageLookupByLibrary.simpleMessage(
      "(напр., прыжки в высоту, длину, тройной прыжок, метание копья, прыжки с шестом)",
    ),
    "paTrackField3Desc": MessageLookupByLibrary.simpleMessage(
      "(напр., стипль-чез, барьеры)",
    ),
    "paTrampolineLight": MessageLookupByLibrary.simpleMessage("батут"),
    "paTrampolineLightDesc": MessageLookupByLibrary.simpleMessage(
      "развлекательные прыжки",
    ),
    "paUnicyclingGeneral": MessageLookupByLibrary.simpleMessage(
      "езда на уницикле",
    ),
    "paUnicyclingGeneralDesc": MessageLookupByLibrary.simpleMessage("общая"),
    "paVolleyballGeneral": MessageLookupByLibrary.simpleMessage("волейбол"),
    "paVolleyballGeneralDesc": MessageLookupByLibrary.simpleMessage(
      "неконкурентный, 6–9 игроков, общий",
    ),
    "paWalkingForPleasure": MessageLookupByLibrary.simpleMessage("ходьба"),
    "paWalkingForPleasureDesc": MessageLookupByLibrary.simpleMessage(
      "для удовольствия",
    ),
    "paWalkingTheDog": MessageLookupByLibrary.simpleMessage("выгул собаки"),
    "paWalkingTheDogDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paWallyball": MessageLookupByLibrary.simpleMessage("воллиболл"),
    "paWallyballDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paWaterAerobics": MessageLookupByLibrary.simpleMessage(
      "водные упражнения",
    ),
    "paWaterAerobicsDesc": MessageLookupByLibrary.simpleMessage(
      "водная аэробика, водная калистеника",
    ),
    "paWaterPolo": MessageLookupByLibrary.simpleMessage("водное поло"),
    "paWaterPoloDesc": MessageLookupByLibrary.simpleMessage("общее"),
    "paWaterVolleyball": MessageLookupByLibrary.simpleMessage(
      "водный волейбол",
    ),
    "paWaterVolleyballDesc": MessageLookupByLibrary.simpleMessage("общий"),
    "paWateraerobicsCalisthenics": MessageLookupByLibrary.simpleMessage(
      "водная аэробика",
    ),
    "paWateraerobicsCalisthenicsDesc": MessageLookupByLibrary.simpleMessage(
      "водная аэробика, водная калистеника",
    ),
    "paWrestling": MessageLookupByLibrary.simpleMessage("борьба"),
    "paWrestlingDesc": MessageLookupByLibrary.simpleMessage("общая"),
    "palActiveDescriptionLabel": MessageLookupByLibrary.simpleMessage(
      "В основном стоячая или ходячая работа и активность в свободное время",
    ),
    "palActiveLabel": MessageLookupByLibrary.simpleMessage("Активный"),
    "palLowActiveDescriptionLabel": MessageLookupByLibrary.simpleMessage(
      "напр. сидячая или стоячая работа и легкая активность в свободное время",
    ),
    "palLowLActiveLabel": MessageLookupByLibrary.simpleMessage(
      "Низкая активность",
    ),
    "palSedentaryDescriptionLabel": MessageLookupByLibrary.simpleMessage(
      "напр. офисная работа и в основном сидячая деятельность в свободное время",
    ),
    "palSedentaryLabel": MessageLookupByLibrary.simpleMessage("Сидячий"),
    "palVeryActiveDescriptionLabel": MessageLookupByLibrary.simpleMessage(
      "В основном ходьба, бег или перенос тяжестей на работе и активность в свободное время",
    ),
    "palVeryActiveLabel": MessageLookupByLibrary.simpleMessage(
      "Очень активный",
    ),
    "per100gmlLabel": MessageLookupByLibrary.simpleMessage("На 100 г/мл"),
    "perServingLabel": MessageLookupByLibrary.simpleMessage("На порцию"),
    "privacyPolicyLabel": MessageLookupByLibrary.simpleMessage(
      "Политика конфиденциальности",
    ),
    "profileLabel": MessageLookupByLibrary.simpleMessage("Профиль"),
    "proteinLabel": MessageLookupByLibrary.simpleMessage("белки"),
    "quantityLabel": MessageLookupByLibrary.simpleMessage("Количество"),
    "readLabel": MessageLookupByLibrary.simpleMessage(
      "Я прочитал(а) и принимаю политику конфиденциальности.",
    ),
    "recentlyAddedLabel": MessageLookupByLibrary.simpleMessage("Недавние"),
    "reportErrorDialogText": MessageLookupByLibrary.simpleMessage(
      "Хотите сообщить об ошибке разработчику?",
    ),
    "retryLabel": MessageLookupByLibrary.simpleMessage("Повторить"),
    "saturatedFatLabel": MessageLookupByLibrary.simpleMessage(
      "насыщенные жиры",
    ),
    "scanProductLabel": MessageLookupByLibrary.simpleMessage(
      "Сканировать продукт",
    ),
    "searchDefaultLabel": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, введите поисковый запрос",
    ),
    "searchFoodPage": MessageLookupByLibrary.simpleMessage("Еда"),
    "searchLabel": MessageLookupByLibrary.simpleMessage("Поиск"),
    "searchProductsPage": MessageLookupByLibrary.simpleMessage("Продукты"),
    "searchResultsLabel": MessageLookupByLibrary.simpleMessage(
      "Результаты поиска",
    ),
    "selectGenderDialogLabel": MessageLookupByLibrary.simpleMessage(
      "Выбор пола",
    ),
    "selectHeightDialogLabel": MessageLookupByLibrary.simpleMessage(
      "Выбор роста",
    ),
    "selectPalCategoryLabel": MessageLookupByLibrary.simpleMessage(
      "Выберите уровень активности",
    ),
    "selectWeightDialogLabel": MessageLookupByLibrary.simpleMessage(
      "Выбор веса",
    ),
    "sendAnonymousUserData": MessageLookupByLibrary.simpleMessage(
      "Отправлять анонимные данные использования",
    ),
    "servingLabel": MessageLookupByLibrary.simpleMessage("Порция"),
    "servingSizeLabelImperial": MessageLookupByLibrary.simpleMessage(
      "Размер порции (унц/жидк. унц)",
    ),
    "servingSizeLabelMetric": MessageLookupByLibrary.simpleMessage(
      "Размер порции (г/мл)",
    ),
    "settingAboutLabel": MessageLookupByLibrary.simpleMessage("О приложении"),
    "settingFeedbackLabel": MessageLookupByLibrary.simpleMessage(
      "Обратная связь",
    ),
    "settingsCalculationsLabel": MessageLookupByLibrary.simpleMessage(
      "Расчеты",
    ),
    "settingsDisclaimerLabel": MessageLookupByLibrary.simpleMessage(
      "Отказ от ответственности",
    ),
    "settingsDistanceLabel": MessageLookupByLibrary.simpleMessage("Расстояние"),
    "settingsImperialLabel": MessageLookupByLibrary.simpleMessage(
      "Имперская (фунты, футы, унции)",
    ),
    "settingsLabel": MessageLookupByLibrary.simpleMessage("Настройки"),
    "settingsLicensesLabel": MessageLookupByLibrary.simpleMessage("Лицензии"),
    "settingsMassLabel": MessageLookupByLibrary.simpleMessage("Масса"),
    "settingsMetricLabel": MessageLookupByLibrary.simpleMessage(
      "Метрическая (кг, см, мл)",
    ),
    "settingsPrivacySettings": MessageLookupByLibrary.simpleMessage(
      "Настройки конфиденциальности",
    ),
    "settingsReportErrorLabel": MessageLookupByLibrary.simpleMessage(
      "Сообщить об ошибке",
    ),
    "settingsSourceCodeLabel": MessageLookupByLibrary.simpleMessage(
      "Исходный код",
    ),
    "settingsSystemLabel": MessageLookupByLibrary.simpleMessage("Система"),
    "settingsThemeDarkLabel": MessageLookupByLibrary.simpleMessage("Темная"),
    "settingsThemeLabel": MessageLookupByLibrary.simpleMessage("Тема"),
    "settingsThemeLightLabel": MessageLookupByLibrary.simpleMessage("Светлая"),
    "settingsThemeSystemDefaultLabel": MessageLookupByLibrary.simpleMessage(
      "Системная по умолчанию",
    ),
    "settingsUnitsLabel": MessageLookupByLibrary.simpleMessage(
      "Единицы измерения",
    ),
    "settingsVolumeLabel": MessageLookupByLibrary.simpleMessage("Объем"),
    "snackExample": MessageLookupByLibrary.simpleMessage(
      "напр. яблоко, мороженое, шоколад ...",
    ),
    "snackLabel": MessageLookupByLibrary.simpleMessage("Перекус"),
    "sugarLabel": MessageLookupByLibrary.simpleMessage("сахар"),
    "suppliedLabel": MessageLookupByLibrary.simpleMessage("получено"),
    "unitLabel": MessageLookupByLibrary.simpleMessage("Единица"),
    "weightLabel": MessageLookupByLibrary.simpleMessage("Вес"),
    "yearsLabel": m3,
  };
}
