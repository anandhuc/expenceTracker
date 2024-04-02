// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpanceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedCata, DateTime? selecetedDate)
        dropcata,
    required TResult Function(CatagoryType cataType) getcata,
    required TResult Function(String selectedPaymentType) payTypes,
    required TResult Function(String amt, String? Decs) addTransaction,
    required TResult Function() getCatagoryListFromDb,
    required TResult Function() intro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult? Function(CatagoryType cataType)? getcata,
    TResult? Function(String selectedPaymentType)? payTypes,
    TResult? Function(String amt, String? Decs)? addTransaction,
    TResult? Function()? getCatagoryListFromDb,
    TResult? Function()? intro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult Function(CatagoryType cataType)? getcata,
    TResult Function(String selectedPaymentType)? payTypes,
    TResult Function(String amt, String? Decs)? addTransaction,
    TResult Function()? getCatagoryListFromDb,
    TResult Function()? intro,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DropCatagory value) dropcata,
    required TResult Function(GetCataForTancastion value) getcata,
    required TResult Function(PaymentTypes value) payTypes,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(GetTransactionList value) getCatagoryListFromDb,
    required TResult Function(InitialCatagory value) intro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DropCatagory value)? dropcata,
    TResult? Function(GetCataForTancastion value)? getcata,
    TResult? Function(PaymentTypes value)? payTypes,
    TResult? Function(AddTransaction value)? addTransaction,
    TResult? Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult? Function(InitialCatagory value)? intro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DropCatagory value)? dropcata,
    TResult Function(GetCataForTancastion value)? getcata,
    TResult Function(PaymentTypes value)? payTypes,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult Function(InitialCatagory value)? intro,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpanceEventCopyWith<$Res> {
  factory $ExpanceEventCopyWith(
          ExpanceEvent value, $Res Function(ExpanceEvent) then) =
      _$ExpanceEventCopyWithImpl<$Res, ExpanceEvent>;
}

/// @nodoc
class _$ExpanceEventCopyWithImpl<$Res, $Val extends ExpanceEvent>
    implements $ExpanceEventCopyWith<$Res> {
  _$ExpanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DropCatagoryImplCopyWith<$Res> {
  factory _$$DropCatagoryImplCopyWith(
          _$DropCatagoryImpl value, $Res Function(_$DropCatagoryImpl) then) =
      __$$DropCatagoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedCata, DateTime? selecetedDate});
}

