class VirtualMachine < ActiveRecord::Base
    validates_presence_of  :hostname, :number_cpu, :ram_mb
    validates_inclusion_of :ram_mb, :in => 8..64
    validates_inclusion_of :number_cpu, :in => 1..8
end
