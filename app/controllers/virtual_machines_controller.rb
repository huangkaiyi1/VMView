class VirtualMachinesController < ApplicationController
  
  def index
    @vms = VirtualMachine.all
  end

  def create
    @vms = VirtualMachine.all
    @vm = VirtualMachine.create( vm_params )
  end

  def new
    @vm = VirtualMachine.new
  end
  
  def destroy
    @vms = VirtualMachine.all
    @vm = VirtualMachine.find(params[:id])
    @vm.destroy
  end
  
  def delete
    @vm = VirtualMachine.find(params[:virtual_machine_id])
  end

  private
  def vm_params
    params.require(:virtual_machine).permit(:hostname, :number_cpu, :ram_mb, :environment_id)
  end
end
