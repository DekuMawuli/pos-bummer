// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final int id;
  final String fullName;
  final String username;
  final String password;
  final String phone;
  final bool userLoggedIn;
  final bool isAdmin;
  User(
      {@required this.id,
      @required this.fullName,
      @required this.username,
      @required this.password,
      @required this.phone,
      @required this.userLoggedIn,
      @required this.isAdmin});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return User(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      fullName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}full_name']),
      username: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
      password: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}password']),
      phone:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}phone']),
      userLoggedIn: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_logged_in']),
      isAdmin:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_admin']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || fullName != null) {
      map['full_name'] = Variable<String>(fullName);
    }
    if (!nullToAbsent || username != null) {
      map['username'] = Variable<String>(username);
    }
    if (!nullToAbsent || password != null) {
      map['password'] = Variable<String>(password);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || userLoggedIn != null) {
      map['user_logged_in'] = Variable<bool>(userLoggedIn);
    }
    if (!nullToAbsent || isAdmin != null) {
      map['is_admin'] = Variable<bool>(isAdmin);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      fullName: fullName == null && nullToAbsent
          ? const Value.absent()
          : Value(fullName),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      password: password == null && nullToAbsent
          ? const Value.absent()
          : Value(password),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      userLoggedIn: userLoggedIn == null && nullToAbsent
          ? const Value.absent()
          : Value(userLoggedIn),
      isAdmin: isAdmin == null && nullToAbsent
          ? const Value.absent()
          : Value(isAdmin),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      fullName: serializer.fromJson<String>(json['fullName']),
      username: serializer.fromJson<String>(json['username']),
      password: serializer.fromJson<String>(json['password']),
      phone: serializer.fromJson<String>(json['phone']),
      userLoggedIn: serializer.fromJson<bool>(json['userLoggedIn']),
      isAdmin: serializer.fromJson<bool>(json['isAdmin']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'fullName': serializer.toJson<String>(fullName),
      'username': serializer.toJson<String>(username),
      'password': serializer.toJson<String>(password),
      'phone': serializer.toJson<String>(phone),
      'userLoggedIn': serializer.toJson<bool>(userLoggedIn),
      'isAdmin': serializer.toJson<bool>(isAdmin),
    };
  }

  User copyWith(
          {int id,
          String fullName,
          String username,
          String password,
          String phone,
          bool userLoggedIn,
          bool isAdmin}) =>
      User(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        username: username ?? this.username,
        password: password ?? this.password,
        phone: phone ?? this.phone,
        userLoggedIn: userLoggedIn ?? this.userLoggedIn,
        isAdmin: isAdmin ?? this.isAdmin,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('phone: $phone, ')
          ..write('userLoggedIn: $userLoggedIn, ')
          ..write('isAdmin: $isAdmin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          fullName.hashCode,
          $mrjc(
              username.hashCode,
              $mrjc(
                  password.hashCode,
                  $mrjc(phone.hashCode,
                      $mrjc(userLoggedIn.hashCode, isAdmin.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.fullName == this.fullName &&
          other.username == this.username &&
          other.password == this.password &&
          other.phone == this.phone &&
          other.userLoggedIn == this.userLoggedIn &&
          other.isAdmin == this.isAdmin);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> fullName;
  final Value<String> username;
  final Value<String> password;
  final Value<String> phone;
  final Value<bool> userLoggedIn;
  final Value<bool> isAdmin;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.fullName = const Value.absent(),
    this.username = const Value.absent(),
    this.password = const Value.absent(),
    this.phone = const Value.absent(),
    this.userLoggedIn = const Value.absent(),
    this.isAdmin = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    @required String fullName,
    @required String username,
    @required String password,
    @required String phone,
    this.userLoggedIn = const Value.absent(),
    this.isAdmin = const Value.absent(),
  })  : fullName = Value(fullName),
        username = Value(username),
        password = Value(password),
        phone = Value(phone);
  static Insertable<User> custom({
    Expression<int> id,
    Expression<String> fullName,
    Expression<String> username,
    Expression<String> password,
    Expression<String> phone,
    Expression<bool> userLoggedIn,
    Expression<bool> isAdmin,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fullName != null) 'full_name': fullName,
      if (username != null) 'username': username,
      if (password != null) 'password': password,
      if (phone != null) 'phone': phone,
      if (userLoggedIn != null) 'user_logged_in': userLoggedIn,
      if (isAdmin != null) 'is_admin': isAdmin,
    });
  }

  UsersCompanion copyWith(
      {Value<int> id,
      Value<String> fullName,
      Value<String> username,
      Value<String> password,
      Value<String> phone,
      Value<bool> userLoggedIn,
      Value<bool> isAdmin}) {
    return UsersCompanion(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      username: username ?? this.username,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      userLoggedIn: userLoggedIn ?? this.userLoggedIn,
      isAdmin: isAdmin ?? this.isAdmin,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (userLoggedIn.present) {
      map['user_logged_in'] = Variable<bool>(userLoggedIn.value);
    }
    if (isAdmin.present) {
      map['is_admin'] = Variable<bool>(isAdmin.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('phone: $phone, ')
          ..write('userLoggedIn: $userLoggedIn, ')
          ..write('isAdmin: $isAdmin')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _fullNameMeta = const VerificationMeta('fullName');
  GeneratedTextColumn _fullName;
  @override
  GeneratedTextColumn get fullName => _fullName ??= _constructFullName();
  GeneratedTextColumn _constructFullName() {
    return GeneratedTextColumn(
      'full_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  GeneratedTextColumn _username;
  @override
  GeneratedTextColumn get username => _username ??= _constructUsername();
  GeneratedTextColumn _constructUsername() {
    return GeneratedTextColumn(
      'username',
      $tableName,
      false,
    );
  }

  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  GeneratedTextColumn _password;
  @override
  GeneratedTextColumn get password => _password ??= _constructPassword();
  GeneratedTextColumn _constructPassword() {
    return GeneratedTextColumn(
      'password',
      $tableName,
      false,
    );
  }

  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  GeneratedTextColumn _phone;
  @override
  GeneratedTextColumn get phone => _phone ??= _constructPhone();
  GeneratedTextColumn _constructPhone() {
    return GeneratedTextColumn('phone', $tableName, false,
        minTextLength: 10, maxTextLength: 15);
  }

  final VerificationMeta _userLoggedInMeta =
      const VerificationMeta('userLoggedIn');
  GeneratedBoolColumn _userLoggedIn;
  @override
  GeneratedBoolColumn get userLoggedIn =>
      _userLoggedIn ??= _constructUserLoggedIn();
  GeneratedBoolColumn _constructUserLoggedIn() {
    return GeneratedBoolColumn('user_logged_in', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _isAdminMeta = const VerificationMeta('isAdmin');
  GeneratedBoolColumn _isAdmin;
  @override
  GeneratedBoolColumn get isAdmin => _isAdmin ??= _constructIsAdmin();
  GeneratedBoolColumn _constructIsAdmin() {
    return GeneratedBoolColumn('is_admin', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, fullName, username, password, phone, userLoggedIn, isAdmin];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name'], _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username'], _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password'], _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone'], _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('user_logged_in')) {
      context.handle(
          _userLoggedInMeta,
          userLoggedIn.isAcceptableOrUnknown(
              data['user_logged_in'], _userLoggedInMeta));
    }
    if (data.containsKey('is_admin')) {
      context.handle(_isAdminMeta,
          isAdmin.isAcceptableOrUnknown(data['is_admin'], _isAdminMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

class Cart extends DataClass implements Insertable<Cart> {
  final int id;
  final DateTime dateAdded;
  final int userId;
  final bool isOpen;
  Cart(
      {@required this.id,
      @required this.dateAdded,
      this.userId,
      @required this.isOpen});
  factory Cart.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Cart(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      dateAdded: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}date_added']),
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      isOpen:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_open']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || dateAdded != null) {
      map['date_added'] = Variable<DateTime>(dateAdded);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    if (!nullToAbsent || isOpen != null) {
      map['is_open'] = Variable<bool>(isOpen);
    }
    return map;
  }

  CartsCompanion toCompanion(bool nullToAbsent) {
    return CartsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      dateAdded: dateAdded == null && nullToAbsent
          ? const Value.absent()
          : Value(dateAdded),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      isOpen:
          isOpen == null && nullToAbsent ? const Value.absent() : Value(isOpen),
    );
  }

  factory Cart.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Cart(
      id: serializer.fromJson<int>(json['id']),
      dateAdded: serializer.fromJson<DateTime>(json['dateAdded']),
      userId: serializer.fromJson<int>(json['userId']),
      isOpen: serializer.fromJson<bool>(json['isOpen']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dateAdded': serializer.toJson<DateTime>(dateAdded),
      'userId': serializer.toJson<int>(userId),
      'isOpen': serializer.toJson<bool>(isOpen),
    };
  }

  Cart copyWith({int id, DateTime dateAdded, int userId, bool isOpen}) => Cart(
        id: id ?? this.id,
        dateAdded: dateAdded ?? this.dateAdded,
        userId: userId ?? this.userId,
        isOpen: isOpen ?? this.isOpen,
      );
  @override
  String toString() {
    return (StringBuffer('Cart(')
          ..write('id: $id, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('userId: $userId, ')
          ..write('isOpen: $isOpen')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(dateAdded.hashCode, $mrjc(userId.hashCode, isOpen.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Cart &&
          other.id == this.id &&
          other.dateAdded == this.dateAdded &&
          other.userId == this.userId &&
          other.isOpen == this.isOpen);
}

class CartsCompanion extends UpdateCompanion<Cart> {
  final Value<int> id;
  final Value<DateTime> dateAdded;
  final Value<int> userId;
  final Value<bool> isOpen;
  const CartsCompanion({
    this.id = const Value.absent(),
    this.dateAdded = const Value.absent(),
    this.userId = const Value.absent(),
    this.isOpen = const Value.absent(),
  });
  CartsCompanion.insert({
    this.id = const Value.absent(),
    this.dateAdded = const Value.absent(),
    this.userId = const Value.absent(),
    this.isOpen = const Value.absent(),
  });
  static Insertable<Cart> custom({
    Expression<int> id,
    Expression<DateTime> dateAdded,
    Expression<int> userId,
    Expression<bool> isOpen,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dateAdded != null) 'date_added': dateAdded,
      if (userId != null) 'user_id': userId,
      if (isOpen != null) 'is_open': isOpen,
    });
  }

  CartsCompanion copyWith(
      {Value<int> id,
      Value<DateTime> dateAdded,
      Value<int> userId,
      Value<bool> isOpen}) {
    return CartsCompanion(
      id: id ?? this.id,
      dateAdded: dateAdded ?? this.dateAdded,
      userId: userId ?? this.userId,
      isOpen: isOpen ?? this.isOpen,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dateAdded.present) {
      map['date_added'] = Variable<DateTime>(dateAdded.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (isOpen.present) {
      map['is_open'] = Variable<bool>(isOpen.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CartsCompanion(')
          ..write('id: $id, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('userId: $userId, ')
          ..write('isOpen: $isOpen')
          ..write(')'))
        .toString();
  }
}

class $CartsTable extends Carts with TableInfo<$CartsTable, Cart> {
  final GeneratedDatabase _db;
  final String _alias;
  $CartsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _dateAddedMeta = const VerificationMeta('dateAdded');
  GeneratedDateTimeColumn _dateAdded;
  @override
  GeneratedDateTimeColumn get dateAdded => _dateAdded ??= _constructDateAdded();
  GeneratedDateTimeColumn _constructDateAdded() {
    return GeneratedDateTimeColumn('date_added', $tableName, false,
        defaultValue: Constant(DateTime.now()));
  }

  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedIntColumn _userId;
  @override
  GeneratedIntColumn get userId => _userId ??= _constructUserId();
  GeneratedIntColumn _constructUserId() {
    return GeneratedIntColumn('user_id', $tableName, true,
        $customConstraints: 'NULL REFERENCES users(id)');
  }

  final VerificationMeta _isOpenMeta = const VerificationMeta('isOpen');
  GeneratedBoolColumn _isOpen;
  @override
  GeneratedBoolColumn get isOpen => _isOpen ??= _constructIsOpen();
  GeneratedBoolColumn _constructIsOpen() {
    return GeneratedBoolColumn('is_open', $tableName, false,
        defaultValue: Constant(true));
  }

  @override
  List<GeneratedColumn> get $columns => [id, dateAdded, userId, isOpen];
  @override
  $CartsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'carts';
  @override
  final String actualTableName = 'carts';
  @override
  VerificationContext validateIntegrity(Insertable<Cart> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('date_added')) {
      context.handle(_dateAddedMeta,
          dateAdded.isAcceptableOrUnknown(data['date_added'], _dateAddedMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    }
    if (data.containsKey('is_open')) {
      context.handle(_isOpenMeta,
          isOpen.isAcceptableOrUnknown(data['is_open'], _isOpenMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Cart map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Cart.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CartsTable createAlias(String alias) {
    return $CartsTable(_db, alias);
  }
}

class Product extends DataClass implements Insertable<Product> {
  final int id;
  final int categoryId;
  final int userId;
  final String name;
  final double costPrice;
  final int quantity;
  final double sellingPrice;
  final bool isAvailable;
  final DateTime dateAdded;
  Product(
      {@required this.id,
      this.categoryId,
      this.userId,
      @required this.name,
      @required this.costPrice,
      @required this.quantity,
      @required this.sellingPrice,
      @required this.isAvailable,
      @required this.dateAdded});
  factory Product.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Product(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      categoryId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}category_id']),
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      costPrice: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}cost_price']),
      quantity:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}quantity']),
      sellingPrice: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}selling_price']),
      isAvailable: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_available']),
      dateAdded: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}date_added']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<int>(categoryId);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || costPrice != null) {
      map['cost_price'] = Variable<double>(costPrice);
    }
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<int>(quantity);
    }
    if (!nullToAbsent || sellingPrice != null) {
      map['selling_price'] = Variable<double>(sellingPrice);
    }
    if (!nullToAbsent || isAvailable != null) {
      map['is_available'] = Variable<bool>(isAvailable);
    }
    if (!nullToAbsent || dateAdded != null) {
      map['date_added'] = Variable<DateTime>(dateAdded);
    }
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      costPrice: costPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(costPrice),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      sellingPrice: sellingPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(sellingPrice),
      isAvailable: isAvailable == null && nullToAbsent
          ? const Value.absent()
          : Value(isAvailable),
      dateAdded: dateAdded == null && nullToAbsent
          ? const Value.absent()
          : Value(dateAdded),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<int>(json['id']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      userId: serializer.fromJson<int>(json['userId']),
      name: serializer.fromJson<String>(json['name']),
      costPrice: serializer.fromJson<double>(json['costPrice']),
      quantity: serializer.fromJson<int>(json['quantity']),
      sellingPrice: serializer.fromJson<double>(json['sellingPrice']),
      isAvailable: serializer.fromJson<bool>(json['isAvailable']),
      dateAdded: serializer.fromJson<DateTime>(json['dateAdded']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'categoryId': serializer.toJson<int>(categoryId),
      'userId': serializer.toJson<int>(userId),
      'name': serializer.toJson<String>(name),
      'costPrice': serializer.toJson<double>(costPrice),
      'quantity': serializer.toJson<int>(quantity),
      'sellingPrice': serializer.toJson<double>(sellingPrice),
      'isAvailable': serializer.toJson<bool>(isAvailable),
      'dateAdded': serializer.toJson<DateTime>(dateAdded),
    };
  }

  Product copyWith(
          {int id,
          int categoryId,
          int userId,
          String name,
          double costPrice,
          int quantity,
          double sellingPrice,
          bool isAvailable,
          DateTime dateAdded}) =>
      Product(
        id: id ?? this.id,
        categoryId: categoryId ?? this.categoryId,
        userId: userId ?? this.userId,
        name: name ?? this.name,
        costPrice: costPrice ?? this.costPrice,
        quantity: quantity ?? this.quantity,
        sellingPrice: sellingPrice ?? this.sellingPrice,
        isAvailable: isAvailable ?? this.isAvailable,
        dateAdded: dateAdded ?? this.dateAdded,
      );
  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('costPrice: $costPrice, ')
          ..write('quantity: $quantity, ')
          ..write('sellingPrice: $sellingPrice, ')
          ..write('isAvailable: $isAvailable, ')
          ..write('dateAdded: $dateAdded')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          categoryId.hashCode,
          $mrjc(
              userId.hashCode,
              $mrjc(
                  name.hashCode,
                  $mrjc(
                      costPrice.hashCode,
                      $mrjc(
                          quantity.hashCode,
                          $mrjc(
                              sellingPrice.hashCode,
                              $mrjc(isAvailable.hashCode,
                                  dateAdded.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.categoryId == this.categoryId &&
          other.userId == this.userId &&
          other.name == this.name &&
          other.costPrice == this.costPrice &&
          other.quantity == this.quantity &&
          other.sellingPrice == this.sellingPrice &&
          other.isAvailable == this.isAvailable &&
          other.dateAdded == this.dateAdded);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<int> id;
  final Value<int> categoryId;
  final Value<int> userId;
  final Value<String> name;
  final Value<double> costPrice;
  final Value<int> quantity;
  final Value<double> sellingPrice;
  final Value<bool> isAvailable;
  final Value<DateTime> dateAdded;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.userId = const Value.absent(),
    this.name = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.quantity = const Value.absent(),
    this.sellingPrice = const Value.absent(),
    this.isAvailable = const Value.absent(),
    this.dateAdded = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.id = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.userId = const Value.absent(),
    @required String name,
    @required double costPrice,
    @required int quantity,
    @required double sellingPrice,
    this.isAvailable = const Value.absent(),
    this.dateAdded = const Value.absent(),
  })  : name = Value(name),
        costPrice = Value(costPrice),
        quantity = Value(quantity),
        sellingPrice = Value(sellingPrice);
  static Insertable<Product> custom({
    Expression<int> id,
    Expression<int> categoryId,
    Expression<int> userId,
    Expression<String> name,
    Expression<double> costPrice,
    Expression<int> quantity,
    Expression<double> sellingPrice,
    Expression<bool> isAvailable,
    Expression<DateTime> dateAdded,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryId != null) 'category_id': categoryId,
      if (userId != null) 'user_id': userId,
      if (name != null) 'name': name,
      if (costPrice != null) 'cost_price': costPrice,
      if (quantity != null) 'quantity': quantity,
      if (sellingPrice != null) 'selling_price': sellingPrice,
      if (isAvailable != null) 'is_available': isAvailable,
      if (dateAdded != null) 'date_added': dateAdded,
    });
  }

  ProductsCompanion copyWith(
      {Value<int> id,
      Value<int> categoryId,
      Value<int> userId,
      Value<String> name,
      Value<double> costPrice,
      Value<int> quantity,
      Value<double> sellingPrice,
      Value<bool> isAvailable,
      Value<DateTime> dateAdded}) {
    return ProductsCompanion(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      costPrice: costPrice ?? this.costPrice,
      quantity: quantity ?? this.quantity,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      isAvailable: isAvailable ?? this.isAvailable,
      dateAdded: dateAdded ?? this.dateAdded,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (costPrice.present) {
      map['cost_price'] = Variable<double>(costPrice.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (sellingPrice.present) {
      map['selling_price'] = Variable<double>(sellingPrice.value);
    }
    if (isAvailable.present) {
      map['is_available'] = Variable<bool>(isAvailable.value);
    }
    if (dateAdded.present) {
      map['date_added'] = Variable<DateTime>(dateAdded.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('costPrice: $costPrice, ')
          ..write('quantity: $quantity, ')
          ..write('sellingPrice: $sellingPrice, ')
          ..write('isAvailable: $isAvailable, ')
          ..write('dateAdded: $dateAdded')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProductsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _categoryIdMeta = const VerificationMeta('categoryId');
  GeneratedIntColumn _categoryId;
  @override
  GeneratedIntColumn get categoryId => _categoryId ??= _constructCategoryId();
  GeneratedIntColumn _constructCategoryId() {
    return GeneratedIntColumn('category_id', $tableName, true,
        $customConstraints: 'NULL REFERENCES categories(id)');
  }

  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedIntColumn _userId;
  @override
  GeneratedIntColumn get userId => _userId ??= _constructUserId();
  GeneratedIntColumn _constructUserId() {
    return GeneratedIntColumn('user_id', $tableName, true,
        $customConstraints: 'NULL REFERENCES users(id)');
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _costPriceMeta = const VerificationMeta('costPrice');
  GeneratedRealColumn _costPrice;
  @override
  GeneratedRealColumn get costPrice => _costPrice ??= _constructCostPrice();
  GeneratedRealColumn _constructCostPrice() {
    return GeneratedRealColumn(
      'cost_price',
      $tableName,
      false,
    );
  }

  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  GeneratedIntColumn _quantity;
  @override
  GeneratedIntColumn get quantity => _quantity ??= _constructQuantity();
  GeneratedIntColumn _constructQuantity() {
    return GeneratedIntColumn(
      'quantity',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sellingPriceMeta =
      const VerificationMeta('sellingPrice');
  GeneratedRealColumn _sellingPrice;
  @override
  GeneratedRealColumn get sellingPrice =>
      _sellingPrice ??= _constructSellingPrice();
  GeneratedRealColumn _constructSellingPrice() {
    return GeneratedRealColumn(
      'selling_price',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isAvailableMeta =
      const VerificationMeta('isAvailable');
  GeneratedBoolColumn _isAvailable;
  @override
  GeneratedBoolColumn get isAvailable =>
      _isAvailable ??= _constructIsAvailable();
  GeneratedBoolColumn _constructIsAvailable() {
    return GeneratedBoolColumn('is_available', $tableName, false,
        defaultValue: Constant(true));
  }

  final VerificationMeta _dateAddedMeta = const VerificationMeta('dateAdded');
  GeneratedDateTimeColumn _dateAdded;
  @override
  GeneratedDateTimeColumn get dateAdded => _dateAdded ??= _constructDateAdded();
  GeneratedDateTimeColumn _constructDateAdded() {
    return GeneratedDateTimeColumn('date_added', $tableName, false,
        defaultValue: Constant(DateTime.now()));
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        categoryId,
        userId,
        name,
        costPrice,
        quantity,
        sellingPrice,
        isAvailable,
        dateAdded
      ];
  @override
  $ProductsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'products';
  @override
  final String actualTableName = 'products';
  @override
  VerificationContext validateIntegrity(Insertable<Product> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id'], _categoryIdMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('cost_price')) {
      context.handle(_costPriceMeta,
          costPrice.isAcceptableOrUnknown(data['cost_price'], _costPriceMeta));
    } else if (isInserting) {
      context.missing(_costPriceMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity'], _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('selling_price')) {
      context.handle(
          _sellingPriceMeta,
          sellingPrice.isAcceptableOrUnknown(
              data['selling_price'], _sellingPriceMeta));
    } else if (isInserting) {
      context.missing(_sellingPriceMeta);
    }
    if (data.containsKey('is_available')) {
      context.handle(
          _isAvailableMeta,
          isAvailable.isAcceptableOrUnknown(
              data['is_available'], _isAvailableMeta));
    }
    if (data.containsKey('date_added')) {
      context.handle(_dateAddedMeta,
          dateAdded.isAcceptableOrUnknown(data['date_added'], _dateAddedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Product.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(_db, alias);
  }
}

class Categorie extends DataClass implements Insertable<Categorie> {
  final int id;
  final String name;
  Categorie({@required this.id, @required this.name});
  factory Categorie.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Categorie(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory Categorie.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Categorie(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  Categorie copyWith({int id, String name}) => Categorie(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Categorie(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, name.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Categorie && other.id == this.id && other.name == this.name);
}

class CategoriesCompanion extends UpdateCompanion<Categorie> {
  final Value<int> id;
  final Value<String> name;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
  }) : name = Value(name);
  static Insertable<Categorie> custom({
    Expression<int> id,
    Expression<String> name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  CategoriesCompanion copyWith({Value<int> id, Value<String> name}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Categorie> {
  final GeneratedDatabase _db;
  final String _alias;
  $CategoriesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  $CategoriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'categories';
  @override
  final String actualTableName = 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Categorie> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Categorie map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Categorie.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(_db, alias);
  }
}

class CartItem extends DataClass implements Insertable<CartItem> {
  final int id;
  final int cartId;
  final int productId;
  final double totalCost;
  final int quantity;
  CartItem(
      {@required this.id,
      this.cartId,
      this.productId,
      @required this.totalCost,
      @required this.quantity});
  factory CartItem.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final doubleType = db.typeSystem.forDartType<double>();
    return CartItem(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      cartId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}cart_id']),
      productId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}product_id']),
      totalCost: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}total_cost']),
      quantity:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}quantity']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || cartId != null) {
      map['cart_id'] = Variable<int>(cartId);
    }
    if (!nullToAbsent || productId != null) {
      map['product_id'] = Variable<int>(productId);
    }
    if (!nullToAbsent || totalCost != null) {
      map['total_cost'] = Variable<double>(totalCost);
    }
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<int>(quantity);
    }
    return map;
  }

  CartItemsCompanion toCompanion(bool nullToAbsent) {
    return CartItemsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      cartId:
          cartId == null && nullToAbsent ? const Value.absent() : Value(cartId),
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      totalCost: totalCost == null && nullToAbsent
          ? const Value.absent()
          : Value(totalCost),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
    );
  }

  factory CartItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CartItem(
      id: serializer.fromJson<int>(json['id']),
      cartId: serializer.fromJson<int>(json['cartId']),
      productId: serializer.fromJson<int>(json['productId']),
      totalCost: serializer.fromJson<double>(json['totalCost']),
      quantity: serializer.fromJson<int>(json['quantity']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'cartId': serializer.toJson<int>(cartId),
      'productId': serializer.toJson<int>(productId),
      'totalCost': serializer.toJson<double>(totalCost),
      'quantity': serializer.toJson<int>(quantity),
    };
  }

  CartItem copyWith(
          {int id,
          int cartId,
          int productId,
          double totalCost,
          int quantity}) =>
      CartItem(
        id: id ?? this.id,
        cartId: cartId ?? this.cartId,
        productId: productId ?? this.productId,
        totalCost: totalCost ?? this.totalCost,
        quantity: quantity ?? this.quantity,
      );
  @override
  String toString() {
    return (StringBuffer('CartItem(')
          ..write('id: $id, ')
          ..write('cartId: $cartId, ')
          ..write('productId: $productId, ')
          ..write('totalCost: $totalCost, ')
          ..write('quantity: $quantity')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          cartId.hashCode,
          $mrjc(productId.hashCode,
              $mrjc(totalCost.hashCode, quantity.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CartItem &&
          other.id == this.id &&
          other.cartId == this.cartId &&
          other.productId == this.productId &&
          other.totalCost == this.totalCost &&
          other.quantity == this.quantity);
}

class CartItemsCompanion extends UpdateCompanion<CartItem> {
  final Value<int> id;
  final Value<int> cartId;
  final Value<int> productId;
  final Value<double> totalCost;
  final Value<int> quantity;
  const CartItemsCompanion({
    this.id = const Value.absent(),
    this.cartId = const Value.absent(),
    this.productId = const Value.absent(),
    this.totalCost = const Value.absent(),
    this.quantity = const Value.absent(),
  });
  CartItemsCompanion.insert({
    this.id = const Value.absent(),
    this.cartId = const Value.absent(),
    this.productId = const Value.absent(),
    @required double totalCost,
    @required int quantity,
  })  : totalCost = Value(totalCost),
        quantity = Value(quantity);
  static Insertable<CartItem> custom({
    Expression<int> id,
    Expression<int> cartId,
    Expression<int> productId,
    Expression<double> totalCost,
    Expression<int> quantity,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cartId != null) 'cart_id': cartId,
      if (productId != null) 'product_id': productId,
      if (totalCost != null) 'total_cost': totalCost,
      if (quantity != null) 'quantity': quantity,
    });
  }

  CartItemsCompanion copyWith(
      {Value<int> id,
      Value<int> cartId,
      Value<int> productId,
      Value<double> totalCost,
      Value<int> quantity}) {
    return CartItemsCompanion(
      id: id ?? this.id,
      cartId: cartId ?? this.cartId,
      productId: productId ?? this.productId,
      totalCost: totalCost ?? this.totalCost,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (cartId.present) {
      map['cart_id'] = Variable<int>(cartId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (totalCost.present) {
      map['total_cost'] = Variable<double>(totalCost.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CartItemsCompanion(')
          ..write('id: $id, ')
          ..write('cartId: $cartId, ')
          ..write('productId: $productId, ')
          ..write('totalCost: $totalCost, ')
          ..write('quantity: $quantity')
          ..write(')'))
        .toString();
  }
}

class $CartItemsTable extends CartItems
    with TableInfo<$CartItemsTable, CartItem> {
  final GeneratedDatabase _db;
  final String _alias;
  $CartItemsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _cartIdMeta = const VerificationMeta('cartId');
  GeneratedIntColumn _cartId;
  @override
  GeneratedIntColumn get cartId => _cartId ??= _constructCartId();
  GeneratedIntColumn _constructCartId() {
    return GeneratedIntColumn('cart_id', $tableName, true,
        $customConstraints: 'NULL REFERENCES carts(id)');
  }

  final VerificationMeta _productIdMeta = const VerificationMeta('productId');
  GeneratedIntColumn _productId;
  @override
  GeneratedIntColumn get productId => _productId ??= _constructProductId();
  GeneratedIntColumn _constructProductId() {
    return GeneratedIntColumn('product_id', $tableName, true,
        $customConstraints: 'NULL REFERENCES products(id)');
  }

  final VerificationMeta _totalCostMeta = const VerificationMeta('totalCost');
  GeneratedRealColumn _totalCost;
  @override
  GeneratedRealColumn get totalCost => _totalCost ??= _constructTotalCost();
  GeneratedRealColumn _constructTotalCost() {
    return GeneratedRealColumn(
      'total_cost',
      $tableName,
      false,
    );
  }

  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  GeneratedIntColumn _quantity;
  @override
  GeneratedIntColumn get quantity => _quantity ??= _constructQuantity();
  GeneratedIntColumn _constructQuantity() {
    return GeneratedIntColumn(
      'quantity',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, cartId, productId, totalCost, quantity];
  @override
  $CartItemsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'cart_items';
  @override
  final String actualTableName = 'cart_items';
  @override
  VerificationContext validateIntegrity(Insertable<CartItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('cart_id')) {
      context.handle(_cartIdMeta,
          cartId.isAcceptableOrUnknown(data['cart_id'], _cartIdMeta));
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id'], _productIdMeta));
    }
    if (data.containsKey('total_cost')) {
      context.handle(_totalCostMeta,
          totalCost.isAcceptableOrUnknown(data['total_cost'], _totalCostMeta));
    } else if (isInserting) {
      context.missing(_totalCostMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity'], _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CartItem map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CartItem.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CartItemsTable createAlias(String alias) {
    return $CartItemsTable(_db, alias);
  }
}

abstract class _$POSDatabase extends GeneratedDatabase {
  _$POSDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  $CartsTable _carts;
  $CartsTable get carts => _carts ??= $CartsTable(this);
  $ProductsTable _products;
  $ProductsTable get products => _products ??= $ProductsTable(this);
  $CategoriesTable _categories;
  $CategoriesTable get categories => _categories ??= $CategoriesTable(this);
  $CartItemsTable _cartItems;
  $CartItemsTable get cartItems => _cartItems ??= $CartItemsTable(this);
  UsersDao _usersDao;
  UsersDao get usersDao => _usersDao ??= UsersDao(this as POSDatabase);
  ProductsDao _productsDao;
  ProductsDao get productsDao =>
      _productsDao ??= ProductsDao(this as POSDatabase);
  CategoriesDao _categoriesDao;
  CategoriesDao get categoriesDao =>
      _categoriesDao ??= CategoriesDao(this as POSDatabase);
  CartsDao _cartsDao;
  CartsDao get cartsDao => _cartsDao ??= CartsDao(this as POSDatabase);
  CartItemsDao _cartItemsDao;
  CartItemsDao get cartItemsDao =>
      _cartItemsDao ??= CartItemsDao(this as POSDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [users, carts, products, categories, cartItems];
}
