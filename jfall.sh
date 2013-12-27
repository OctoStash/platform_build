#!/bin/bash
source build/envsetup.sh
make installclean
BDATE=`date +%m-%d`
COPY_DIR=/home/copy/shares/shares/dubbsy/Carrier_ROMs
if [ ! -d "${COPY_DIR}/${BDATE}" ]; then
        echo "Creating directory for ${COPY_DIR}/${BDATE}"
        mkdir -p ${COPY_DIR}/${BDATE}
fi

#VZW
lunch oct_jfltevzw-userdebug && make installclean && make otapackage -j21
find out/target/product  '(' -name '*ota-eng*.zip' -size +100000k -print0 ')' |
        xargs --null md5sum |
        while read CHECKSUM FILENAME
        do
                echo "${CHECKSUM} ${FILENAME}" >> "${FILENAME}.md5"
                mv -f ${FILENAME} ${COPY_DIR}/${BDATE}
                mv -f "${FILENAME}.md5" ${COPY_DIR}/${BDATE}
        done
#SPR
lunch oct_jfltespr-userdebug && make installclean && make otapackage -j21
find out/target/product  '(' -name '*ota-eng*.zip' -size +100000k -print0 ')' |
        xargs --null md5sum |
        while read CHECKSUM FILENAME
        do
                echo "${CHECKSUM} ${FILENAME}" >> "${FILENAME}.md5"
                mv -f ${FILENAME} ${COPY_DIR}/${BDATE}
                mv -f "${FILENAME}.md5" ${COPY_DIR}/${BDATE}
        done
#USC
lunch oct_jflteusc-userdebug && make installclean && make otapackage -j21
find out/target/product  '(' -name '*ota-eng*.zip' -size +100000k -print0 ')' |
        xargs --null md5sum |
        while read CHECKSUM FILENAME
        do
                echo "${CHECKSUM} ${FILENAME}" >> "${FILENAME}.md5"
                mv -f ${FILENAME} ${COPY_DIR}/${BDATE}
                mv -f "${FILENAME}.md5" ${COPY_DIR}/${BDATE}
        done
#XX
lunch oct_jfltexx-userdebug && make installclean && make otapackage -j21
find out/target/product  '(' -name '*ota-eng*.zip' -size +100000k -print0 ')' |
        xargs --null md5sum |
        while read CHECKSUM FILENAME
        do
                echo "${CHECKSUM} ${FILENAME}" >> "${FILENAME}.md5"
                mv -f ${FILENAME} ${COPY_DIR}/${BDATE}
                mv -f "${FILENAME}.md5" ${COPY_DIR}/${BDATE}
        done
#ATT
lunch oct_jflteatt-userdebug && make installclean && make otapackage -j21
find out/target/product  '(' -name '*ota-eng*.zip' -size +100000k -print0 ')' |
        xargs --null md5sum |
        while read CHECKSUM FILENAME
        do
                echo "${CHECKSUM} ${FILENAME}" >> "${FILENAME}.md5"
                mv -f ${FILENAME} ${COPY_DIR}/${BDATE}
                mv -f "${FILENAME}.md5" ${COPY_DIR}/${BDATE}
        done
#CAN
lunch oct_jfltecan-userdebug && make installclean && make otapackage -j21
find out/target/product  '(' -name '*ota-eng*.zip' -size +100000k -print0 ')' |
        xargs --null md5sum |
        while read CHECKSUM FILENAME
        do
                echo "${CHECKSUM} ${FILENAME}" >> "${FILENAME}.md5"
                mv -f ${FILENAME} ${COPY_DIR}/${BDATE}
                mv -f "${FILENAME}.md5" ${COPY_DIR}/${BDATE}
        done
#CRI
lunch oct_jfltecri-userdebug && make installclean && make otapackage -j21
find out/target/product  '(' -name '*ota-eng*.zip' -size +100000k -print0 ')' |
        xargs --null md5sum |
        while read CHECKSUM FILENAME
        do
                echo "${CHECKSUM} ${FILENAME}" >> "${FILENAME}.md5"
                mv -f ${FILENAME} ${COPY_DIR}/${BDATE}
                mv -f "${FILENAME}.md5" ${COPY_DIR}/${BDATE}
        done
#CSP
lunch oct_jfltecsp-userdebug && make installclean && make otapackage -j21
find out/target/product  '(' -name '*ota-eng*.zip' -size +100000k -print0 ')' |
        xargs --null md5sum |
        while read CHECKSUM FILENAME
        do
                echo "${CHECKSUM} ${FILENAME}" >> "${FILENAME}.md5"
                mv -f ${FILENAME} ${COPY_DIR}/${BDATE}
                mv -f "${FILENAME}.md5" ${COPY_DIR}/${BDATE}
        done
#TMO
lunch oct_jfltetmo-userdebug && make installclean && make otapackage -j21
find out/target/product  '(' -name '*ota-eng*.zip' -size +100000k -print0 ')' |
        xargs --null md5sum |
        while read CHECKSUM FILENAME
        do
                echo "${CHECKSUM} ${FILENAME}" >> "${FILENAME}.md5"
                mv -f ${FILENAME} ${COPY_DIR}/${BDATE}
                mv -f "${FILENAME}.md5" ${COPY_DIR}/${BDATE}
        done

