use std::process::Command;

// source from https://github.com/fzyzcjy/flutter_rust_bridge/blob/master/frb_example/pure_dart/rust/build.rs
use lib_flutter_rust_bridge_codegen::{
    config_parse, frb_codegen, get_symbols_if_no_duplicates, RawOpts,
};

/// Path of input Rust code
// const RUST_INPUTS: [&str; 1] = ["src/api.rs"];
// const CLASS_NAMES: [&str; 1] = ["Native"];
const RUST_INPUTS: [&str; 2] = ["src/api.rs", "src/surreal.rs"];
const CLASS_NAMES: [&str; 2] = ["ApiNative", "ApiDb"];
/// Path of output generated Dart code
const DART_OUTPUT: &str = "../lib/bridge_generated";
/// Path of output Rust code
const RUST_OUTPUT: &str = "src/bridge_generated";
trait Conv {
    fn into_vecs(&self) -> Vec<String>;
}
impl Conv for [&str] {
    fn into_vecs(&self) -> Vec<String> {
        self.iter().clone().map(|e| format!("{e}")).collect()
    }
}
fn main() {
    // Tell Cargo that if the input Rust code changes, to rerun this build script.
    println!("cargo:warning=start work");

    rm_nouse_file();
    frb();
}

fn rm_nouse_file() {
    // if RUST_INPUTS.len() > 1 {
    //     Command::new("sh")
    //         .args([
    //             "-c",
    //             format!("sed -i '' '/.*mod bridge_generated;.*/d' src/lib.rs").as_str(),
    //         ])
    //         .spawn()
    //         .ok();
    //     Command::new("sh")
    //         .args([
    //             "-c",
    //             format!("rm {RUST_OUTPUT}.rs {RUST_OUTPUT}.io.rs {RUST_OUTPUT}.web.rs").as_str(),
    //         ])
    //         .spawn()
    //         .ok();
    //     Command::new("sh")
    //         .args([
    //             "-c",
    //             format!("rm {DART_OUTPUT}.dart {DART_OUTPUT}.io.dart {DART_OUTPUT}.web.dart")
    //                 .as_str(),
    //         ])
    //         .spawn()
    //         .ok();
    // }
    //  else {
    Command::new("sh")
        .args([
            "-c",
            format!("sed -i '' '/.*mod bridge_generated.*/d' src/lib.rs").as_str(),
        ])
        .spawn()
        .ok();
    Command::new("sh")
        .args(["-c", format!("rm {RUST_OUTPUT}*").as_str()])
        .spawn()
        .ok();
    Command::new("sh")
        .args(["-c", format!("rm {DART_OUTPUT}*").as_str()])
        .spawn()
        .ok();
    Command::new("sh")
        .args([
            "-c",
            format!("rm ../ios/Runner/bridge_generated.h ../macos/Runner/bridge_generated.h")
                .as_str(),
        ])
        .spawn()
        .ok();
    // }
}

fn frb() {
    RUST_INPUTS
        .iter()
        .clone()
        .for_each(|e| println!("cargo:rerun-if-changed={}", e));

    let dart_outputs: Vec<String>;
    if RUST_INPUTS.len() > 1 {
        dart_outputs = RUST_INPUTS
            .iter()
            .clone()
            .enumerate()
            .map(|(i, _e)| format!("{DART_OUTPUT}_{i}.dart"))
            .collect();
    } else {
        dart_outputs = vec![format!("{DART_OUTPUT}.dart")]
    }
    let rust_outputs: Vec<String>;
    if RUST_INPUTS.len() > 1 {
        rust_outputs = RUST_INPUTS
            .iter()
            .clone()
            .enumerate()
            .map(|(i, _e)| format!("{RUST_OUTPUT}_{i}.rs"))
            .collect();
    } else {
        rust_outputs = vec![format!("{RUST_OUTPUT}.rs")]
    }
    let raw_opts = RawOpts {
        // Path of input Rust code
        rust_input: RUST_INPUTS.into_vecs(),
        // Path of output generated Dart code
        dart_output: dart_outputs,
        wasm: true,
        rust_output: Some(rust_outputs),
        c_output: Some(
            [
                "../ios/Runner/bridge_generated.h",
                "../macos/Runner/bridge_generated.h",
            ]
            .into_vecs(),
        ),
        dart_format_line_length: 120,
        class_name: Some(CLASS_NAMES.into_vecs()),
        // for other options use defaults
        ..Default::default()
    };
    // get opts from raw opts
    let configs = config_parse(raw_opts);
    // generation of rust api for ffi
    let all_symbols = get_symbols_if_no_duplicates(&configs).unwrap();
    for config in configs.iter() {
        frb_codegen(config, &all_symbols).unwrap();
    }
}

// fn main() {}
