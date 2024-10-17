import 'dart:convert';
/// result : {"products":[{"id":3,"name":"prororeeeeeeeeeeeeeee","number":"g1oM_7230","code":"ddd","barCode":"dddddddddddddddddddddd","desc":"fffff","weight":"12","price":200,"sub_category_id":1,"set_id":1,"created_at":"2024-10-15T10:48:46.000000Z","updated_at":"2024-10-15T10:48:46.000000Z","sub_category":{"id":1,"number":"dddd","name":"ddd","category_id":1,"created_at":null,"updated_at":null,"category":{"id":1,"number":"IWK7_2690","karat":1,"CTs":1,"clarity":1,"price":1,"shape":"1","finishing":null,"type_id":1,"created_at":"2024-10-15T10:38:32.000000Z","updated_at":"2024-10-15T10:38:32.000000Z","type":{"id":1,"number":"CJgI_3405","name":"gold","trade_type":"1","created_at":"2024-10-15T10:38:25.000000Z","updated_at":"2024-10-15T10:38:25.000000Z"}}}}]}

NewestProductsResponseEntity newestProductsResponseEntityFromJson(String str) => NewestProductsResponseEntity.fromJson(json.decode(str));
String newestProductsResponseEntityToJson(NewestProductsResponseEntity data) => json.encode(data.toJson());
class NewestProductsResponseEntity {
  NewestProductsResponseEntity({
      Result? result,}){
    _result = result;
}

  NewestProductsResponseEntity.fromJson(dynamic json) {
    _result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }
  Result? _result;
NewestProductsResponseEntity copyWith({  Result? result,
}) => NewestProductsResponseEntity(  result: result ?? _result,
);
  Result? get result => _result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_result != null) {
      map['result'] = _result?.toJson();
    }
    return map;
  }

}

/// products : [{"id":3,"name":"prororeeeeeeeeeeeeeee","number":"g1oM_7230","code":"ddd","barCode":"dddddddddddddddddddddd","desc":"fffff","weight":"12","price":200,"sub_category_id":1,"set_id":1,"created_at":"2024-10-15T10:48:46.000000Z","updated_at":"2024-10-15T10:48:46.000000Z","sub_category":{"id":1,"number":"dddd","name":"ddd","category_id":1,"created_at":null,"updated_at":null,"category":{"id":1,"number":"IWK7_2690","karat":1,"CTs":1,"clarity":1,"price":1,"shape":"1","finishing":null,"type_id":1,"created_at":"2024-10-15T10:38:32.000000Z","updated_at":"2024-10-15T10:38:32.000000Z","type":{"id":1,"number":"CJgI_3405","name":"gold","trade_type":"1","created_at":"2024-10-15T10:38:25.000000Z","updated_at":"2024-10-15T10:38:25.000000Z"}}}}]

Result resultFromJson(String str) => Result.fromJson(json.decode(str));
String resultToJson(Result data) => json.encode(data.toJson());
class Result {
  Result({
      List<Product>? products,}){
    _products = products;
}

  Result.fromJson(dynamic json) {
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Product.fromJson(v));
      });
    }
  }
  List<Product>? _products;
Result copyWith({  List<Product>? products,
}) => Result(  products: products ?? _products,
);
  List<Product>? get products => _products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 3
/// name : "prororeeeeeeeeeeeeeee"
/// number : "g1oM_7230"
/// code : "ddd"
/// barCode : "dddddddddddddddddddddd"
/// desc : "fffff"
/// weight : "12"
/// price : 200
/// sub_category_id : 1
/// set_id : 1
/// created_at : "2024-10-15T10:48:46.000000Z"
/// updated_at : "2024-10-15T10:48:46.000000Z"
/// sub_category : {"id":1,"number":"dddd","name":"ddd","category_id":1,"created_at":null,"updated_at":null,"category":{"id":1,"number":"IWK7_2690","karat":1,"CTs":1,"clarity":1,"price":1,"shape":"1","finishing":null,"type_id":1,"created_at":"2024-10-15T10:38:32.000000Z","updated_at":"2024-10-15T10:38:32.000000Z","type":{"id":1,"number":"CJgI_3405","name":"gold","trade_type":"1","created_at":"2024-10-15T10:38:25.000000Z","updated_at":"2024-10-15T10:38:25.000000Z"}}}