/// @nodoc
class __$$DropCatagoryImplCopyWithImpl<$Res>
    extends _$ExpanceEventCopyWithImpl<$Res, _$DropCatagoryImpl>
    implements _$$DropCatagoryImplCopyWith<$Res> {
  __$$DropCatagoryImplCopyWithImpl(
      _$DropCatagoryImpl _value, $Res Function(_$DropCatagoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCata = null,
    Object? selecetedDate = freezed,
  }) {
    return _then(_$DropCatagoryImpl(
      selectedCata: null == selectedCata
          ? _value.selectedCata
          : selectedCata // ignore: cast_nullable_to_non_nullable
              as String,
      selecetedDate: freezed == selecetedDate
          ? _value.selecetedDate
          : selecetedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$DropCatagoryImpl implements DropCatagory {
  const _$DropCatagoryImpl({required this.selectedCata, this.selecetedDate});

  @override
  final String selectedCata;
  @override
  final DateTime? selecetedDate;

  @override
  String toString() {
    return 'ExpanceEvent.dropcata(selectedCata: $selectedCata, selecetedDate: $selecetedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropCatagoryImpl &&
            (identical(other.selectedCata, selectedCata) ||
                other.selectedCata == selectedCata) &&
            (identical(other.selecetedDate, selecetedDate) ||
                other.selecetedDate == selecetedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCata, selecetedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DropCatagoryImplCopyWith<_$DropCatagoryImpl> get copyWith =>
      __$$DropCatagoryImplCopyWithImpl<_$DropCatagoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedCata, DateTime? selecetedDate)
        dropcata,
    required TResult Function(CatagoryType cataType) getcata,
    required TResult Function(String selectedPaymentType) payTypes,
    required TResult Function(String amt, String? Decs) addTransaction,
    required TResult Function() getCatagoryListFromDb,
    required TResult Function() intro,
  }) {
    return dropcata(selectedCata, selecetedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult? Function(CatagoryType cataType)? getcata,
    TResult? Function(String selectedPaymentType)? payTypes,
    TResult? Function(String amt, String? Decs)? addTransaction,
    TResult? Function()? getCatagoryListFromDb,
    TResult? Function()? intro,
  }) {
    return dropcata?.call(selectedCata, selecetedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult Function(CatagoryType cataType)? getcata,
    TResult Function(String selectedPaymentType)? payTypes,
    TResult Function(String amt, String? Decs)? addTransaction,
    TResult Function()? getCatagoryListFromDb,
    TResult Function()? intro,
    required TResult orElse(),
  }) {
    if (dropcata != null) {
      return dropcata(selectedCata, selecetedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DropCatagory value) dropcata,
    required TResult Function(GetCataForTancastion value) getcata,
    required TResult Function(PaymentTypes value) payTypes,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(GetTransactionList value) getCatagoryListFromDb,
    required TResult Function(InitialCatagory value) intro,
  }) {
    return dropcata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DropCatagory value)? dropcata,
    TResult? Function(GetCataForTancastion value)? getcata,
    TResult? Function(PaymentTypes value)? payTypes,
    TResult? Function(AddTransaction value)? addTransaction,
    TResult? Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult? Function(InitialCatagory value)? intro,
  }) {
    return dropcata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DropCatagory value)? dropcata,
    TResult Function(GetCataForTancastion value)? getcata,
    TResult Function(PaymentTypes value)? payTypes,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult Function(InitialCatagory value)? intro,
    required TResult orElse(),
  }) {
    if (dropcata != null) {
      return dropcata(this);
    }
    return orElse();
  }
}

abstract class DropCatagory implements ExpanceEvent {
  const factory DropCatagory(
      {required final String selectedCata,
      final DateTime? selecetedDate}) = _$DropCatagoryImpl;

  String get selectedCata;
  DateTime? get selecetedDate;
  @JsonKey(ignore: true)
  _$$DropCatagoryImplCopyWith<_$DropCatagoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCataForTancastionImplCopyWith<$Res> {
  factory _$$GetCataForTancastionImplCopyWith(_$GetCataForTancastionImpl value,
          $Res Function(_$GetCataForTancastionImpl) then) =
      __$$GetCataForTancastionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CatagoryType cataType});
}

/// @nodoc
class __$$GetCataForTancastionImplCopyWithImpl<$Res>
    extends _$ExpanceEventCopyWithImpl<$Res, _$GetCataForTancastionImpl>
    implements _$$GetCataForTancastionImplCopyWith<$Res> {
  __$$GetCataForTancastionImplCopyWithImpl(_$GetCataForTancastionImpl _value,
      $Res Function(_$GetCataForTancastionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cataType = null,
  }) {
    return _then(_$GetCataForTancastionImpl(
      cataType: null == cataType
          ? _value.cataType
          : cataType // ignore: cast_nullable_to_non_nullable
              as CatagoryType,
    ));
  }
}

/// @nodoc

class _$GetCataForTancastionImpl implements GetCataForTancastion {
  const _$GetCataForTancastionImpl({required this.cataType});

  @override
  final CatagoryType cataType;

