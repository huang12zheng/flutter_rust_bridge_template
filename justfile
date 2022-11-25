default: pre-install gen lint

pre-install:
    cargo install flutter_rust_bridge_codegen
gen:
    flutter pub get
    flutter_rust_bridge_codegen \
        --rust-input native/src/api.rs \
        --dart-output lib/bridge_generated.dart \
        --c-output ios/Runner/bridge_generated.h \
        --c-output macos/Runner/bridge_generated.h \
        --dart-decl-output lib/bridge_definitions.dart \
        --wasm

lint:
    cd native && cargo fmt
    dart format .

clean:
    flutter clean
    cd native && cargo clean

serve *args='':
    flutter pub run flutter_rust_bridge:serve {{args}}

gitignore:
    echo "git rm --cache"
    @git rm --cache ios/Runner/bridge_generated.h
    @git rm --cache lib/bridge_definitions.dart
    @git rm --cache lib/bridge_generated.dart
    @git rm --cache lib/bridge_generated.io.dart
    @git rm --cache lib/bridge_generated.web.dart
    @git rm --cache macos/Runner/bridge_generated.h
    @git rm --cache native/src/bridge_generated.io.rs
    @git rm --cache native/src/bridge_generated.rs
    @git rm --cache native/src/bridge_generated.web.rs

    echo "echo \$filepath >> .gitignore"
    @echo "ios/Runner/bridge_generated.h" >> .gitignore
    @echo "ios/Runner/bridge_generated.h" >> .gitignore
    @echo "lib/bridge_definitions.dart"   >> .gitignore
    @echo "lib/bridge_generated.dart"     >> .gitignore
    @echo "lib/bridge_generated.io.dart"  >> .gitignore
    @echo "lib/bridge_generated.web.dart" >> .gitignore
    @echo "macos/Runner/bridge_generated.h"   >> .gitignore
    @echo "native/src/bridge_generated.io.rs" >> .gitignore
    @echo "native/src/bridge_generated.rs"    >> .gitignore
    @echo "native/src/bridge_generated.web.rs">> .gitignore