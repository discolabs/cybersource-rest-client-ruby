=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::Ptsv2payoutsProcessingInformationPayoutsOptions
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Ptsv2payoutsProcessingInformationPayoutsOptions' do
  before do
    # run before each test
    @instance = CyberSource::Ptsv2payoutsProcessingInformationPayoutsOptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Ptsv2payoutsProcessingInformationPayoutsOptions' do
    it 'should create an instance of Ptsv2payoutsProcessingInformationPayoutsOptions' do
      expect(@instance).to be_instance_of(CyberSource::Ptsv2payoutsProcessingInformationPayoutsOptions)
    end
  end
  describe 'test attribute "acquirer_merchant_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "acquirer_bin"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "retrieval_reference_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "account_funding_reference_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "deferred_date_time"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
