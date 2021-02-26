///
//  Generated code. Do not modify.
//  source: lib/grpcapi.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use quoteRequestDescriptor instead')
const QuoteRequest$json = const {
  '1': 'QuoteRequest',
  '2': const [
    const {'1': 'pair', '3': 1, '4': 1, '5': 9, '10': 'pair'},
    const {'1': 'exchange', '3': 2, '4': 1, '5': 9, '10': 'exchange'},
  ],
};

/// Descriptor for `QuoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quoteRequestDescriptor = $convert.base64Decode('CgxRdW90ZVJlcXVlc3QSEgoEcGFpchgBIAEoCVIEcGFpchIaCghleGNoYW5nZRgCIAEoCVIIZXhjaGFuZ2U=');
@$core.Deprecated('Use quoteReplyDescriptor instead')
const QuoteReply$json = const {
  '1': 'QuoteReply',
  '2': const [
    const {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.grpcapi.QuoteInfo', '10': 'info'},
    const {'1': 'ask_price', '3': 2, '4': 1, '5': 1, '10': 'askPrice'},
    const {'1': 'bid_price', '3': 3, '4': 1, '5': 1, '10': 'bidPrice'},
  ],
};

/// Descriptor for `QuoteReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quoteReplyDescriptor = $convert.base64Decode('CgpRdW90ZVJlcGx5EiYKBGluZm8YASABKAsyEi5ncnBjYXBpLlF1b3RlSW5mb1IEaW5mbxIbCglhc2tfcHJpY2UYAiABKAFSCGFza1ByaWNlEhsKCWJpZF9wcmljZRgDIAEoAVIIYmlkUHJpY2U=');
@$core.Deprecated('Use quoteInfoDescriptor instead')
const QuoteInfo$json = const {
  '1': 'QuoteInfo',
  '2': const [
    const {'1': 'pair', '3': 1, '4': 1, '5': 9, '10': 'pair'},
    const {'1': 'exchange', '3': 2, '4': 1, '5': 9, '10': 'exchange'},
    const {'1': 'snapshot', '3': 3, '4': 1, '5': 8, '10': 'snapshot'},
    const {'1': 'sequence_number', '3': 4, '4': 1, '5': 4, '10': 'sequenceNumber'},
  ],
};

/// Descriptor for `QuoteInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quoteInfoDescriptor = $convert.base64Decode('CglRdW90ZUluZm8SEgoEcGFpchgBIAEoCVIEcGFpchIaCghleGNoYW5nZRgCIAEoCVIIZXhjaGFuZ2USGgoIc25hcHNob3QYAyABKAhSCHNuYXBzaG90EicKD3NlcXVlbmNlX251bWJlchgEIAEoBFIOc2VxdWVuY2VOdW1iZXI=');