  @override
  String toString() {
    return 'ExpanceEvent.getcata(cataType: $cataType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCataForTancastionImpl &&
            (identical(other.cataType, cataType) ||
                other.cataType == cataType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cataType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCataForTancastionImplCopyWith<_$GetCataForTancastionImpl>
      get copyWith =>
          __$$GetCataForTancastionImplCopyWithImpl<_$GetCataForTancastionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedCata, DateTime? selecetedDate)
        dropcata,
    required TResult Function(CatagoryType cataType) getcata,
    required TResult Function(String selectedPaymentType) payTypes,
    required TResult Function(String amt, String? Decs) addTransaction,
    required TResult Function() getCatagoryListFromDb,
    required TResult Function() intro,
  }) {
    return getcata(cataType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult? Function(CatagoryType cataType)? getcata,
    TResult? Function(String selectedPaymentType)? payTypes,
    TResult? Function(String amt, String? Decs)? addTransaction,
    TResult? Function()? getCatagoryListFromDb,
    TResult? Function()? intro,
  }) {
    return getcata?.call(cataType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult Function(CatagoryType cataType)? getcata,
    TResult Function(String selectedPaymentType)? payTypes,
    TResult Function(String amt, String? Decs)? addTransaction,
    TResult Function()? getCatagoryListFromDb,
    TResult Function()? intro,
    required TResult orElse(),
  }) {
    if (getcata != null) {
      return getcata(cataType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DropCatagory value) dropcata,
    required TResult Function(GetCataForTancastion value) getcata,
    required TResult Function(PaymentTypes value) payTypes,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(GetTransactionList value) getCatagoryListFromDb,
    required TResult Function(InitialCatagory value) intro,
  }) {
    return getcata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DropCatagory value)? dropcata,
    TResult? Function(GetCataForTancastion value)? getcata,
    TResult? Function(PaymentTypes value)? payTypes,
    TResult? Function(AddTransaction value)? addTransaction,
    TResult? Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult? Function(InitialCatagory value)? intro,
  }) {
    return getcata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DropCatagory value)? dropcata,
    TResult Function(GetCataForTancastion value)? getcata,
    TResult Function(PaymentTypes value)? payTypes,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult Function(InitialCatagory value)? intro,
    required TResult orElse(),
  }) {
    if (getcata != null) {
      return getcata(this);
    }
    return orElse();
  }
}

abstract class GetCataForTancastion implements ExpanceEvent {
  const factory GetCataForTancastion({required final CatagoryType cataType}) =
      _$GetCataForTancastionImpl;

  CatagoryType get cataType;
  @JsonKey(ignore: true)
  _$$GetCataForTancastionImplCopyWith<_$GetCataForTancastionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentTypesImplCopyWith<$Res> {
  factory _$$PaymentTypesImplCopyWith(
          _$PaymentTypesImpl value, $Res Function(_$PaymentTypesImpl) then) =
      __$$PaymentTypesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedPaymentType});
}

