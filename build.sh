#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Color codes for pretty printing
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}===============================================${NC}"
echo -e "${BLUE}     Dizdar Linux ISO Derleme Aracı            ${NC}"
echo -e "${BLUE}===============================================${NC}"

# Check if script is run as root
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}Hata: Bu betiği yönetici (root) olarak çalıştırmalısınız!${NC}"
  echo -e "Lütfen '${YELLOW}sudo ./build.sh${NC}' komutunu kullanın."
  exit 1
fi

# Check if running on Debian-based system
if [ ! -f /etc/debian_version ]; then
  echo -e "${RED}Hata: Bu derleme aracı sadece Debian veya Ubuntu tabanlı sistemlerde (örn: WSL Ubuntu) çalışır.${NC}"
  exit 1
fi

# Check and install build dependencies
echo -e "${YELLOW}[1/4] Derleme bağımlılıkları kontrol ediliyor...${NC}"
DEPENDENCIES="live-build debootstrap squashfs-tools xorriso"
MISSING_DEPS=""

for dep in $DEPENDENCIES; do
  if ! dpkg -s "$dep" >/dev/null 2>&1; then
    MISSING_DEPS="$MISSING_DEPS $dep"
  fi
done

if [ -n "$MISSING_DEPS" ]; then
  echo -e "${YELLOW}Eksik bağımlılıklar kuruluyor:${NC}$MISSING_DEPS"
  apt-get update
  apt-get install -y $MISSING_DEPS
else
  echo -e "${GREEN}Tüm bağımlılıklar zaten yüklü.${NC}"
fi

# Clean up previous builds
echo -e "${YELLOW}[2/4] Önceki derleme kalıntıları temizleniyor...${NC}"
lb clean --purge

# Initialize configuration
echo -e "${YELLOW}[3/4] Live-build yapılandırması başlatılıyor...${NC}"
lb config

# Start the build process
echo -e "${YELLOW}[4/4] ISO Derleme işlemi başlatılıyor. Bu işlem internet hızınıza bağlı olarak 15-30 dakika sürebilir...${NC}"
lb build

# Output results
if [ -f *.iso ]; then
  ISO_FILE=$(ls *.iso | head -n 1)
  echo -e "${GREEN}===============================================${NC}"
  echo -e "${GREEN}     BAŞARILI: Dizdar Linux ISO'nuz Hazır!     ${NC}"
  echo -e "${GREEN}===============================================${NC}"
  echo -e "Oluşan Dosya: ${YELLOW}$(pwd)/$ISO_FILE${NC}"
  echo -e "Bu ISO dosyasını VirtualBox, VMware veya USB'ye yazdırarak test edebilirsiniz."
else
  echo -e "${RED}Hata: ISO dosyası oluşturulamadı. Lütfen yukarıdaki hata günlüklerini inceleyin.${NC}"
  exit 1
fi
