#!/bin/bash

PROTO_OUT=$PWD/protocode

echo "#ifndef _PROTOBUF_HEADERS_H_" > protoheader.h
echo "#define _PROTOBUF_HEADERS_H_ " >> protoheader.h
echo "" >> protoheader.h
for file in `ls $PROTO_OUT/*.pb.h`
do
    echo "#include \"$file\"" >> protoheader.h
done
echo "" >> protoheader.h
echo "#endif // _PROTOBUF_HEADERS_H_" >> protoheader.h
