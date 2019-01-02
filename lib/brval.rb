require 'brval/version'
require 'brval/cpf_call'
require 'brval/cnpj_call'
require 'brval/te_call'
require 'brval/pis_call'
require 'brval/cnh.rb'
# main module
module Brval
  extend CpfCall
  extend CnpjCall
  extend TeCall
  extend PisCall

  class Error < StandardError; end
end
