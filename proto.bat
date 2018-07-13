@echo off

echo #ifndef _PROTOBUF_HEADERS_H_ > protoheader.h
echo #define _PROTOBUF_HEADERS_H_ >> protoheader.h
echo .>> protoheader.h
for /f %%i in ('dir /b ../protocode/*.pb.h') do (
  echo #include "%%i" >> protoheader.h
)
echo .>> protoheader.h
echo #endif //_PROTOBUF_HEADERS_H_ >> protoheader.h
