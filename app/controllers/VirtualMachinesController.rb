class VmsController < ApplicationController
    def index
        @vms = VirtualMachine.all
    end
    # def create
        # vm_params = params.require(:vm).permit(:hostname, :number_cpu, :ram_mb, :environment_id)
        # @vm = VirtualMachine.new(vm_params)
        # @vm.save
    # end
    def new
        @virtual_machine = VirtualMachine.new
    end
end
