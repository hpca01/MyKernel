all: make_bin start_quemu

make_bin: ./boot.asm
	@echo 'Making bin file..'
	nasm -f bin ./boot.asm -o ./boot.bin

start_quemu: ./boot.bin
	@echo 'Running quemu..'
	qemu-system-x86_64 -hda ./boot.bin

clean:
	rm ./boot.bin