# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Entrepreneur do
  it {should have_many (:presences)}
  it {should have_many (:events)}
end
