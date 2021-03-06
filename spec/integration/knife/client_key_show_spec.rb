#
# Copyright:: Copyright 2013-2016, Chef Software Inc.
# License:: Apache License, Version 2.0
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

require "support/shared/integration/integration_helper"
require "support/shared/context/config"
require "date"

describe "knife client key show", :workstation do
  include IntegrationSupport
  include KnifeSupport

  include_context "default config options"

  let(:now) { DateTime.now }
  let(:last_month) { (now << 1).strftime("%FT%TZ") }
  let(:next_month) { (now >> 1).strftime("%FT%TZ") }

  when_the_chef_server "has a client" do
    before do
      client "cons", {}
      knife("client key create cons -k new")
      knife("client key create cons -k next_month -e #{next_month}")
      knife("client key create cons -k expired -e #{last_month}")
    end

    it "shows a key for a client" do
      knife("client key show cons new").should_succeed stdout: /.*name:.*new/
    end

  end
end
