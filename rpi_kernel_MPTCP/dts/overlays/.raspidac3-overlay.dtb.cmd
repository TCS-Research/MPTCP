cmd_arch/arm/boot/dts/overlays/raspidac3-overlay.dtb := mkdir -p arch/arm/boot/dts/overlays/ ; gcc -E -Wp,-MD,arch/arm/boot/dts/overlays/.raspidac3-overlay.dtb.d.pre.tmp -nostdinc -I./arch/arm/boot/dts -I./arch/arm/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/overlays/.raspidac3-overlay.dtb.dts.tmp arch/arm/boot/dts/overlays/raspidac3-overlay.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/overlays/raspidac3-overlay.dtb -b 0 -i arch/arm/boot/dts/overlays/ -@ -d arch/arm/boot/dts/overlays/.raspidac3-overlay.dtb.d.dtc.tmp arch/arm/boot/dts/overlays/.raspidac3-overlay.dtb.dts.tmp ; cat arch/arm/boot/dts/overlays/.raspidac3-overlay.dtb.d.pre.tmp arch/arm/boot/dts/overlays/.raspidac3-overlay.dtb.d.dtc.tmp > arch/arm/boot/dts/overlays/.raspidac3-overlay.dtb.d

source_arch/arm/boot/dts/overlays/raspidac3-overlay.dtb := arch/arm/boot/dts/overlays/raspidac3-overlay.dts

deps_arch/arm/boot/dts/overlays/raspidac3-overlay.dtb := \

arch/arm/boot/dts/overlays/raspidac3-overlay.dtb: $(deps_arch/arm/boot/dts/overlays/raspidac3-overlay.dtb)

$(deps_arch/arm/boot/dts/overlays/raspidac3-overlay.dtb):
