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

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def clang_repository():
    http_archive(
        name = "org_llvm_clang",
        urls = [
            "https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.0/clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz",
        ],
        sha256 = "61582215dafafb7b576ea30cc136be92c877ba1f1c31ddbbd372d6d65622fef5",
        strip_prefix = "clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04",
        build_file = Label("//tools/workspace/clang:package.BUILD"),
    )
    http_archive(
        name = "org_llvm_libcxx",
        urls = [
            "https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.0/libcxx-14.0.0.src.tar.xz",
        ],
        sha256 = "2afa906b1a9c6fef0c83af576f54191c33b5170de3c4adf01aab66a510af3fd6",
        strip_prefix = "libcxx-14.0.0.src",
        build_file = Label("//tools/workspace/clang:libcxx.BUILD"),
    )
    http_archive(
        name = "org_llvm_libcxxabi",
        urls = [
            "https://github.com/llvm/llvm-project/releases/download/llvmorg-14.0.0/libcxxabi-14.0.0.src.tar.xz",
        ],
        sha256 = "b6fd1b53ced3c9a230bf0660c58a0a26ef9b0e8257e4ef70d1f690fa84e77074",
        strip_prefix = "libcxxabi-14.0.0.src",
        build_file = Label("//tools/workspace/clang:libcxxabi.BUILD"),
    )
