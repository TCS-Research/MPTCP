cmd_arch/arm/boot/dts/overlays/vc4-kms-v3d-overlay.dtb := mkdir -p arch/arm/boot/dts/overlays/ ; gcc -E -Wp,-MD,arch/arm/boot/dts/overlays/.vc4-kms-v3d-overlay.dtb.d.pre.tmp -nostdinc -I./arch/arm/boot/dts -I./arch/arm/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/overlays/.vc4-kms-v3d-overlay.dtb.dts.tmp arch/arm/boot/dts/overlays/vc4-kms-v3d-overlay.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/overlays/vc4-kms-v3d-overlay.dtb -b 0 -i arch/arm/boot/dts/overlays/ -@ -d arch/arm/boot/dts/overlays/.vc4-kms-v3d-overlay.dtb.d.dtc.tmp arch/arm/boot/dts/overlays/.vc4-kms-v3d-overlay.dtb.dts.tmp ; cat arch/arm/boot/dts/overlays/.vc4-kms-v3d-overlay.dtb.d.pre.tmp arch/arm/boot/dts/overlays/.vc4-kms-v3d-overlay.dtb.d.dtc.tmp > arch/arm/boot/dts/overlays/.vc4-kms-v3d-overlay.dtb.d

source_arch/arm/boot/dts/overlays/vc4-kms-v3d-overlay.dtb := arch/arm/boot/dts/overlays/vc4-kms-v3d-overlay.dts

deps_arch/arm/boot/dts/overlays/vc4-kms-v3d-overlay.dtb := \
  arch/arm/boot/dts/include/dt-bindings/clock/bcm2835.h \
  arch/arm/boot/dts/include/dt-bindings/gpio/gpio.h \

arch/arm/boot/dts/overlays/vc4-kms-v3d-overlay.dtb: $(deps_arch/arm/boot/dts/overlays/vc4-kms-v3d-overlay.dtb)

$(deps_arch/arm/boot/dts/overlays/vc4-kms-v3d-overlay.dtb):