/// @nodoc
class __$$PaymentTypesImplCopyWithImpl<$Res>
    extends _$ExpanceEventCopyWithImpl<$Res, _$PaymentTypesImpl>
    implements _$$PaymentTypesImplCopyWith<$Res> {
  __$$PaymentTypesImplCopyWithImpl(
      _$PaymentTypesImpl _value, $Res Function(_$PaymentTypesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPaymentType = null,
  }) {
    return _then(_$PaymentTypesImpl(
      selectedPaymentType: null == selectedPaymentType
          ? _value.selectedPaymentType
          : selectedPaymentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentTypesImpl implements PaymentTypes {
  const _$PaymentTypesImpl({required this.selectedPaymentType});

  @override
  final String selectedPaymentType;

  @override
  String toString() {
    return 'ExpanceEvent.payTypes(selectedPaymentType: $selectedPaymentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentTypesImpl &&
            (identical(other.selectedPaymentType, selectedPaymentType) ||
                other.selectedPaymentType == selectedPaymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPaymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentTypesImplCopyWith<_$PaymentTypesImpl> get copyWith =>
      __$$PaymentTypesImplCopyWithImpl<_$PaymentTypesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedCata, DateTime? selecetedDate)
        dropcata,
    required TResult Function(CatagoryType cataType) getcata,
    required TResult Function(String selectedPaymentType) payTypes,
    required TResult Function(String amt, String? Decs) addTransaction,
    required TResult Function() getCatagoryListFromDb,
    required TResult Function() intro,
  }) {
    return payTypes(selectedPaymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult? Function(CatagoryType cataType)? getcata,
    TResult? Function(String selectedPaymentType)? payTypes,
    TResult? Function(String amt, String? Decs)? addTransaction,
    TResult? Function()? getCatagoryListFromDb,
    TResult? Function()? intro,
  }) {
    return payTypes?.call(selectedPaymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult Function(CatagoryType cataType)? getcata,
    TResult Function(String selectedPaymentType)? payTypes,
    TResult Function(String amt, String? Decs)? addTransaction,
    TResult Function()? getCatagoryListFromDb,
    TResult Function()? intro,
    required TResult orElse(),
  }) {
    if (payTypes != null) {
      return payTypes(selectedPaymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DropCatagory value) dropcata,
    required TResult Function(GetCataForTancastion value) getcata,
    required TResult Function(PaymentTypes value) payTypes,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(GetTransactionList value) getCatagoryListFromDb,
    required TResult Function(InitialCatagory value) intro,
  }) {
    return payTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DropCatagory value)? dropcata,
    TResult? Function(GetCataForTancastion value)? getcata,
    TResult? Function(PaymentTypes value)? payTypes,
    TResult? Function(AddTransaction value)? addTransaction,
    TResult? Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult? Function(InitialCatagory value)? intro,
  }) {
    return payTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DropCatagory value)? dropcata,
    TResult Function(GetCataForTancastion value)? getcata,
    TResult Function(PaymentTypes value)? payTypes,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult Function(InitialCatagory value)? intro,
    required TResult orElse(),
  }) {
    if (payTypes != null) {
      return payTypes(this);
    }
    return orElse();
  }
}

abstract class PaymentTypes implements ExpanceEvent {
  const factory PaymentTypes({required final String selectedPaymentType}) =
      _$PaymentTypesImpl;

  String get selectedPaymentType;
  @JsonKey(ignore: true)
  _$$PaymentTypesImplCopyWith<_$PaymentTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTransactionImplCopyWith<$Res> {
  factory _$$AddTransactionImplCopyWith(_$AddTransactionImpl value,
          $Res Function(_$AddTransactionImpl) then) =
      __$$AddTransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String amt, String? Decs});
}

