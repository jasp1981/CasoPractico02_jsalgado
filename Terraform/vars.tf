# se declara las variables de localización, tipo de VM y sus hosts

variable "location" {
  type = string
  description = "Región de Azure donde crearemos la infraestructura"
  default = "West Europe"
}

variable "vm_size" {
  type = string
  description = "Tamaño de la máquina virtual"
  default = "Standard_D1_v2" # 3.5 GB, 1 CPU 
}

variable "vms" {
  type        = list(string)
  default     = ["kubemaster.acme.es", "kubenode1.acme.es", "kubenode2.acme.es", "nfs.acme.es"]
  description = "Maquina virtuales a crear"
}
