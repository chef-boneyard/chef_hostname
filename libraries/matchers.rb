if defined?(ChefSpec)
  #####################
  # set hostname
  #####################
  ChefSpec.define_matcher :hostname

  def set_hostname(package_name)
    ChefSpec::Matchers::ResourceMatcher.new(:hostname, :set, package_name)
  end
end