/// @nodoc
class __$$AddTransactionImplCopyWithImpl<$Res>
    extends _$ExpanceEventCopyWithImpl<$Res, _$AddTransactionImpl>
    implements _$$AddTransactionImplCopyWith<$Res> {
  __$$AddTransactionImplCopyWithImpl(
      _$AddTransactionImpl _value, $Res Function(_$AddTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amt = null,
    Object? Decs = freezed,
  }) {
    return _then(_$AddTransactionImpl(
      amt: null == amt
          ? _value.amt
          : amt // ignore: cast_nullable_to_non_nullable
              as String,
      Decs: freezed == Decs
          ? _value.Decs
          : Decs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddTransactionImpl implements AddTransaction {
  const _$AddTransactionImpl({required this.amt, this.Decs});

  @override
  final String amt;
  @override
  final String? Decs;

  @override
  String toString() {
    return 'ExpanceEvent.addTransaction(amt: $amt, Decs: $Decs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactionImpl &&
            (identical(other.amt, amt) || other.amt == amt) &&
            (identical(other.Decs, Decs) || other.Decs == Decs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amt, Decs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransactionImplCopyWith<_$AddTransactionImpl> get copyWith =>
      __$$AddTransactionImplCopyWithImpl<_$AddTransactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedCata, DateTime? selecetedDate)
        dropcata,
    required TResult Function(CatagoryType cataType) getcata,
    required TResult Function(String selectedPaymentType) payTypes,
    required TResult Function(String amt, String? Decs) addTransaction,
    required TResult Function() getCatagoryListFromDb,
    required TResult Function() intro,
  }) {
    return addTransaction(amt, Decs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult? Function(CatagoryType cataType)? getcata,
    TResult? Function(String selectedPaymentType)? payTypes,
    TResult? Function(String amt, String? Decs)? addTransaction,
    TResult? Function()? getCatagoryListFromDb,
    TResult? Function()? intro,
  }) {
    return addTransaction?.call(amt, Decs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult Function(CatagoryType cataType)? getcata,
    TResult Function(String selectedPaymentType)? payTypes,
    TResult Function(String amt, String? Decs)? addTransaction,
    TResult Function()? getCatagoryListFromDb,
    TResult Function()? intro,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(amt, Decs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DropCatagory value) dropcata,
    required TResult Function(GetCataForTancastion value) getcata,
    required TResult Function(PaymentTypes value) payTypes,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(GetTransactionList value) getCatagoryListFromDb,
    required TResult Function(InitialCatagory value) intro,
  }) {
    return addTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DropCatagory value)? dropcata,
    TResult? Function(GetCataForTancastion value)? getcata,
    TResult? Function(PaymentTypes value)? payTypes,
    TResult? Function(AddTransaction value)? addTransaction,
    TResult? Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult? Function(InitialCatagory value)? intro,
  }) {
    return addTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DropCatagory value)? dropcata,
    TResult Function(GetCataForTancastion value)? getcata,
    TResult Function(PaymentTypes value)? payTypes,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult Function(InitialCatagory value)? intro,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(this);
    }
    return orElse();
  }
}

abstract class AddTransaction implements ExpanceEvent {
  const factory AddTransaction(
      {required final String amt, final String? Decs}) = _$AddTransactionImpl;

  String get amt;
  String? get Decs;
  @JsonKey(ignore: true)
  _$$AddTransactionImplCopyWith<_$AddTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTransactionListImplCopyWith<$Res> {
  factory _$$GetTransactionListImplCopyWith(_$GetTransactionListImpl value,
          $Res Function(_$GetTransactionListImpl) then) =
      __$$GetTransactionListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTransactionListImplCopyWithImpl<$Res>
    extends _$ExpanceEventCopyWithImpl<$Res, _$GetTransactionListImpl>
    implements _$$GetTransactionListImplCopyWith<$Res> {
  __$$GetTransactionListImplCopyWithImpl(_$GetTransactionListImpl _value,
      $Res Function(_$GetTransactionListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTransactionListImpl implements GetTransactionList {
  const _$GetTransactionListImpl();

  @override
  String toString() {
    return 'ExpanceEvent.getCatagoryListFromDb()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTransactionListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedCata, DateTime? selecetedDate)
        dropcata,
    required TResult Function(CatagoryType cataType) getcata,
    required TResult Function(String selectedPaymentType) payTypes,
    required TResult Function(String amt, String? Decs) addTransaction,
    required TResult Function() getCatagoryListFromDb,
    required TResult Function() intro,
  }) {
    return getCatagoryListFromDb();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult? Function(CatagoryType cataType)? getcata,
    TResult? Function(String selectedPaymentType)? payTypes,
    TResult? Function(String amt, String? Decs)? addTransaction,
    TResult? Function()? getCatagoryListFromDb,
    TResult? Function()? intro,
  }) {
    return getCatagoryListFromDb?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult Function(CatagoryType cataType)? getcata,
    TResult Function(String selectedPaymentType)? payTypes,
    TResult Function(String amt, String? Decs)? addTransaction,
    TResult Function()? getCatagoryListFromDb,
    TResult Function()? intro,
    required TResult orElse(),
  }) {
    if (getCatagoryListFromDb != null) {
      return getCatagoryListFromDb();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DropCatagory value) dropcata,
    required TResult Function(GetCataForTancastion value) getcata,
    required TResult Function(PaymentTypes value) payTypes,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(GetTransactionList value) getCatagoryListFromDb,
    required TResult Function(InitialCatagory value) intro,
  }) {
    return getCatagoryListFromDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DropCatagory value)? dropcata,
    TResult? Function(GetCataForTancastion value)? getcata,
    TResult? Function(PaymentTypes value)? payTypes,
    TResult? Function(AddTransaction value)? addTransaction,
    TResult? Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult? Function(InitialCatagory value)? intro,
  }) {
    return getCatagoryListFromDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DropCatagory value)? dropcata,
    TResult Function(GetCataForTancastion value)? getcata,
    TResult Function(PaymentTypes value)? payTypes,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult Function(InitialCatagory value)? intro,
    required TResult orElse(),
  }) {
    if (getCatagoryListFromDb != null) {
      return getCatagoryListFromDb(this);
    }
    return orElse();
  }
}

