require 'minitest_helper'

class TestEmberCLIAssets < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ember::CLI::Assets::VERSION
  end

  def test_loader_is_exist
    assert Ember::CLI::Assets.root.join('ember/loader.js').exist?
  end

  def test_resolver_is_exist
    assert Ember::CLI::Assets.root.join('ember/resolver.js').exist?
    assert Ember::CLI::Assets.root.join('ember/resolver.js').read =~ /Version: #{Ember::CLI::Resolver::VERSION}/
  end

  def test_load_initializers_is_exist
    assert Ember::CLI::Assets.root.join('ember/load-initializers.js').exist?
  end
end
