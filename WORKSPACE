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

git_repository(
    name = "subpar",
    commit = "15ddc75b94b19ea4f544cf5d3e640cd37a3a8b4b",
    remote = "https://github.com/fughilli/subpar",
    shallow_since = "1590903243 -0700",
)

http_archive(
    name = "six",
    build_file = "@com_google_protobuf//third_party:six.BUILD",
    urls = ["https://pypi.python.org/packages/source/s/six/six-1.12.0.tar.gz"],
)

git_repository(
    name = "com_google_protobuf",
    commit = "70b02861f8e8ba711efd187188dfb930db7bcaba",
    patch_args = ["-p1"],
    patches = ["@//:additional_deps.patch"],
    remote = "https://github.com/protocolbuffers/protobuf",
    shallow_since = "1598416407 -0700",
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

git_repository(
    name = "com_google_absl",
    commit = "c03c18e7fef8d06eb6c445f5607af533e69cadfe",
    remote = "https://github.com/abseil/abseil-cpp",
    shallow_since = "1598486385 -0400",
)

add_default_repositories()

#
# swig
#
http_archive(
    name = "swig",
    build_file = "//third_party/swig:BUILD",
    sha256 = "58a475dbbd4a4d7075e5fe86d4e54c9edde39847cdb96a3053d87cb64a23a453",
    strip_prefix = "swig-3.0.8",
    urls = [
        "https://storage.googleapis.com/mirror.tensorflow.org/ufpr.dl.sourceforge.net/project/swig/swig/swig-3.0.8/swig-3.0.8.tar.gz",
        "http://ufpr.dl.sourceforge.net/project/swig/swig/swig-3.0.8/swig-3.0.8.tar.gz",
        "http://pilotfiber.dl.sourceforge.net/project/swig/swig/swig-3.0.8/swig-3.0.8.tar.gz",
    ],
)

#
# pcre
#
http_archive(
    name = "pcre",
    build_file = "//third_party/pcre:BUILD",
    sha256 = "69acbc2fbdefb955d42a4c606dfde800c2885711d2979e356c0636efde9ec3b5",
    strip_prefix = "pcre-8.42",
    urls = [
        "https://storage.googleapis.com/mirror.tensorflow.org/ftp.exim.org/pub/pcre/pcre-8.42.tar.gz",
        "http://ftp.exim.org/pub/pcre/pcre-8.42.tar.gz",
    ],
)

# Eigen
http_archive(
    name = "eigen",
    build_file = "//:eigen.BUILD",
    sha256 = "3a66f9bfce85aff39bc255d5a341f87336ec6f5911e8d816dd4a3fdc500f8acf",
    strip_prefix = "eigen-eigen-c5e90d9e764e",
    url = "https://bitbucket.org/eigen/eigen/get/c5e90d9.tar.gz",
)