Product productsFromJson(String str) => Product.fromJson(json.decode(str));
String productsToJson(Product data) => json.encode(data.toJson());
class Product {
  Product({
      num? id, 
      String? name, 
      String? number, 
      String? code, 
      String? barCode, 
      String? desc, 
      String? weight, 
      num? price, 
      num? subCategoryId, 
      num? setId, 
      String? createdAt, 
      String? updatedAt, 
      SubCategory? subCategory,}){
    _id = id;
    _name = name;
    _number = number;
    _code = code;
    _barCode = barCode;
    _desc = desc;
    _weight = weight;
    _price = price;
    _subCategoryId = subCategoryId;
    _setId = setId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _subCategory = subCategory;
}

  Product.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _number = json['number'];
    _code = json['code'];
    _barCode = json['barCode'];
    _desc = json['desc'];
    _weight = json['weight'];
    _price = json['price'];
    _subCategoryId = json['sub_category_id'];
    _setId = json['set_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _subCategory = json['sub_category'] != null ? SubCategory.fromJson(json['sub_category']) : null;
  }
  num? _id;
  String? _name;
  String? _number;
  String? _code;
  String? _barCode;
  String? _desc;
  String? _weight;
  num? _price;
  num? _subCategoryId;
  num? _setId;
  String? _createdAt;
  String? _updatedAt;
  SubCategory? _subCategory;
Product copyWith({  num? id,
  String? name,
  String? number,
  String? code,
  String? barCode,
  String? desc,
  String? weight,
  num? price,
  num? subCategoryId,
  num? setId,
  String? createdAt,
  String? updatedAt,
  SubCategory? subCategory,
}) => Product(  id: id ?? _id,
  name: name ?? _name,
  number: number ?? _number,
  code: code ?? _code,
  barCode: barCode ?? _barCode,
  desc: desc ?? _desc,
  weight: weight ?? _weight,
  price: price ?? _price,
  subCategoryId: subCategoryId ?? _subCategoryId,
  setId: setId ?? _setId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  subCategory: subCategory ?? _subCategory,
);
  num? get id => _id;
  String? get name => _name;
  String? get number => _number;
  String? get code => _code;
  String? get barCode => _barCode;
  String? get desc => _desc;
  String? get weight => _weight;
  num? get price => _price;
  num? get subCategoryId => _subCategoryId;
  num? get setId => _setId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  SubCategory? get subCategory => _subCategory;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['number'] = _number;
    map['code'] = _code;
    map['barCode'] = _barCode;
    map['desc'] = _desc;
    map['weight'] = _weight;
    map['price'] = _price;
    map['sub_category_id'] = _subCategoryId;
    map['set_id'] = _setId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_subCategory != null) {
      map['sub_category'] = _subCategory?.toJson();
    }
    return map;
  }

}

/// id : 1
/// number : "dddd"
/// name : "ddd"
/// category_id : 1
/// created_at : null
/// updated_at : null
/// category : {"id":1,"number":"IWK7_2690","karat":1,"CTs":1,"clarity":1,"price":1,"shape":"1","finishing":null,"type_id":1,"created_at":"2024-10-15T10:38:32.000000Z","updated_at":"2024-10-15T10:38:32.000000Z","type":{"id":1,"number":"CJgI_3405","name":"gold","trade_type":"1","created_at":"2024-10-15T10:38:25.000000Z","updated_at":"2024-10-15T10:38:25.000000Z"}}

SubCategory subCategoryFromJson(String str) => SubCategory.fromJson(json.decode(str));
String subCategoryToJson(SubCategory data) => json.encode(data.toJson());
class SubCategory {
  SubCategory({
      num? id, 
      String? number, 
      String? name, 
      num? categoryId, 
      dynamic createdAt, 
      dynamic updatedAt, 
      Category? category,}){
    _id = id;
    _number = number;
    _name = name;
    _categoryId = categoryId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _category = category;
}

  SubCategory.fromJson(dynamic json) {
    _id = json['id'];
    _number = json['number'];
    _name = json['name'];
    _categoryId = json['category_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _category = json['category'] != null ? Category.fromJson(json['category']) : null;
  }
  num? _id;
  String? _number;
  String? _name;
  num? _categoryId;
  dynamic _createdAt;
  dynamic _updatedAt;
  Category? _category;
SubCategory copyWith({  num? id,
  String? number,
  String? name,
  num? categoryId,
  dynamic createdAt,
  dynamic updatedAt,
  Category? category,
}) => SubCategory(  id: id ?? _id,
  number: number ?? _number,
  name: name ?? _name,
  categoryId: categoryId ?? _categoryId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  category: category ?? _category,
);
  num? get id => _id;
  String? get number => _number;
  String? get name => _name;
  num? get categoryId => _categoryId;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  Category? get category => _category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['number'] = _number;
    map['name'] = _name;
    map['category_id'] = _categoryId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_category != null) {
      map['category'] = _category?.toJson();
    }
    return map;
  }

}

