@echo off
title Dizdar Linux QEMU Baslatici
echo ====================================================
echo      Dizdar Linux Baslatiliyor (Sanal Test)
echo ====================================================
echo.
echo Fareyi pencereye kilitleyip her kenara ulasmak icin: Ctrl + Alt + G
echo Tam ekran yapmak icin: Ctrl + Alt + F
echo Fareden kurtulmak icin: Ctrl + Alt
echo.
echo Lutfen bekleyin, QEMU sanal makinesi aciliyor...
echo.
start "" "C:\Users\Dizdar\qemu\qemu-system-x86_64.exe" -m 4096 -smp 4 -cdrom "D:\Projeler\dizdar-linux-builder\binary.iso" -vga virtio -usb -device usb-tablet -accel tcg,thread=multi -display sdl
