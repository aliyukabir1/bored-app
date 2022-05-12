// Mocks generated by Mockito 5.1.0 from annotations
// in bored_app/test/helper/mocks.dart.
// Do not manually edit this file.

import 'dart:async' as _i8;
import 'dart:convert' as _i12;
import 'dart:typed_data' as _i13;

import 'package:bloc/bloc.dart' as _i15;
import 'package:bored_app/core/errors/failure.dart' as _i9;
import 'package:bored_app/features/activity/domain/entity/activity.dart'
    as _i10;
import 'package:bored_app/features/activity/domain/repository/activity_repository.dart'
    as _i5;
import 'package:bored_app/features/activity/domain/usecase/get_activity.dart'
    as _i6;
import 'package:bored_app/features/activity/presentation/bloc/activity_bloc.dart'
    as _i7;
import 'package:dartz/dartz.dart' as _i2;
import 'package:http/src/base_request.dart' as _i14;
import 'package:http/src/client.dart' as _i11;
import 'package:http/src/response.dart' as _i3;
import 'package:http/src/streamed_response.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeResponse_1 extends _i1.Fake implements _i3.Response {}

class _FakeStreamedResponse_2 extends _i1.Fake implements _i4.StreamedResponse {
}

class _FakeActivityRepository_3 extends _i1.Fake
    implements _i5.ActivityRepository {}

class _FakeGetActivity_4 extends _i1.Fake implements _i6.GetActivity {}

class _FakeActivityState_5 extends _i1.Fake implements _i7.ActivityState {}

/// A class which mocks [ActivityRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockActivityRepository extends _i1.Mock
    implements _i5.ActivityRepository {
  MockActivityRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i2.Either<_i9.Failure, _i10.Activity>> getActivity() =>
      (super.noSuchMethod(Invocation.method(#getActivity, []),
              returnValue: Future<_i2.Either<_i9.Failure, _i10.Activity>>.value(
                  _FakeEither_0<_i9.Failure, _i10.Activity>()))
          as _i8.Future<_i2.Either<_i9.Failure, _i10.Activity>>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockClient extends _i1.Mock implements _i11.Client {
  MockClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i3.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
              returnValue: Future<_i3.Response>.value(_FakeResponse_1()))
          as _i8.Future<_i3.Response>);
  @override
  _i8.Future<_i3.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
              returnValue: Future<_i3.Response>.value(_FakeResponse_1()))
          as _i8.Future<_i3.Response>);
  @override
  _i8.Future<_i3.Response> post(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i12.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#post, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i3.Response>.value(_FakeResponse_1()))
          as _i8.Future<_i3.Response>);
  @override
  _i8.Future<_i3.Response> put(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i12.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#put, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i3.Response>.value(_FakeResponse_1()))
          as _i8.Future<_i3.Response>);
  @override
  _i8.Future<_i3.Response> patch(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i12.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#patch, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i3.Response>.value(_FakeResponse_1()))
          as _i8.Future<_i3.Response>);
  @override
  _i8.Future<_i3.Response> delete(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i12.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#delete, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i3.Response>.value(_FakeResponse_1()))
          as _i8.Future<_i3.Response>);
  @override
  _i8.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
  @override
  _i8.Future<_i13.Uint8List> readBytes(Uri? url,
          {Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#readBytes, [url], {#headers: headers}),
              returnValue: Future<_i13.Uint8List>.value(_i13.Uint8List(0)))
          as _i8.Future<_i13.Uint8List>);
  @override
  _i8.Future<_i4.StreamedResponse> send(_i14.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
              returnValue:
                  Future<_i4.StreamedResponse>.value(_FakeStreamedResponse_2()))
          as _i8.Future<_i4.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
}

/// A class which mocks [GetActivity].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetActivity extends _i1.Mock implements _i6.GetActivity {
  MockGetActivity() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.ActivityRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeActivityRepository_3()) as _i5.ActivityRepository);
  @override
  _i8.Future<_i2.Either<_i9.Failure, _i10.Activity>> call() =>
      (super.noSuchMethod(Invocation.method(#call, []),
              returnValue: Future<_i2.Either<_i9.Failure, _i10.Activity>>.value(
                  _FakeEither_0<_i9.Failure, _i10.Activity>()))
          as _i8.Future<_i2.Either<_i9.Failure, _i10.Activity>>);
}

/// A class which mocks [ActivityBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockActivityBloc extends _i1.Mock implements _i7.ActivityBloc {
  MockActivityBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.GetActivity get getActivity =>
      (super.noSuchMethod(Invocation.getter(#getActivity),
          returnValue: _FakeGetActivity_4()) as _i6.GetActivity);
  @override
  _i7.ActivityState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _FakeActivityState_5()) as _i7.ActivityState);
  @override
  _i8.Stream<_i7.ActivityState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i7.ActivityState>.empty())
          as _i8.Stream<_i7.ActivityState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  void add(_i7.ActivityEvent? event) =>
      super.noSuchMethod(Invocation.method(#add, [event]),
          returnValueForMissingStub: null);
  @override
  void onEvent(_i7.ActivityEvent? event) =>
      super.noSuchMethod(Invocation.method(#onEvent, [event]),
          returnValueForMissingStub: null);
  @override
  void emit(_i7.ActivityState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void on<E extends _i7.ActivityEvent>(
          _i15.EventHandler<E, _i7.ActivityState>? handler,
          {_i15.EventTransformer<E>? transformer}) =>
      super.noSuchMethod(
          Invocation.method(#on, [handler], {#transformer: transformer}),
          returnValueForMissingStub: null);
  @override
  void onTransition(
          _i15.Transition<_i7.ActivityEvent, _i7.ActivityState>? transition) =>
      super.noSuchMethod(Invocation.method(#onTransition, [transition]),
          returnValueForMissingStub: null);
  @override
  _i8.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i8.Future<void>);
  @override
  void onChange(_i15.Change<_i7.ActivityState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
}
