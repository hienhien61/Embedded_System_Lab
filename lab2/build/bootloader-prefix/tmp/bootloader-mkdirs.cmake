# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/0.PERSONAL/Downloads/esp32/Espressif/frameworks/esp-idf-v5.0.2/components/bootloader/subproject"
  "C:/0.PERSONAL/Downloads/esp32/Espressif/frameworks/esp-idf-v5.0.2/examples/get-started/embedded_lab/lab2/build/bootloader"
  "C:/0.PERSONAL/Downloads/esp32/Espressif/frameworks/esp-idf-v5.0.2/examples/get-started/embedded_lab/lab2/build/bootloader-prefix"
  "C:/0.PERSONAL/Downloads/esp32/Espressif/frameworks/esp-idf-v5.0.2/examples/get-started/embedded_lab/lab2/build/bootloader-prefix/tmp"
  "C:/0.PERSONAL/Downloads/esp32/Espressif/frameworks/esp-idf-v5.0.2/examples/get-started/embedded_lab/lab2/build/bootloader-prefix/src/bootloader-stamp"
  "C:/0.PERSONAL/Downloads/esp32/Espressif/frameworks/esp-idf-v5.0.2/examples/get-started/embedded_lab/lab2/build/bootloader-prefix/src"
  "C:/0.PERSONAL/Downloads/esp32/Espressif/frameworks/esp-idf-v5.0.2/examples/get-started/embedded_lab/lab2/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/0.PERSONAL/Downloads/esp32/Espressif/frameworks/esp-idf-v5.0.2/examples/get-started/embedded_lab/lab2/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/0.PERSONAL/Downloads/esp32/Espressif/frameworks/esp-idf-v5.0.2/examples/get-started/embedded_lab/lab2/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
