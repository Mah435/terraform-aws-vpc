locals {
  azs_count = 2
  azs_names = data.aws_availability_zones.azs_info.names
  azs = slice(local.azs_names,0,local.azs_count)
  azs_labels = [element(split("-",local.azs[0]),length(split("-",local.azs[0]))-1),
               element(split("-",local.azs[1]),length(split("-",local.azs[1]))-1)]
}