abstract class GetTransactionList implements ExpanceEvent {
  const factory GetTransactionList() = _$GetTransactionListImpl;
}

/// @nodoc
abstract class _$$InitialCatagoryImplCopyWith<$Res> {
  factory _$$InitialCatagoryImplCopyWith(_$InitialCatagoryImpl value,
          $Res Function(_$InitialCatagoryImpl) then) =
      __$$InitialCatagoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCatagoryImplCopyWithImpl<$Res>
    extends _$ExpanceEventCopyWithImpl<$Res, _$InitialCatagoryImpl>
    implements _$$InitialCatagoryImplCopyWith<$Res> {
  __$$InitialCatagoryImplCopyWithImpl(
      _$InitialCatagoryImpl _value, $Res Function(_$InitialCatagoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCatagoryImpl implements InitialCatagory {
  const _$InitialCatagoryImpl();

  @override
  String toString() {
    return 'ExpanceEvent.intro()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCatagoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedCata, DateTime? selecetedDate)
        dropcata,
    required TResult Function(CatagoryType cataType) getcata,
    required TResult Function(String selectedPaymentType) payTypes,
    required TResult Function(String amt, String? Decs) addTransaction,
    required TResult Function() getCatagoryListFromDb,
    required TResult Function() intro,
  }) {
    return intro();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult? Function(CatagoryType cataType)? getcata,
    TResult? Function(String selectedPaymentType)? payTypes,
    TResult? Function(String amt, String? Decs)? addTransaction,
    TResult? Function()? getCatagoryListFromDb,
    TResult? Function()? intro,
  }) {
    return intro?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedCata, DateTime? selecetedDate)? dropcata,
    TResult Function(CatagoryType cataType)? getcata,
    TResult Function(String selectedPaymentType)? payTypes,
    TResult Function(String amt, String? Decs)? addTransaction,
    TResult Function()? getCatagoryListFromDb,
    TResult Function()? intro,
    required TResult orElse(),
  }) {
    if (intro != null) {
      return intro();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DropCatagory value) dropcata,
    required TResult Function(GetCataForTancastion value) getcata,
    required TResult Function(PaymentTypes value) payTypes,
    required TResult Function(AddTransaction value) addTransaction,
    required TResult Function(GetTransactionList value) getCatagoryListFromDb,
    required TResult Function(InitialCatagory value) intro,
  }) {
    return intro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DropCatagory value)? dropcata,
    TResult? Function(GetCataForTancastion value)? getcata,
    TResult? Function(PaymentTypes value)? payTypes,
    TResult? Function(AddTransaction value)? addTransaction,
    TResult? Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult? Function(InitialCatagory value)? intro,
  }) {
    return intro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DropCatagory value)? dropcata,
    TResult Function(GetCataForTancastion value)? getcata,
    TResult Function(PaymentTypes value)? payTypes,
    TResult Function(AddTransaction value)? addTransaction,
    TResult Function(GetTransactionList value)? getCatagoryListFromDb,
    TResult Function(InitialCatagory value)? intro,
    required TResult orElse(),
  }) {
    if (intro != null) {
      return intro(this);
    }
    return orElse();
  }
}

