require 'spec_helper'
require './spec/contexts/codes_context.rb'

RSpec.describe Brval do
  include_context "codes"

  describe "Brval tests" do

    context "CPF values" do
      it "should return true .cpf_valid?" do
        valid = Brval.cpf_valid?(cpf_valid)
        expect(valid).to be(true)
      end

      it "should return false .cpf_valid?" do
        valid = Brval.cpf_valid?(cpf_invalid)
        expect(valid).to be(false)
      end

      # Add a test with mask
    end

    context "CNPJ values" do
      it "should return true .cnpj_valid?" do
        valid = Brval.cnpj_valid?(cnpj_valid)
        expect(valid).to be(true)
      end

      it "should return false .cnpj_valid?" do
        valid = Brval.cnpj_valid?(cnpj_invalid)
        expect(valid).to be(false)
      end

      # Add a test with mask
    end

    context "Pis values" do
      it "should return true .pis_valid?" do
        valid = Brval.pis_valid?(pis_valid)
        expect(valid).to be(true)
      end

      it "should return false .pis_valid?" do
        valid = Brval.pis_valid?(pis_invalid)
        expect(valid).to be(false)
      end
      
      # Add a test with mask
    end

    context "Te (electoral title) values" do
      it "should return true .te_valid?" do
        valid = Brval.te_valid?(te_valid)
        expect(valid).to be(true)
      end

      it "should return true .te_valid? (Te code from Sao Paulo)" do
        valid = Brval.te_valid?(te_valid_sp)
        expect(valid).to be(true)
      end

      it "should return true .te_valid? (Te code from Minas Gerais)" do
        valid = Brval.te_valid?(te_valid_mg)
        expect(valid).to be(true)
      end

      it "should return false .te_valid?" do
        valid = Brval.te_valid?(te_invalid)
        expect(valid).to be(false)
      end
      
      # Add a test with mask
    end

  end
end