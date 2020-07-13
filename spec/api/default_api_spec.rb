=begin
#AUM Immo

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for SwisseldexAumImmo::DefaultApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DefaultApi' do
  before do
    # run before each test
    @instance = SwisseldexAumImmo::DefaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefaultApi' do
    it 'should create an instact of DefaultApi' do
      expect(@instance).to be_instance_of(SwisseldexAumImmo::DefaultApi)
    end
  end

  # unit tests for upload
  # Upload
  # Post a new change of contract message for automatic processing to VNB.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :test_delivery Processes message but does not forward it to recognized VNB (for testing)
  # @option opts [String] :carbon_copy_email If VNB is consuming the message via Email, this address is taken as CC (mainly intended for testing). Adress is only considered if the mail-server supports TLS (you can check this with e.g. https://www.checktls.com/TestReceiver). Value of this parameter is not validated and it won&#39;t cause a negative impact on the processing of the message.
  # @option opts [UploadMessage] :upload_message Structure and property-names are adapted from eCH-0112 (https://www.ech.ch/de/standards/52687).
  # @return [UploadResponse]
  describe 'upload test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end