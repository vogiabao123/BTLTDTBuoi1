import 'hoadon.dart';
import 'dienthoai.dart';

class CuaHang extends HoaDon {
  // Thuộc tính của CuaHang
  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _danhSachDienThoai = [];

  // Constructor cho CuaHang (lớp con) kế thừa từ HoaDon
  CuaHang(
      String maHoaDon,
      DateTime ngayBan,
      DienThoai dienThoai,
      int soLuongMua,
      double giaBanThucTe,
      String tenKhachHang,
      String soDienThoaiKhachHang,
      this._tenCuaHang,
      this._diaChi)
      : super(maHoaDon, ngayBan, dienThoai, soLuongMua, giaBanThucTe,
            tenKhachHang, soDienThoaiKhachHang);

  // Phương thức thêm điện thoại vào cửa hàng
  void themDienThoai(DienThoai dt) {
    _danhSachDienThoai.add(dt);
  }

  // Phương thức hiển thị thông tin cửa hàng
  void hienThiThongTinCuaHang() {
    print('Cửa hàng: $_tenCuaHang');
    print('Địa chỉ: $_diaChi');
  }

  // Phương thức hiển thị danh sách điện thoại
  void hienThiDanhSachDienThoai() {
    for (var dt in _danhSachDienThoai) {
      dt.hienThiThongTin();
    }
  }

  // Thêm phương thức tạo hóa đơn

  // Thêm một phương thức kế thừa từ HoaDon
  @override
  void hienThiThongTin() {
    super.hienThiThongTin();
    print('Thông tin cửa hàng:');
    hienThiThongTinCuaHang();
  }
}
