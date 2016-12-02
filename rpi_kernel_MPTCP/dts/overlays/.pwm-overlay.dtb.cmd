cmd_arch/arm/boot/dts/overlays/pwm-overlay.dtb := mkdir -p arch/arm/boot/dts/overlays/ ; gcc -E -Wp,-MD,arch/arm/boot/dts/overlays/.pwm-overlay.dtb.d.pre.tmp -nostdinc -I./arch/arm/boot/dts -I./arch/arm/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/overlays/.pwm-overlay.dtb.dts.tmp arch/arm/boot/dts/overlays/pwm-overlay.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/overlays/pwm-overlay.dtb -b 0 -i arch/arm/boot/dts/overlays/ -@ -d arch/arm/boot/dts/overlays/.pwm-overlay.dtb.d.dtc.tmp arch/arm/boot/dts/overlays/.pwm-overlay.dtb.dts.tmp ; cat arch/arm/boot/dts/overlays/.pwm-overlay.dtb.d.pre.tmp arch/arm/boot/dts/overlays/.pwm-overlay.dtb.d.dtc.tmp > arch/arm/boot/dts/overlays/.pwm-overlay.dtb.d

source_arch/arm/boot/dts/overlays/pwm-overlay.dtb := arch/arm/boot/dts/overlays/pwm-overlay.dts

deps_arch/arm/boot/dts/overlays/pwm-overlay.dtb := \

arch/arm/boot/dts/overlays/pwm-overlay.dtb: $(deps_arch/arm/boot/dts/overlays/pwm-overlay.dtb)

$(deps_arch/arm/boot/dts/overlays/pwm-overlay.dtb):
