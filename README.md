# flutter_template

This is a tempate for creating new project in flutter.

Architecture:
- DDD
- Freezed
- BLoc / Cubit
- AutoRoute
- Multiple Variant (dev, staging, prod)
##

## :computer: Install Template
1. First you need to install copy_template to generate project based on name
````
dart pub global activate copy_template
````
2. Install to specific directory on your pc with your project name
```
copy_template <project_name> https://github.com/yusriltakeuchi/flutter_template.git <path>
```
For example:
```
copy_template my_app https://github.com/yusriltakeuchi/flutter_template.git /Users/mac/Documents/FLUTTER_PROJECT
```

## :rocket: Run The Project
You can choose to run your project with various variant, currently available is dev, staging, and prod.
```
flutter run --flavor dev
```

## :package: Change Package Name
You can change the package name by running the command below
```
dart run change_app_package_name:main com.package.name
```
And then change package name in utils/flavor/flavor_utils.dart

## :first_quarter_moon: Access Flavor Variant
You can access the flavor variant by using FlavorUtils class
```dart
flavor.current
```

## :open_book: Create New Page
1. You need to create a page on presentation directory
2. Add the @RoutePage() annotation in your screen class, for example:
```dart
@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: MyTheme.style.title.copyWith(
            color: MyTheme.color.white,
            fontSize: AppSetting.setFontSize(45)
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: MyTheme.color.primary,
      ),
      body: BlocProvider(
        create: (context) => UserBloc()..getUsers(params: {'page': 1}),
        child: const HomeBody(),
      ),
    );
  }
}
```
3. Run the make file to generate the code
```
make runner-build
```
4. open route.dart file and add your page into routes variables.
```dart
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
  ];
```

## :information_source: Step to Fetch Data
1. Create Entity class in domain/entities
2. Create APIExtension in infrastructure/datasource/base/api_datasource_ext.dart
3. Create DataSource in infrastructure/datasource
4. Create Abstract Class Repository in domain/repositories
5. Create Repository Implementation in infrastructure/repositories
6. Inject DataSource & Repository in injection
6. Create Bloc Cubit in bloc
7. Create Pages in presentation