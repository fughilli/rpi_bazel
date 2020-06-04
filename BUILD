# This BUILD file provides a patch for Google's ProtoBuf library such that we
# can link against the libcxx built as part of the cross-compilation process.
exports_files(
    ["additional_deps.patch"],
)

config_setting(
    name = "pi_build",
    values = {"cpu": "armeabihf"},
)
