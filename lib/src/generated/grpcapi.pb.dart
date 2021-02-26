///
//  Generated code. Do not modify.
//  source: lib/grpcapi.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class QuoteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuoteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpcapi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pair')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exchange')
    ..hasRequiredFields = false
  ;

  QuoteRequest._() : super();
  factory QuoteRequest({
    $core.String pair,
    $core.String exchange,
  }) {
    final _result = create();
    if (pair != null) {
      _result.pair = pair;
    }
    if (exchange != null) {
      _result.exchange = exchange;
    }
    return _result;
  }
  factory QuoteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuoteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuoteRequest clone() => QuoteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuoteRequest copyWith(void Function(QuoteRequest) updates) => super.copyWith((message) => updates(message as QuoteRequest)) as QuoteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuoteRequest create() => QuoteRequest._();
  QuoteRequest createEmptyInstance() => create();
  static $pb.PbList<QuoteRequest> createRepeated() => $pb.PbList<QuoteRequest>();
  @$core.pragma('dart2js:noInline')
  static QuoteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuoteRequest>(create);
  static QuoteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pair => $_getSZ(0);
  @$pb.TagNumber(1)
  set pair($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPair() => $_has(0);
  @$pb.TagNumber(1)
  void clearPair() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get exchange => $_getSZ(1);
  @$pb.TagNumber(2)
  set exchange($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExchange() => $_has(1);
  @$pb.TagNumber(2)
  void clearExchange() => clearField(2);
}

class QuoteReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuoteReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpcapi'), createEmptyInstance: create)
    ..aOM<QuoteInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'info', subBuilder: QuoteInfo.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'askPrice', $pb.PbFieldType.OD)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bidPrice', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  QuoteReply._() : super();
  factory QuoteReply({
    QuoteInfo info,
    $core.double askPrice,
    $core.double bidPrice,
  }) {
    final _result = create();
    if (info != null) {
      _result.info = info;
    }
    if (askPrice != null) {
      _result.askPrice = askPrice;
    }
    if (bidPrice != null) {
      _result.bidPrice = bidPrice;
    }
    return _result;
  }
  factory QuoteReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuoteReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuoteReply clone() => QuoteReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuoteReply copyWith(void Function(QuoteReply) updates) => super.copyWith((message) => updates(message as QuoteReply)) as QuoteReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuoteReply create() => QuoteReply._();
  QuoteReply createEmptyInstance() => create();
  static $pb.PbList<QuoteReply> createRepeated() => $pb.PbList<QuoteReply>();
  @$core.pragma('dart2js:noInline')
  static QuoteReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuoteReply>(create);
  static QuoteReply _defaultInstance;

  @$pb.TagNumber(1)
  QuoteInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(QuoteInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  QuoteInfo ensureInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get askPrice => $_getN(1);
  @$pb.TagNumber(2)
  set askPrice($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAskPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearAskPrice() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get bidPrice => $_getN(2);
  @$pb.TagNumber(3)
  set bidPrice($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBidPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearBidPrice() => clearField(3);
}

class QuoteInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuoteInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpcapi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pair')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exchange')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'snapshot')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequenceNumber', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  QuoteInfo._() : super();
  factory QuoteInfo({
    $core.String pair,
    $core.String exchange,
    $core.bool snapshot,
    $fixnum.Int64 sequenceNumber,
  }) {
    final _result = create();
    if (pair != null) {
      _result.pair = pair;
    }
    if (exchange != null) {
      _result.exchange = exchange;
    }
    if (snapshot != null) {
      _result.snapshot = snapshot;
    }
    if (sequenceNumber != null) {
      _result.sequenceNumber = sequenceNumber;
    }
    return _result;
  }
  factory QuoteInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuoteInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuoteInfo clone() => QuoteInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuoteInfo copyWith(void Function(QuoteInfo) updates) => super.copyWith((message) => updates(message as QuoteInfo)) as QuoteInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuoteInfo create() => QuoteInfo._();
  QuoteInfo createEmptyInstance() => create();
  static $pb.PbList<QuoteInfo> createRepeated() => $pb.PbList<QuoteInfo>();
  @$core.pragma('dart2js:noInline')
  static QuoteInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuoteInfo>(create);
  static QuoteInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pair => $_getSZ(0);
  @$pb.TagNumber(1)
  set pair($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPair() => $_has(0);
  @$pb.TagNumber(1)
  void clearPair() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get exchange => $_getSZ(1);
  @$pb.TagNumber(2)
  set exchange($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExchange() => $_has(1);
  @$pb.TagNumber(2)
  void clearExchange() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get snapshot => $_getBF(2);
  @$pb.TagNumber(3)
  set snapshot($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSnapshot() => $_has(2);
  @$pb.TagNumber(3)
  void clearSnapshot() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get sequenceNumber => $_getI64(3);
  @$pb.TagNumber(4)
  set sequenceNumber($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSequenceNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearSequenceNumber() => clearField(4);
}

