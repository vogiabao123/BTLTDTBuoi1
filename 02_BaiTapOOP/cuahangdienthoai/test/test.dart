import '../models/cuahang.dart';
import '../models/dienthoai.dart';

void main() {
  // Tạo danh sách các điện thoại
  var dienThoai1 =
      DienThoai('DT-001', 'iPhone 15', 'Apple', 20000, 25000, 50, true);
  var dienThoai2 =
      DienThoai('DT-002', 'Galaxy S23', 'Samsung', 18000, 23000, 30, true);
  var dienThoai3 =
      DienThoai('DT-003', 'Pixel 8', 'Google', 17000, 22000, 20, true);

  // Tạo danh sách cửa hàng
  var cuaHang1 = CuaHang(
    'HD-001',
    DateTime.now(),
    dienThoai1,
    2,
    25000,
    'Nguyen Van A',
    '0123456789',
    'Cửa hàng ABC',
    'Hà Nội',
  );

  var cuaHang2 = CuaHang(
    'HD-002',
    DateTime.now().subtract(Duration(days: 1)),
    dienThoai2,
    1,
    23000,
    'Tran Thi B',
    '0987654321',
    'Cửa hàng XYZ',
    'TP.HCM',
  );

  var cuaHang3 = CuaHang(
    'HD-003',
    DateTime.now().subtract(Duration(days: 2)),
    dienThoai3,
    3,
    22000,
    'Le Van C',
    '0909090909',
    'Cửa hàng DEF',
    'Đà Nẵng',
  );

  // Thêm điện thoại vào các cửa hàng
  cuaHang1.themDienThoai(dienThoai1);
  cuaHang1.themDienThoai(dienThoai2);
  cuaHang1.themDienThoai(dienThoai3);

  cuaHang2.themDienThoai(dienThoai2);
  cuaHang2.themDienThoai(dienThoai3);

  cuaHang3.themDienThoai(dienThoai1);
  cuaHang3.themDienThoai(dienThoai3);

  // Hiển thị thông tin từng cửa hàng
  print('--- Thông tin Cửa hàng 1 ---');
  cuaHang1.hienThiThongTin();
  cuaHang1.hienThiDanhSachDienThoai();

  print('\n--- Thông tin Cửa hàng 2 ---');
  cuaHang2.hienThiThongTin();
  cuaHang2.hienThiDanhSachDienThoai();

  print('\n--- Thông tin Cửa hàng 3 ---');
  cuaHang3.hienThiThongTin();
  cuaHang3.hienThiDanhSachDienThoai();
}
