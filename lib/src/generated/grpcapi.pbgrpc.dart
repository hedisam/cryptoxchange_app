///
//  Generated code. Do not modify.
//  source: lib/grpcapi.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'grpcapi.pb.dart' as $0;
export 'grpcapi.pb.dart';

class PriceServiceClient extends $grpc.Client {
  static final _$streamPrice =
      $grpc.ClientMethod<$0.QuoteRequest, $0.QuoteReply>(
          '/grpcapi.PriceService/StreamPrice',
          ($0.QuoteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.QuoteReply.fromBuffer(value));

  PriceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.QuoteReply> streamPrice($0.QuoteRequest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$streamPrice, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class PriceServiceBase extends $grpc.Service {
  $core.String get $name => 'grpcapi.PriceService';

  PriceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.QuoteRequest, $0.QuoteReply>(
        'StreamPrice',
        streamPrice_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.QuoteRequest.fromBuffer(value),
        ($0.QuoteReply value) => value.writeToBuffer()));
  }

  $async.Stream<$0.QuoteReply> streamPrice_Pre(
      $grpc.ServiceCall call, $async.Future<$0.QuoteRequest> request) async* {
    yield* streamPrice(call, await request);
  }

  $async.Stream<$0.QuoteReply> streamPrice(
      $grpc.ServiceCall call, $0.QuoteRequest request);
}