abstract class InitialCatagory implements ExpanceEvent {
  const factory InitialCatagory() = _$InitialCatagoryImpl;
}

/// @nodoc
mixin _$ExpanceState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<CatagoryModel> get drop => throw _privateConstructorUsedError;
  List<String> get paymentType => throw _privateConstructorUsedError;
  List<TransactionModel> get expance => throw _privateConstructorUsedError;
  List<TransactionModel> get income => throw _privateConstructorUsedError;
  String get selectedPayType => throw _privateConstructorUsedError;
  String get selectedCata => throw _privateConstructorUsedError;
  String get totalIncome => throw _privateConstructorUsedError;
  String get totalExpence => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpanceStateCopyWith<ExpanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpanceStateCopyWith<$Res> {
  factory $ExpanceStateCopyWith(
          ExpanceState value, $Res Function(ExpanceState) then) =
      _$ExpanceStateCopyWithImpl<$Res, ExpanceState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<CatagoryModel> drop,
      List<String> paymentType,
      List<TransactionModel> expance,
      List<TransactionModel> income,
      String selectedPayType,
      String selectedCata,
      String totalIncome,
      String totalExpence,
      DateTime? selectedDate});
}

/// @nodoc
class _$ExpanceStateCopyWithImpl<$Res, $Val extends ExpanceState>
    implements $ExpanceStateCopyWith<$Res> {
  _$ExpanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? drop = null,
    Object? paymentType = null,
    Object? expance = null,
    Object? income = null,
    Object? selectedPayType = null,
    Object? selectedCata = null,
    Object? totalIncome = null,
    Object? totalExpence = null,
    Object? selectedDate = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      drop: null == drop
          ? _value.drop
          : drop // ignore: cast_nullable_to_non_nullable
              as List<CatagoryModel>,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      expance: null == expance
          ? _value.expance
          : expance // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      selectedPayType: null == selectedPayType
          ? _value.selectedPayType
          : selectedPayType // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCata: null == selectedCata
          ? _value.selectedCata
          : selectedCata // ignore: cast_nullable_to_non_nullable
              as String,
      totalIncome: null == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as String,
      totalExpence: null == totalExpence
          ? _value.totalExpence
          : totalExpence // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpanceStateImplCopyWith<$Res>
    implements $ExpanceStateCopyWith<$Res> {
  factory _$$ExpanceStateImplCopyWith(
          _$ExpanceStateImpl value, $Res Function(_$ExpanceStateImpl) then) =
      __$$ExpanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<CatagoryModel> drop,
      List<String> paymentType,
      List<TransactionModel> expance,
      List<TransactionModel> income,
      String selectedPayType,
      String selectedCata,
      String totalIncome,
      String totalExpence,
      DateTime? selectedDate});
}

