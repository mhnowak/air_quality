# air_quality

An app displaying air quality based on "Jakość Powietrza" portal's [API](https://powietrze.gios.gov.pl/pjp/content/api).

## Goals

1. Follow the [project's criteria](http://mw.home.amu.edu.pl/zajecia/PRA2023/PRAPRO.html)
    - [X] has meaningful tests,
    - [ ] uses streams,
    - [X] JSON serialization and deserialization,
    - [X] uses at least one external library.
2. KISS - keep it simple, stupid!
3. App is able to run on all supported platforms:
    - [X] android,
    - [ ] iOS,
    - [ ] macOS,
    - [ ] linux,
    - [ ] web - free firebase hosting?

## Project Setup

### Flutter

This project uses [asdf](https://github.com/oae/asdf-flutter) to manage flutter's version.

### Githooks

This project uses githooks to maintain code quality before publishing the code for code review.

Set them up by running:

```bash
git config core.hooksPath .githooks/
```

## Dependencies

### App dependencies

- [dio](https://pub.dev/packages/dio) - http client,
- [equatable](https://pub.dev/packages/equatable) - value based equality for objects,
- [flex_color_scheme](https://pub.dev/packages/flex_color_scheme) - built in theme that follows material 3 standards,
- [intl](https://pub.dev/packages/intl) - internalization of texts,
- [json_serializable](https://pub.dev/packages/json_serializable) - code generator for to/from json methods,
- [get_it](https://pub.dev/packages/get_it) - dependency injection,
- [flutter_bloc](https://pub.dev/packages/flutter_bloc) - state management,
- [pretty_dio_logger](https://pub.dev/packages/pretty_dio_logger) - logger for network requests.

### Test dependencies

- [alchemist](https://pub.dev/packages/alchemist) - screenshot tests,
- [mocktail](https://pub.dev/packages/mocktail) - simplifies mocking.
