# provider plugin block
# provider info
# resources:
variable "myvar" {
type=string
default = "Hello world!"
}
output "myvaroutput" {
value = "${var.myvar}"
}

variable "multivar" {
type=string
default= <<EOH
this is a multi
line string
EOH
}

output "mymultilinestring" {
value = "${var.multivar}"
}

variable "mapexample" {
type=map
default = {
"reg1"  = "us-east-1",
"reg2" = "ap-south-1"
}
}
output "mymap" {
value = "${var.mapexample["reg1"]}"
}

variable "listvar" {
type=list
default = ["sg1", "sg2", "sg3", "sg4" ]
}
output "myvarlistoutput" {
value = "${var.listvar[2]}"
}

variable "boolvars" {
default = "true"
}
output "mybooloutput" {
value = "${var.boolvars}"
}

variable "myinputvar" {
type=string
}
output myoutputvar {
value = "${var.myinputvar}"
sensitive=true
}
