#!/bin/sh

# link with all .a files in /usr/local/lib/dyld
ls -1 ${DEPROOT}/usr/local/lib/dyld/*.a > ${DERIVED_SOURCES_DIR}/archives.txt

# link with crash report archive if it exists
if [ -f ${DEPROOT}/usr/local/lib/libCrashReporterClient.a ]
then
  echo \"${DEPROOT}/usr/local/lib/libCrashReporterClient.a\" >> ${DERIVED_SOURCES_DIR}/archives.txt
fi

# link with crypto archive if it exists
if [ -f ${DEPROOT}/usr/local/lib/libcorecrypto_static.a ]
then
  echo \"${DEPROOT}/usr/local/lib/libcorecrypto_static.a\" >> ${DERIVED_SOURCES_DIR}/archives.txt
fi
