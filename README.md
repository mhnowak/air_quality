# air_quality

An app displaying air quality based on "Jakość Powietrza" portal's [API](https://powietrze.gios.gov.pl/pjp/content/api).

## Goals

1. Follow the [project's criteria](http://mw.home.amu.edu.pl/zajecia/PRA2023/PRAPRO.html)
    - [ ] has meaningful tests,
    - [ ] uses streams,
    - [ ] JSON serialization and deserialization,
    - [ ] uses at least one external library,
2. KISS - keep it simple, stupid!
3. App is able to run on all supported platforms:
    - [ ] android,
    - [ ] iOS,
    - [ ] macOS,
    - [ ] linux,
    - [ ] web - free firebase hosting?

## Project Setup

### Flutter

This project uses asdf to manage flutter's version. Learn more [here](https://github.com/oae/asdf-flutter).

### Githooks

This project uses githooks to maintain code quality before publishing the code for code review.

Set them up by running:

```bash
git config core.hooksPath .githooks/
```
