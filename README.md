# Raspberry Pi 3 MPTCP Kernel Binary

########################################################################
This kernel with MPTCP is compiled for ubuntu mate 16.04, rpi Version 3.

Kernel version: 4.1.21

MPTCP version: 4.1.20
########################################################################

1) Extract the cloned archieve as follows:
	tar -zxvf rpi_kernel_MPTCP.tar.gz

2) Change to the folder rpi_kernel_MPTCP:
	cd rpi_kernel_MPTCP

3) From this folder run the following commands to install the kernel:

	a) sudo tar -xzf lib_modules.tar.gz -C /lib/modules/
   		Contents of the tar are extracted into /lib/modules/4.1.21-v7

	b) sudo cp dts/*.dtb /boot/

	c) sudo cp dts/overlays/*.dtb* /boot/overlays/

	d) sudo cp dts/overlays/README /boot/overlays/

	e) sudo mv /boot/kernel7.img /boot/kernel7.img_bkp
		To backup the existing kernel image (Optional but Recommended!)

	f) sudo cp kernel7.img /boot/kernel7.img
		Copies the new image

Reboot the rpi3. The new kernel has MPTCP enabled.


To verify the installation use the following methods
-----------------------------------------------------

If the installation is successful, commands below give output as specified

1) echo /proc/sys/net/mptcp/mptcp_enabled

 Output: 1

2) echo /proc/sys/net/ipv4/tcp_congestion_control

 Output: olia


Configuring Multipath Routing on rpi 
------------------------------------

Please refer to: http://multipath-tcp.org/pmwiki.php/Users/ConfigureRouting 

For more details about MPTCP, please refer to: http://multipath-tcp.org/pmwiki.php/Main/HomePage
