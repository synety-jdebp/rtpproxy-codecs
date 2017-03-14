#!/bin/sh -e
lib="`basename "$1" .a`"
redo-ifchange "${lib}"/CMakeCache.txt
objects="${lib}/src/adaptativeCodebookSearch.o ${lib}/src/codebooks.o ${lib}/src/computeAdaptativeCodebookGain.o ${lib}/src/computeLP.o ${lib}/src/computeWeightedSpeech.o ${lib}/src/decodeAdaptativeCodeVector.o ${lib}/src/decodeFixedCodeVector.o ${lib}/src/decodeGains.o ${lib}/src/decodeLSP.o ${lib}/src/decoder.o ${lib}/src/encoder.o ${lib}/src/findOpenLoopPitchDelay.o ${lib}/src/fixedCodebookSearch.o ${lib}/src/gainQuantization.o ${lib}/src/interpolateqLSP.o ${lib}/src/LP2LSPConversion.o ${lib}/src/LPSynthesisFilter.o ${lib}/src/LSPQuantization.o ${lib}/src/postFilter.o ${lib}/src/postProcessing.o ${lib}/src/preProcessing.o ${lib}/src/qLSP2LP.o ${lib}/src/utils.o ${lib}/src/cng.o ${lib}/src/dtx.o ${lib}/src/vad.o"
redo-ifchange ./archive ${objects}
./archive "$3" ${objects}
