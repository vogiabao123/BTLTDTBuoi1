import 'dienthoai.dart';

class HoaDon {
  // Thuộc tính private
  String _maHoaDon;
  DateTime _ngayBan;
  DienThoai _dienThoai; // Chứa đối tượng DienThoai, không kế thừa
  int _soLuongMua;
  double _giaBanThucTe;
  String _tenKhachHang;
  String _soDienThoaiKhachHang;

  // Constructor đầy đủ tham số
  HoaDon(this._maHoaDon, this._ngayBan, this._dienThoai, this._soLuongMua,
      this._giaBanThucTe, this._tenKhachHang, this._soDienThoaiKhachHang);

  // Getter và Setter với validation
  String get maHoaDon => _maHoaDon;
  set maHoaDon(String value) {
    if (value.isEmpty || !value.startsWith('HD-')) {
      throw ArgumentError(
          'Mã hóa đơn không hợp lệ (phải có định dạng "HD-XXX").');
    }
    _maHoaDon = value;
  }

  DateTime get ngayBan => _ngayBan;
  set ngayBan(DateTime value) {
    if (value.isAfter(DateTime.now())) {
      throw ArgumentError('Ngày bán không thể sau ngày hiện tại.');
    }
    _ngayBan = value;
  }

  int get soLuongMua => _soLuongMua;
  set soLuongMua(int value) {
    if (value <= 0 || value > _dienThoai.soLuongTonKho) {
      throw ArgumentError('Số lượng mua không hợp lệ.');
    }
    _soLuongMua = value;
  }

  double get giaBanThucTe => _giaBanThucTe;
  set giaBanThucTe(double value) {
    if (value <= 0) {
      throw ArgumentError('Giá bán thực tế phải lớn hơn 0.');
    }
    _giaBanThucTe = value;
  }

  String get tenKhachHang => _tenKhachHang;
  set tenKhachHang(String value) {
    if (value.isEmpty) {
      throw ArgumentError('Tên khách hàng không được để trống.');
    }
    _tenKhachHang = value;
  }

  String get soDienThoaiKhachHang => _soDienThoaiKhachHang;
  set soDienThoaiKhachHang(String value) {
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      throw ArgumentError('Số điện thoại khách hàng không hợp lệ.');
    }
    _soDienThoaiKhachHang = value;
  }

  // Phương thức tính tổng tiền
  double tinhTongTien() => _soLuongMua * _giaBanThucTe;

  // Phương thức tính lợi nhuận thực tế
  double tinhLoiNhuanThucTe() =>
      (_giaBanThucTe - _dienThoai.giaNhap) * _soLuongMua;

  // Phương thức hiển thị thông tin hóa đơn
  void hienThiThongTin() {
    print('Mã hóa đơn: $_maHoaDon');
    print('Ngày bán: $_ngayBan');
    print('Điện thoại: ${_dienThoai.tenDienThoai}');
    print('Số lượng: $_soLuongMua');
    print('Giá bán thực tế: $_giaBanThucTe');
    print('Khách hàng: $_tenKhachHang');
    print('Số điện thoại khách: $_soDienThoaiKhachHang');
  }
}
