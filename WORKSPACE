# -*- python -*-

# Copyright 2018-2019 Josh Pieper, jjp@pobox.com.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

workspace(name = "rpi_bazel")

BAZEL_VERSION = "3.1.0"
BAZEL_VERSION_SHA = "753434f4fa730266cf5ce21d1fdd425e1e167dd9347ad3e8adc19e8c0d54edca"

load("//tools/workspace:default.bzl", "add_default_repositories")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

http_archive(
    name = "six",
    build_file = "@com_google_protobuf//third_party:six.BUILD",
    urls = ["https://pypi.python.org/packages/source/s/six/six-1.12.0.tar.gz"],
)

git_repository(
    name = "com_google_protobuf",
    commit = "bb3460d71b2f2cd75f10efe94d739e15561c2ccf",
    patch_args = ["-p1"],
    patches = ["@//:additional_deps.patch"],
    remote = "https://github.com/protocolbuffers/protobuf",
    shallow_since = "1588968401 -0700",
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

git_repository(
    name = "com_google_absl",
    branch = "master",
    remote = "https://github.com/abseil/abseil-cpp",
)

add_default_repositories()
