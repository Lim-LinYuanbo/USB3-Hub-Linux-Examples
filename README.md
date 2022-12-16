# USB3-Hub-Linux-Examples

## 1. description

## 2. demonstration

### 2.1 compile environment

```shell
# this is my machine
$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 20.04.5 LTS
Release:        20.04
Codename:       focal
# basic tools
$ sudo apt install git make gcc
# usb library
$ sudo apt install libusb-1.0-0-dev
```

### 2.2 run and test

#### 2.2.1 host is x86, device is usb5744

```shell
# insert usb-hub to your machine and find vid/pid
$ lsusb -v
...
Bus 004 Device 002: ID 0424:5744 Microchip Technology, Inc. (formerly SMSC) Hub
Couldn't open device, some information will be missing
Device Descriptor:
  bLength                18
  bDescriptorType         1
  bcdUSB               3.20
  bDeviceClass            9 Hub
  bDeviceSubClass         0
  bDeviceProtocol         3
  bMaxPacketSize0         9
  idVendor           0x0424 Microchip Technology, Inc. (formerly SMSC)
  idProduct          0x5744 Hub
  bcdDevice            2.21
  iManufacturer           2
  iProduct                3
  iSerial                 0
  bNumConfigurations      1
...
# usb5744 bcdUSB is 3.20, this example is test for USB3

# run the program with administrator privileges
$ sudo ./USB31_TX_COMPLIANCE
[sudo] password for mchp:
Please enter the vendor ID of the USB3.1 hub under test
0x0424
VID=[0x0424]
Please enter the product ID of the USB3.1 hub under test
0x5744
PID=[0x5744]
This demo will iniate USB3.1 TX_COMPLIANCE test mode on a port.
Press '1' for TX_COMPLIANCE
Press 'q' or 'Q' or CTL+C to quit
1
Which port will TX_COMPLIANCE be sent to?
2
Port 2 selected
Opening device ID 0424:5744...ok
Device has kernel driver attached.
Kernel Driver Detached!
Port now in TX_COMPLIANCE test mode!
```

### 2.2.2 host is arm

```shell
```

