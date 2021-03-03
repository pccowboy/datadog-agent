#
# Copyright:: Chef Software, Inc.
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
#

require './lib/cmake.rb'

name "json-c"
default_version "0.15-20200726"

dependency "cmake"

license "MIT"
license_file "COPYING"
skip_transitive_dependency_licensing true

version("0.15-20200726") { source sha256: "4ba9a090a42cf1e12b84c64e4464bb6fb893666841d5843cc5bef90774028882" }

source url: "https://github.com/json-c/json-c/archive/json-c-#{version}.tar.gz"

relative_path "json-c-json-c-#{version}"

build do
  env = with_standard_compiler_flags(with_embedded_path)

  cmake(env: env)
end
