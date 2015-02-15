#
# Cookbook Name:: directionless.hardware
# Recipe:: macbook3,1
#
# Copyright 2015, seph@directionless
#
# MIT License
#

packages = {
  # For wireless
  "linux-firmware-nonfree"   => :install,
  "firmware-b43-installer"   => :install,

  # acpi / power / etc
  "upower"        => :install,
  "acpi-support"  => :install,
  "acpi"          => :install,
  "powertop"      => :install,
}

packages.each do |p,a|
  package p do
    action a
  end
end
