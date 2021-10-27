%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('productTypeId'),
  haveKey('quantity'),
  haveKey('Orderid'),
  haveKey('outboundHeaders'),
  haveKey('storeName'),
  haveKey('storeContactNumber'),
  haveKey('storeId'),
  haveKey('storeDistance'),
  haveKey('storeAddress'),
  $['productTypeId'] must equalTo("709"),
  $['quantity'] must equalTo(12),
  $['Orderid'] must equalTo("770319092"),
  $['outboundHeaders'] must equalTo({}),
  $['storeName'] must equalTo("Bentonville Neighborhood Market"),
  $['storeContactNumber'] must equalTo("Not Present"),
  $['storeId'] must equalTo(4376),
  $['storeDistance'] must equalTo(0.51),
  $['storeAddress'] must equalTo("1400 N Walton Blvd,Bentonville,AR,US(72712)")
]