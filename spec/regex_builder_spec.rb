require "spec_helper"
require_relative "../check-changelog.rb"

describe 'Guard clauses originated from the config' do
  it 'should take the branch prefixes guard into account' do
    expect(build_branch_prefix_regex).to eq "(feature/|hotfix/|bugfix)"
  end
end
