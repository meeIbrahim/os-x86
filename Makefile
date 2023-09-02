ASM=nasm

SRC_DIR=src
BUILD_DIR=build

$(BUILD_DIR)/micro_floppy.img: $(BUILD_DIR)/micro.bin
	cp $(BUILD_DIR)/micro.bin $(BUILD_DIR)/micro_floppy.img
	truncate -s 1440k $(BUILD_DIR)/micro_floppy.img
$(BUILD_DIR)/micro.bin: $(SRC_DIR)/micro.asm
	$(ASM) $(SRC_DIR)/micro.asm -f bin -o $(BUILD_DIR)/micro.bin