/// @nodoc
class __$$ExpanceStateImplCopyWithImpl<$Res>
    extends _$ExpanceStateCopyWithImpl<$Res, _$ExpanceStateImpl>
    implements _$$ExpanceStateImplCopyWith<$Res> {
  __$$ExpanceStateImplCopyWithImpl(
      _$ExpanceStateImpl _value, $Res Function(_$ExpanceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? drop = null,
    Object? paymentType = null,
    Object? expance = null,
    Object? income = null,
    Object? selectedPayType = null,
    Object? selectedCata = null,
    Object? totalIncome = null,
    Object? totalExpence = null,
    Object? selectedDate = freezed,
  }) {
    return _then(_$ExpanceStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      drop: null == drop
          ? _value._drop
          : drop // ignore: cast_nullable_to_non_nullable
              as List<CatagoryModel>,
      paymentType: null == paymentType
          ? _value._paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      expance: null == expance
          ? _value._expance
          : expance // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      income: null == income
          ? _value._income
          : income // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      selectedPayType: null == selectedPayType
          ? _value.selectedPayType
          : selectedPayType // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCata: null == selectedCata
          ? _value.selectedCata
          : selectedCata // ignore: cast_nullable_to_non_nullable
              as String,
      totalIncome: null == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as String,
      totalExpence: null == totalExpence
          ? _value.totalExpence
          : totalExpence // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ExpanceStateImpl implements _ExpanceState {
  _$ExpanceStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<CatagoryModel> drop,
      required final List<String> paymentType,
      required final List<TransactionModel> expance,
      required final List<TransactionModel> income,
      required this.selectedPayType,
      required this.selectedCata,
      required this.totalIncome,
      required this.totalExpence,
      this.selectedDate})
      : _drop = drop,
        _paymentType = paymentType,
        _expance = expance,
        _income = income;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<CatagoryModel> _drop;
  @override
  List<CatagoryModel> get drop {
    if (_drop is EqualUnmodifiableListView) return _drop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drop);
  }

  final List<String> _paymentType;
  @override
  List<String> get paymentType {
    if (_paymentType is EqualUnmodifiableListView) return _paymentType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentType);
  }

  final List<TransactionModel> _expance;
  @override
  List<TransactionModel> get expance {
    if (_expance is EqualUnmodifiableListView) return _expance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expance);
  }

  final List<TransactionModel> _income;
  @override
  List<TransactionModel> get income {
    if (_income is EqualUnmodifiableListView) return _income;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_income);
  }

  @override
  final String selectedPayType;
  @override
  final String selectedCata;
  @override
  final String totalIncome;
  @override
  final String totalExpence;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'ExpanceState(isLoading: $isLoading, isError: $isError, drop: $drop, paymentType: $paymentType, expance: $expance, income: $income, selectedPayType: $selectedPayType, selectedCata: $selectedCata, totalIncome: $totalIncome, totalExpence: $totalExpence, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpanceStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._drop, _drop) &&
            const DeepCollectionEquality()
                .equals(other._paymentType, _paymentType) &&
            const DeepCollectionEquality().equals(other._expance, _expance) &&
            const DeepCollectionEquality().equals(other._income, _income) &&
            (identical(other.selectedPayType, selectedPayType) ||
                other.selectedPayType == selectedPayType) &&
            (identical(other.selectedCata, selectedCata) ||
                other.selectedCata == selectedCata) &&
            (identical(other.totalIncome, totalIncome) ||
                other.totalIncome == totalIncome) &&
            (identical(other.totalExpence, totalExpence) ||
                other.totalExpence == totalExpence) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_drop),
      const DeepCollectionEquality().hash(_paymentType),
      const DeepCollectionEquality().hash(_expance),
      const DeepCollectionEquality().hash(_income),
      selectedPayType,
      selectedCata,
      totalIncome,
      totalExpence,
      selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpanceStateImplCopyWith<_$ExpanceStateImpl> get copyWith =>
      __$$ExpanceStateImplCopyWithImpl<_$ExpanceStateImpl>(this, _$identity);
}

abstract class _ExpanceState implements ExpanceState {
  factory _ExpanceState(
      {required final bool isLoading,
      required final bool isError,
      required final List<CatagoryModel> drop,
      required final List<String> paymentType,
      required final List<TransactionModel> expance,
      required final List<TransactionModel> income,
      required final String selectedPayType,
      required final String selectedCata,
      required final String totalIncome,
      required final String totalExpence,
      final DateTime? selectedDate}) = _$ExpanceStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<CatagoryModel> get drop;
  @override
  List<String> get paymentType;
  @override
  List<TransactionModel> get expance;
  @override
  List<TransactionModel> get income;
  @override
  String get selectedPayType;
  @override
  String get selectedCata;
  @override
  String get totalIncome;
  @override
  String get totalExpence;
  @override
  DateTime? get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$ExpanceStateImplCopyWith<_$ExpanceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
