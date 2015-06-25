require 'test_helper'

class VirtualMachineTest < ActiveSupport::TestCase
  
   test "hostname, ram, cpu cannot be nil" do
     vm = VirtualMachine.new(hostname: 'testHost')
     assert_not( vm.valid?, "hostname, ram, cpu cannot be nil" )
   end
   
   test "number of cpus is between 1 and 8" do
     vm = VirtualMachine.new(hostname: 'testHost', number_cpu: 0, ram_mb: 8, environment_id: 5)
     assert_not( vm.valid?, "CPUs should be between 1 and 8" )
   end
   
   test "RAM is between 8 and 64 GBs" do
     vm = VirtualMachine.new(hostname: 'testHost', number_cpu: 8, ram_mb: 0, environment_id: 5)
     assert_not( vm.valid?, "Ram should be between 8 and 64 GBs" )
   end
   
   test "All model validations should pass" do
     vm = VirtualMachine.new(hostname: 'testHost', number_cpu: 8, ram_mb: 8, environment_id: 5)
     assert( vm.valid? )
   end
end
