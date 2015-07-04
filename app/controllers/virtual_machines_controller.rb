class VirtualMachinesController < ApplicationController
    def index
        @vms = VirtualMachine.all
    end
    def create
        vm_params = params.require(:virtual_machine).permit(:hostname, :number_cpu, :ram_mb, :environment_id)
        @vm = VirtualMachine.new(vm_params)
        @vm.save
    end
    def new
        @vm = VirtualMachine.new
    end
end
