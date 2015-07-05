class VirtualMachinesController < ApplicationController
  respond_to :html, :js
  
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

  private
  def vm_params
    params.require(:virtual_machine).permit(:hostname, :number_cpu, :ram_mb, :environment_id)
  end
end