/// id : 1
/// number : "IWK7_2690"
/// karat : 1
/// CTs : 1
/// clarity : 1
/// price : 1
/// shape : "1"
/// finishing : null
/// type_id : 1
/// created_at : "2024-10-15T10:38:32.000000Z"
/// updated_at : "2024-10-15T10:38:32.000000Z"
/// type : {"id":1,"number":"CJgI_3405","name":"gold","trade_type":"1","created_at":"2024-10-15T10:38:25.000000Z","updated_at":"2024-10-15T10:38:25.000000Z"}

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));
String categoryToJson(Category data) => json.encode(data.toJson());
class Category {
  Category({
      num? id, 
      String? number, 
      num? karat, 
      num? cTs, 
      num? clarity, 
      num? price, 
      String? shape, 
      dynamic finishing, 
      num? typeId, 
      String? createdAt, 
      String? updatedAt, 
      Type? type,}){
    _id = id;
    _number = number;
    _karat = karat;
    _cTs = cTs;
    _clarity = clarity;
    _price = price;
    _shape = shape;
    _finishing = finishing;
    _typeId = typeId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _type = type;
}

  Category.fromJson(dynamic json) {
    _id = json['id'];
    _number = json['number'];
    _karat = json['karat'];
    _cTs = json['CTs'];
    _clarity = json['clarity'];
    _price = json['price'];
    _shape = json['shape'];
    _finishing = json['finishing'];
    _typeId = json['type_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _type = json['type'] != null ? Type.fromJson(json['type']) : null;
  }
  num? _id;
  String? _number;
  num? _karat;
  num? _cTs;
  num? _clarity;
  num? _price;
  String? _shape;
  dynamic _finishing;
  num? _typeId;
  String? _createdAt;
  String? _updatedAt;
  Type? _type;
Category copyWith({  num? id,
  String? number,
  num? karat,
  num? cTs,
  num? clarity,
  num? price,
  String? shape,
  dynamic finishing,
  num? typeId,
  String? createdAt,
  String? updatedAt,
  Type? type,
}) => Category(  id: id ?? _id,
  number: number ?? _number,
  karat: karat ?? _karat,
  cTs: cTs ?? _cTs,
  clarity: clarity ?? _clarity,
  price: price ?? _price,
  shape: shape ?? _shape,
  finishing: finishing ?? _finishing,
  typeId: typeId ?? _typeId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  type: type ?? _type,
);
  num? get id => _id;
  String? get number => _number;
  num? get karat => _karat;
  num? get cTs => _cTs;
  num? get clarity => _clarity;
  num? get price => _price;
  String? get shape => _shape;
  dynamic get finishing => _finishing;
  num? get typeId => _typeId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Type? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['number'] = _number;
    map['karat'] = _karat;
    map['CTs'] = _cTs;
    map['clarity'] = _clarity;
    map['price'] = _price;
    map['shape'] = _shape;
    map['finishing'] = _finishing;
    map['type_id'] = _typeId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_type != null) {
      map['type'] = _type?.toJson();
    }
    return map;
  }

}

/// id : 1
/// number : "CJgI_3405"
/// name : "gold"
/// trade_type : "1"
/// created_at : "2024-10-15T10:38:25.000000Z"
/// updated_at : "2024-10-15T10:38:25.000000Z"

Type typeFromJson(String str) => Type.fromJson(json.decode(str));
String typeToJson(Type data) => json.encode(data.toJson());
class Type {
  Type({
      num? id, 
      String? number, 
      String? name, 
      String? tradeType, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _number = number;
    _name = name;
    _tradeType = tradeType;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Type.fromJson(dynamic json) {
    _id = json['id'];
    _number = json['number'];
    _name = json['name'];
    _tradeType = json['trade_type'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _number;
  String? _name;
  String? _tradeType;
  String? _createdAt;
  String? _updatedAt;
Type copyWith({  num? id,
  String? number,
  String? name,
  String? tradeType,
  String? createdAt,
  String? updatedAt,
}) => Type(  id: id ?? _id,
  number: number ?? _number,
  name: name ?? _name,
  tradeType: tradeType ?? _tradeType,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  String? get number => _number;
  String? get name => _name;
  String? get tradeType => _tradeType;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['number'] = _number;
    map['name'] = _name;
    map['trade_type'] = _tradeType;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}