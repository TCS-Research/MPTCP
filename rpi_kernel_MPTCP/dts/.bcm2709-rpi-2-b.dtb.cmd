cmd_arch/arm/boot/dts/bcm2709-rpi-2-b.dtb := mkdir -p arch/arm/boot/dts/ ; gcc -E -Wp,-MD,arch/arm/boot/dts/.bcm2709-rpi-2-b.dtb.d.pre.tmp -nostdinc -I./arch/arm/boot/dts -I./arch/arm/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.bcm2709-rpi-2-b.dtb.dts.tmp arch/arm/boot/dts/bcm2709-rpi-2-b.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/bcm2709-rpi-2-b.dtb -b 0 -i arch/arm/boot/dts/ -@ -d arch/arm/boot/dts/.bcm2709-rpi-2-b.dtb.d.dtc.tmp arch/arm/boot/dts/.bcm2709-rpi-2-b.dtb.dts.tmp ; cat arch/arm/boot/dts/.bcm2709-rpi-2-b.dtb.d.pre.tmp arch/arm/boot/dts/.bcm2709-rpi-2-b.dtb.d.dtc.tmp > arch/arm/boot/dts/.bcm2709-rpi-2-b.dtb.d

source_arch/arm/boot/dts/bcm2709-rpi-2-b.dtb := arch/arm/boot/dts/bcm2709-rpi-2-b.dts

deps_arch/arm/boot/dts/bcm2709-rpi-2-b.dtb := \
  arch/arm/boot/dts/bcm2709.dtsi \
  arch/arm/boot/dts/bcm2708_common.dtsi \
  arch/arm/boot/dts/skeleton.dtsi \

arch/arm/boot/dts/bcm2709-rpi-2-b.dtb: $(deps_arch/arm/boot/dts/bcm2709-rpi-2-b.dtb)

$(deps_arch/arm/boot/dts/bcm2709-rpi-2-b.dtb):
