// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLanguage {
  AppLanguage();

  static AppLanguage? _current;

  static AppLanguage get current {
    assert(_current != null,
        'No instance of AppLanguage was loaded. Try to initialize the AppLanguage delegate before accessing AppLanguage.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLanguage> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLanguage();
      AppLanguage._current = instance;

      return instance;
    });
  }

  static AppLanguage of(BuildContext context) {
    final instance = AppLanguage.maybeOf(context);
    assert(instance != null,
        'No instance of AppLanguage present in the widget tree. Did you add AppLanguage.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLanguage? maybeOf(BuildContext context) {
    return Localizations.of<AppLanguage>(context, AppLanguage);
  }

  /// `Tất cả`
  String get sellectAll {
    return Intl.message(
      'Tất cả',
      name: 'sellectAll',
      desc: '',
      args: [],
    );
  }

  /// `Tìm kiếm khách hàng`
  String get hintSearchCustomer {
    return Intl.message(
      'Tìm kiếm khách hàng',
      name: 'hintSearchCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu không được để trống`
  String get pass_empty {
    return Intl.message(
      'Mật khẩu không được để trống',
      name: 'pass_empty',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu phải lớn hơn 4 kí tự`
  String get error_pass_lenght {
    return Intl.message(
      'Mật khẩu phải lớn hơn 4 kí tự',
      name: 'error_pass_lenght',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản không được để trống`
  String get user_empty {
    return Intl.message(
      'Tài khoản không được để trống',
      name: 'user_empty',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập bằng vân tay sai quá nhiều lần`
  String get wrongFingerprintMany {
    return Intl.message(
      'Đăng nhập bằng vân tay sai quá nhiều lần',
      name: 'wrongFingerprintMany',
      desc: '',
      args: [],
    );
  }

  /// `Đã xảy ra lỗi khi lấy vị trí thiết bị`
  String get errorGetLocation {
    return Intl.message(
      'Đã xảy ra lỗi khi lấy vị trí thiết bị',
      name: 'errorGetLocation',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có chắc muốn đăng xuất?`
  String get askLogout {
    return Intl.message(
      'Bạn có chắc muốn đăng xuất?',
      name: 'askLogout',
      desc: '',
      args: [],
    );
  }

  /// `Chưa ghé thăm`
  String get visitedYet {
    return Intl.message(
      'Chưa ghé thăm',
      name: 'visitedYet',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin tuyến`
  String get lineInformation {
    return Intl.message(
      'Thông tin tuyến',
      name: 'lineInformation',
      desc: '',
      args: [],
    );
  }

  /// `Thiết bị của bạn không hỗ trợ chức năng này !`
  String get warning_device_not_login_finger_print {
    return Intl.message(
      'Thiết bị của bạn không hỗ trợ chức năng này !',
      name: 'warning_device_not_login_finger_print',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa cài đặt đăng nhập bằng vân tay`
  String get warning_login_fingerprint {
    return Intl.message(
      'Bạn chưa cài đặt đăng nhập bằng vân tay',
      name: 'warning_login_fingerprint',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có muốn sử dụng đăng nhập  bằng vân tay không`
  String get doyouwantloginfingerprint {
    return Intl.message(
      'Bạn có muốn sử dụng đăng nhập  bằng vân tay không',
      name: 'doyouwantloginfingerprint',
      desc: '',
      args: [],
    );
  }

  /// `Loại bản đồ`
  String get mapType {
    return Intl.message(
      'Loại bản đồ',
      name: 'mapType',
      desc: '',
      args: [],
    );
  }

  /// `Vệ tinh`
  String get satellite {
    return Intl.message(
      'Vệ tinh',
      name: 'satellite',
      desc: '',
      args: [],
    );
  }

  /// `Giao thông`
  String get traffic {
    return Intl.message(
      'Giao thông',
      name: 'traffic',
      desc: '',
      args: [],
    );
  }

  /// `Bạn cần chấp nhận quyền truy cập vị trí để sử dụng ứng dụng`
  String get alertPermissionLocation {
    return Intl.message(
      'Bạn cần chấp nhận quyền truy cập vị trí để sử dụng ứng dụng',
      name: 'alertPermissionLocation',
      desc: '',
      args: [],
    );
  }

  /// `Khoảng cách`
  String get distance {
    return Intl.message(
      'Khoảng cách',
      name: 'distance',
      desc: '',
      args: [],
    );
  }

  /// `Ghé thăm`
  String get visit {
    return Intl.message(
      'Ghé thăm',
      name: 'visit',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ`
  String get address {
    return Intl.message(
      'Địa chỉ',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại`
  String get phoneNumber {
    return Intl.message(
      'Số điện thoại',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Tuyến`
  String get routes {
    return Intl.message(
      'Tuyến',
      name: 'routes',
      desc: '',
      args: [],
    );
  }

  /// `Đang ghé thăm`
  String get visiting {
    return Intl.message(
      'Đang ghé thăm',
      name: 'visiting',
      desc: '',
      args: [],
    );
  }

  /// `Đã ghé thăm`
  String get visited {
    return Intl.message(
      'Đã ghé thăm',
      name: 'visited',
      desc: '',
      args: [],
    );
  }

  /// `Thống kê chung`
  String get generalStatistics {
    return Intl.message(
      'Thống kê chung',
      name: 'generalStatistics',
      desc: '',
      args: [],
    );
  }

  /// `Báo cáo KPI`
  String get kpiReport {
    return Intl.message(
      'Báo cáo KPI',
      name: 'kpiReport',
      desc: '',
      args: [],
    );
  }

  /// `KH chưa PSDS trong tháng`
  String get customerNotPSDS {
    return Intl.message(
      'KH chưa PSDS trong tháng',
      name: 'customerNotPSDS',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách khách hàng`
  String get listCustomers {
    return Intl.message(
      'Danh sách khách hàng',
      name: 'listCustomers',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm hàng tồn`
  String get checkInventory {
    return Intl.message(
      'Kiểm hàng tồn',
      name: 'checkInventory',
      desc: '',
      args: [],
    );
  }

  /// `Thêm sản phẩm`
  String get addProducts {
    return Intl.message(
      'Thêm sản phẩm',
      name: 'addProducts',
      desc: '',
      args: [],
    );
  }

  /// `Lộ trình`
  String get route {
    return Intl.message(
      'Lộ trình',
      name: 'route',
      desc: '',
      args: [],
    );
  }

  /// `Thêm mới khách hàng`
  String get addNewCustomer {
    return Intl.message(
      'Thêm mới khách hàng',
      name: 'addNewCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách hình ảnh`
  String get listOfImages {
    return Intl.message(
      'Danh sách hình ảnh',
      name: 'listOfImages',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách đơn hàng`
  String get orderList {
    return Intl.message(
      'Danh sách đơn hàng',
      name: 'orderList',
      desc: '',
      args: [],
    );
  }

  /// `Đơn hàng ngày`
  String get dailyOrders {
    return Intl.message(
      'Đơn hàng ngày',
      name: 'dailyOrders',
      desc: '',
      args: [],
    );
  }

  /// `Đơn hàng lỹ`
  String get bulkOrders {
    return Intl.message(
      'Đơn hàng lỹ',
      name: 'bulkOrders',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách sản phẩm`
  String get listOfProducts {
    return Intl.message(
      'Danh sách sản phẩm',
      name: 'listOfProducts',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách khuyến mãi`
  String get promotionList {
    return Intl.message(
      'Danh sách khuyến mãi',
      name: 'promotionList',
      desc: '',
      args: [],
    );
  }

  /// `Điểm danh`
  String get attendance {
    return Intl.message(
      'Điểm danh',
      name: 'attendance',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất`
  String get logout {
    return Intl.message(
      'Đăng xuất',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Trợ giúp`
  String get help {
    return Intl.message(
      'Trợ giúp',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Tạo mới vấn đề`
  String get createNewProblem {
    return Intl.message(
      'Tạo mới vấn đề',
      name: 'createNewProblem',
      desc: '',
      args: [],
    );
  }

  /// `Chốt kho`
  String get warehouseLatch {
    return Intl.message(
      'Chốt kho',
      name: 'warehouseLatch',
      desc: '',
      args: [],
    );
  }

  /// `Chấm công`
  String get timekeeping {
    return Intl.message(
      'Chấm công',
      name: 'timekeeping',
      desc: '',
      args: [],
    );
  }

  /// `Danh mục`
  String get category {
    return Intl.message(
      'Danh mục',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Giám sát`
  String get monitor {
    return Intl.message(
      'Giám sát',
      name: 'monitor',
      desc: '',
      args: [],
    );
  }

  /// `Giám sát vị trí`
  String get locationMonitoringing {
    return Intl.message(
      'Giám sát vị trí',
      name: 'locationMonitoringing',
      desc: '',
      args: [],
    );
  }

  /// `Đơn hàng`
  String get order {
    return Intl.message(
      'Đơn hàng',
      name: 'order',
      desc: '',
      args: [],
    );
  }

  /// `Tổng quan`
  String get overview {
    return Intl.message(
      'Tổng quan',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `Theo dõi`
  String get follow {
    return Intl.message(
      'Theo dõi',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  /// `Giám sát tuyến`
  String get lineMonitoring {
    return Intl.message(
      'Giám sát tuyến',
      name: 'lineMonitoring',
      desc: '',
      args: [],
    );
  }

  /// `Vị trí nhân viên`
  String get staffPosition {
    return Intl.message(
      'Vị trí nhân viên',
      name: 'staffPosition',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin check-in`
  String get checkInInformation {
    return Intl.message(
      'Thông tin check-in',
      name: 'checkInInformation',
      desc: '',
      args: [],
    );
  }

  /// `Tuyến và khách hàng`
  String get routesAndCustomers {
    return Intl.message(
      'Tuyến và khách hàng',
      name: 'routesAndCustomers',
      desc: '',
      args: [],
    );
  }

  /// `Cài đặt`
  String get setting {
    return Intl.message(
      'Cài đặt',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Kho`
  String get warehouse {
    return Intl.message(
      'Kho',
      name: 'warehouse',
      desc: '',
      args: [],
    );
  }

  /// `Thống kê`
  String get statistical {
    return Intl.message(
      'Thống kê',
      name: 'statistical',
      desc: '',
      args: [],
    );
  }

  /// `Trang chủ`
  String get home {
    return Intl.message(
      'Trang chủ',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Bạn không có quyền đăng nhập trên app. Liên hệ với quản trị viên để được hỗ trợ!`
  String get alert_warning {
    return Intl.message(
      'Bạn không có quyền đăng nhập trên app. Liên hệ với quản trị viên để được hỗ trợ!',
      name: 'alert_warning',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản không được để trống.`
  String get userIsEmpty {
    return Intl.message(
      'Tài khoản không được để trống.',
      name: 'userIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu không được để trống.`
  String get passwordIsEmpty {
    return Intl.message(
      'Mật khẩu không được để trống.',
      name: 'passwordIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu phải lớn hơn 6 kí tự.`
  String get pass_invalid_than {
    return Intl.message(
      'Mật khẩu phải lớn hơn 6 kí tự.',
      name: 'pass_invalid_than',
      desc: '',
      args: [],
    );
  }

  /// `Đang tải...`
  String get loading {
    return Intl.message(
      'Đang tải...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Đang tải..`
  String get loading2 {
    return Intl.message(
      'Đang tải..',
      name: 'loading2',
      desc: '',
      args: [],
    );
  }

  /// `Đang tải.`
  String get loading1 {
    return Intl.message(
      'Đang tải.',
      name: 'loading1',
      desc: '',
      args: [],
    );
  }

  /// `Thông báo`
  String get alert {
    return Intl.message(
      'Thông báo',
      name: 'alert',
      desc: '',
      args: [],
    );
  }

  /// `Đóng`
  String get close {
    return Intl.message(
      'Đóng',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi`
  String get error {
    return Intl.message(
      'Lỗi',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Tìm kiếm chức năng`
  String get hintSearchHome {
    return Intl.message(
      'Tìm kiếm chức năng',
      name: 'hintSearchHome',
      desc: '',
      args: [],
    );
  }

  /// `Ngày bán hàng`
  String get dayForSales {
    return Intl.message(
      'Ngày bán hàng',
      name: 'dayForSales',
      desc: '',
      args: [],
    );
  }

  /// `Theo kế hoạch`
  String get accordingToPlan {
    return Intl.message(
      'Theo kế hoạch',
      name: 'accordingToPlan',
      desc: '',
      args: [],
    );
  }

  /// `Tiến độ`
  String get progress {
    return Intl.message(
      'Tiến độ',
      name: 'progress',
      desc: '',
      args: [],
    );
  }

  /// `Bán hàng`
  String get sell {
    return Intl.message(
      'Bán hàng',
      name: 'sell',
      desc: '',
      args: [],
    );
  }

  /// `Tính năng`
  String get feature {
    return Intl.message(
      'Tính năng',
      name: 'feature',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi mạng`
  String get networkError {
    return Intl.message(
      'Lỗi mạng',
      name: 'networkError',
      desc: '',
      args: [],
    );
  }

  /// `Hết thời gian kết nối`
  String get connectionTimedOut {
    return Intl.message(
      'Hết thời gian kết nối',
      name: 'connectionTimedOut',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi lấy dữ liệu`
  String get errGettingData {
    return Intl.message(
      'Lỗi lấy dữ liệu',
      name: 'errGettingData',
      desc: '',
      args: [],
    );
  }

  /// `Có lỗi xảy ra`
  String get errorOccurred {
    return Intl.message(
      'Có lỗi xảy ra',
      name: 'errorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Không có dữ liệu trả về`
  String get noDataReturned {
    return Intl.message(
      'Không có dữ liệu trả về',
      name: 'noDataReturned',
      desc: '',
      args: [],
    );
  }

  /// `Tải lên thất bại`
  String get uploadFailed {
    return Intl.message(
      'Tải lên thất bại',
      name: 'uploadFailed',
      desc: '',
      args: [],
    );
  }

  /// `Hết hạn đăng nhập`
  String get loginExpired {
    return Intl.message(
      'Hết hạn đăng nhập',
      name: 'loginExpired',
      desc: '',
      args: [],
    );
  }

  /// `Huỷ tải lên`
  String get cancelUpload {
    return Intl.message(
      'Huỷ tải lên',
      name: 'cancelUpload',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận`
  String get confirm {
    return Intl.message(
      'Xác nhận',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `ĐĂNG NHẬP`
  String get login {
    return Intl.message(
      'ĐĂNG NHẬP',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu`
  String get password {
    return Intl.message(
      'Mật khẩu',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mật khẩu`
  String get enterPassword {
    return Intl.message(
      'Nhập mật khẩu',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Quên mật khẩu`
  String get forgotPassword {
    return Intl.message(
      'Quên mật khẩu',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Phiên bản hiện tại`
  String get version {
    return Intl.message(
      'Phiên bản hiện tại',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Nhập tài khoản`
  String get enterAccount {
    return Intl.message(
      'Nhập tài khoản',
      name: 'enterAccount',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản`
  String get account {
    return Intl.message(
      'Tài khoản',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Lưu`
  String get save {
    return Intl.message(
      'Lưu',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Hủy`
  String get cancel {
    return Intl.message(
      'Hủy',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Tiếp tục`
  String get continuelb {
    return Intl.message(
      'Tiếp tục',
      name: 'continuelb',
      desc: '',
      args: [],
    );
  }

  /// `Đồng ý`
  String get yes {
    return Intl.message(
      'Đồng ý',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận lưu kết quả kiểm hàng tồn và chọn mặt hàng bán`
  String get confirmToSaveInventory {
    return Intl.message(
      'Xác nhận lưu kết quả kiểm hàng tồn và chọn mặt hàng bán',
      name: 'confirmToSaveInventory',
      desc: '',
      args: [],
    );
  }

  /// `Lưu hàng tồn thành công. Bạn đã ghé thăm `
  String get successfullySavedInventory {
    return Intl.message(
      'Lưu hàng tồn thành công. Bạn đã ghé thăm ',
      name: 'successfullySavedInventory',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có muốn kết thúc ghé thăm lúc này không?`
  String get endVisitNow {
    return Intl.message(
      'Bạn có muốn kết thúc ghé thăm lúc này không?',
      name: 'endVisitNow',
      desc: '',
      args: [],
    );
  }

  /// `Bạn muốn thực hiện đặt hàng không?`
  String get wantToMakeAnOrder {
    return Intl.message(
      'Bạn muốn thực hiện đặt hàng không?',
      name: 'wantToMakeAnOrder',
      desc: '',
      args: [],
    );
  }

  /// `Kết thúc ghé thăm thành công`
  String get endOfVisitSuccessfully {
    return Intl.message(
      'Kết thúc ghé thăm thành công',
      name: 'endOfVisitSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Số lượng`
  String get quantity {
    return Intl.message(
      'Số lượng',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Nhập số lượng`
  String get enterQuantity {
    return Intl.message(
      'Nhập số lượng',
      name: 'enterQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Số lượng thùng`
  String get numberOfBoxes {
    return Intl.message(
      'Số lượng thùng',
      name: 'numberOfBoxes',
      desc: '',
      args: [],
    );
  }

  /// `Nhập số lượng thùng`
  String get enterTheNumberOfBins {
    return Intl.message(
      'Nhập số lượng thùng',
      name: 'enterTheNumberOfBins',
      desc: '',
      args: [],
    );
  }

  /// `Số lượng lẻ`
  String get oddQuantity {
    return Intl.message(
      'Số lượng lẻ',
      name: 'oddQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Nhập số lượng lẻ`
  String get enterAnOddAmount {
    return Intl.message(
      'Nhập số lượng lẻ',
      name: 'enterAnOddAmount',
      desc: '',
      args: [],
    );
  }

  /// `Đơn giá thùng/lẻ: `
  String get unitPriceOfCartonRetail {
    return Intl.message(
      'Đơn giá thùng/lẻ: ',
      name: 'unitPriceOfCartonRetail',
      desc: '',
      args: [],
    );
  }

  /// `Chụp ảnh`
  String get takePhoto {
    return Intl.message(
      'Chụp ảnh',
      name: 'takePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý hình ảnh`
  String get imageManagement {
    return Intl.message(
      'Quản lý hình ảnh',
      name: 'imageManagement',
      desc: '',
      args: [],
    );
  }

  /// `Tải lên`
  String get upload {
    return Intl.message(
      'Tải lên',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `Nhập ghi chú`
  String get enterNote {
    return Intl.message(
      'Nhập ghi chú',
      name: 'enterNote',
      desc: '',
      args: [],
    );
  }

  /// `Ghi chú`
  String get note {
    return Intl.message(
      'Ghi chú',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Chọn thư mục`
  String get selectFolder {
    return Intl.message(
      'Chọn thư mục',
      name: 'selectFolder',
      desc: '',
      args: [],
    );
  }

  /// `Thư mục `
  String get folder {
    return Intl.message(
      'Thư mục ',
      name: 'folder',
      desc: '',
      args: [],
    );
  }

  /// `Xem ảnh vừa chọn`
  String get viewSelectedPhoto {
    return Intl.message(
      'Xem ảnh vừa chọn',
      name: 'viewSelectedPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Thư viện ảnh`
  String get photoLibrary {
    return Intl.message(
      'Thư viện ảnh',
      name: 'photoLibrary',
      desc: '',
      args: [],
    );
  }

  /// `Chọn nguồn ảnh`
  String get selectImageSource {
    return Intl.message(
      'Chọn nguồn ảnh',
      name: 'selectImageSource',
      desc: '',
      args: [],
    );
  }

  /// `Máy ảnh`
  String get camera {
    return Intl.message(
      'Máy ảnh',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Trạng thái`
  String get status {
    return Intl.message(
      'Trạng thái',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Ảnh `
  String get image {
    return Intl.message(
      'Ảnh ',
      name: 'image',
      desc: '',
      args: [],
    );
  }

  /// `Tên khách hàng`
  String get customerName {
    return Intl.message(
      'Tên khách hàng',
      name: 'customerName',
      desc: '',
      args: [],
    );
  }

  /// `Khách hàng`
  String get customer {
    return Intl.message(
      'Khách hàng',
      name: 'customer',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa ghé thăm khách hàng.`
  String get youHaveNotVisitedTheClientYet {
    return Intl.message(
      'Bạn chưa ghé thăm khách hàng.',
      name: 'youHaveNotVisitedTheClientYet',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng chọn ảnh`
  String get pleaseChoosePhoto {
    return Intl.message(
      'Vui lòng chọn ảnh',
      name: 'pleaseChoosePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Tải lên thành công`
  String get successfulUpload {
    return Intl.message(
      'Tải lên thành công',
      name: 'successfulUpload',
      desc: '',
      args: [],
    );
  }

  /// `Tạo đơn hàng`
  String get createAnOrder {
    return Intl.message(
      'Tạo đơn hàng',
      name: 'createAnOrder',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin khách hàng`
  String get customerInformation {
    return Intl.message(
      'Thông tin khách hàng',
      name: 'customerInformation',
      desc: '',
      args: [],
    );
  }

  /// `Mã khách hàng: `
  String get customersCode {
    return Intl.message(
      'Mã khách hàng: ',
      name: 'customersCode',
      desc: '',
      args: [],
    );
  }

  /// `Chương trình khuyến mại`
  String get promotions {
    return Intl.message(
      'Chương trình khuyến mại',
      name: 'promotions',
      desc: '',
      args: [],
    );
  }

  /// `KM thủ công`
  String get manualPromotion {
    return Intl.message(
      'KM thủ công',
      name: 'manualPromotion',
      desc: '',
      args: [],
    );
  }

  /// `KM tự động`
  String get automaticPromotion {
    return Intl.message(
      'KM tự động',
      name: 'automaticPromotion',
      desc: '',
      args: [],
    );
  }

  /// `Mặt hàng bán`
  String get itemsForSale {
    return Intl.message(
      'Mặt hàng bán',
      name: 'itemsForSale',
      desc: '',
      args: [],
    );
  }

  /// `Mặt hàng khuyến mại`
  String get promotionalItems {
    return Intl.message(
      'Mặt hàng khuyến mại',
      name: 'promotionalItems',
      desc: '',
      args: [],
    );
  }

  /// `Đặt hàng Presale`
  String get orderPresale {
    return Intl.message(
      'Đặt hàng Presale',
      name: 'orderPresale',
      desc: '',
      args: [],
    );
  }

  /// `Ngày giao`
  String get deliveryDate {
    return Intl.message(
      'Ngày giao',
      name: 'deliveryDate',
      desc: '',
      args: [],
    );
  }

  /// `Đơn vị giao hàng`
  String get deliveryUnit {
    return Intl.message(
      'Đơn vị giao hàng',
      name: 'deliveryUnit',
      desc: '',
      args: [],
    );
  }

  /// `Chiết khấu`
  String get discount {
    return Intl.message(
      'Chiết khấu',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Cộng tiền hàng`
  String get itemCash {
    return Intl.message(
      'Cộng tiền hàng',
      name: 'itemCash',
      desc: '',
      args: [],
    );
  }

  /// `Tổng tiền`
  String get totalMoney {
    return Intl.message(
      'Tổng tiền',
      name: 'totalMoney',
      desc: '',
      args: [],
    );
  }

  /// `Tồn kho đáp ứng: `
  String get inventoryMeets {
    return Intl.message(
      'Tồn kho đáp ứng: ',
      name: 'inventoryMeets',
      desc: '',
      args: [],
    );
  }

  /// `Thực đặt: `
  String get realSet {
    return Intl.message(
      'Thực đặt: ',
      name: 'realSet',
      desc: '',
      args: [],
    );
  }

  /// `Thành tiền: `
  String get intoMoney {
    return Intl.message(
      'Thành tiền: ',
      name: 'intoMoney',
      desc: '',
      args: [],
    );
  }

  /// `Số lượng khuyến mại: `
  String get promotionQuantity {
    return Intl.message(
      'Số lượng khuyến mại: ',
      name: 'promotionQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Đặt hàng`
  String get order1 {
    return Intl.message(
      'Đặt hàng',
      name: 'order1',
      desc: '',
      args: [],
    );
  }

  /// `Khuyến mại đơn hàng`
  String get orderPromotion {
    return Intl.message(
      'Khuyến mại đơn hàng',
      name: 'orderPromotion',
      desc: '',
      args: [],
    );
  }

  /// `Đơn vị: `
  String get unit {
    return Intl.message(
      'Đơn vị: ',
      name: 'unit',
      desc: '',
      args: [],
    );
  }

  /// `Thùng/Hộp`
  String get cartonBox {
    return Intl.message(
      'Thùng/Hộp',
      name: 'cartonBox',
      desc: '',
      args: [],
    );
  }

  /// `Hiện tại có `
  String get thereAreCurrently {
    return Intl.message(
      'Hiện tại có ',
      name: 'thereAreCurrently',
      desc: '',
      args: [],
    );
  }

  /// `sản phẩm`
  String get products {
    return Intl.message(
      'sản phẩm',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Tồn kho`
  String get inventory {
    return Intl.message(
      'Tồn kho',
      name: 'inventory',
      desc: '',
      args: [],
    );
  }

  /// `Đơn giá`
  String get unitPrice {
    return Intl.message(
      'Đơn giá',
      name: 'unitPrice',
      desc: '',
      args: [],
    );
  }

  /// `Quy cách`
  String get specifications {
    return Intl.message(
      'Quy cách',
      name: 'specifications',
      desc: '',
      args: [],
    );
  }

  /// `Số tiền chiết khấu tối đa`
  String get maximumDiscountAmount {
    return Intl.message(
      'Số tiền chiết khấu tối đa',
      name: 'maximumDiscountAmount',
      desc: '',
      args: [],
    );
  }

  /// `Loại chiết khấu`
  String get discountType {
    return Intl.message(
      'Loại chiết khấu',
      name: 'discountType',
      desc: '',
      args: [],
    );
  }

  /// `Tạo đơn hàng thành công. Bạn có muốn tiếp tục?`
  String get successfulOrderCreation {
    return Intl.message(
      'Tạo đơn hàng thành công. Bạn có muốn tiếp tục?',
      name: 'successfulOrderCreation',
      desc: '',
      args: [],
    );
  }

  /// `Đặt lại`
  String get reset {
    return Intl.message(
      'Đặt lại',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Tên khách hàng không được để trống`
  String get customerNameCannotBeEmpty {
    return Intl.message(
      'Tên khách hàng không được để trống',
      name: 'customerNameCannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Mã nhân viên`
  String get staffCode {
    return Intl.message(
      'Mã nhân viên',
      name: 'staffCode',
      desc: '',
      args: [],
    );
  }

  /// `Tên nhân viên`
  String get staffName {
    return Intl.message(
      'Tên nhân viên',
      name: 'staffName',
      desc: '',
      args: [],
    );
  }

  /// `Chỉ hiển thị nhân viên chưa đăng nhập trên hệ thống`
  String get showOnlyEmployeesWhoAreNotLoggedInOnTheSystem {
    return Intl.message(
      'Chỉ hiển thị nhân viên chưa đăng nhập trên hệ thống',
      name: 'showOnlyEmployeesWhoAreNotLoggedInOnTheSystem',
      desc: '',
      args: [],
    );
  }

  /// `Tìm kiếm`
  String get search {
    return Intl.message(
      'Tìm kiếm',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Số điểm bán`
  String get numberOfCustomers {
    return Intl.message(
      'Số điểm bán',
      name: 'numberOfCustomers',
      desc: '',
      args: [],
    );
  }

  /// `Trong tuyến`
  String get inRoute {
    return Intl.message(
      'Trong tuyến',
      name: 'inRoute',
      desc: '',
      args: [],
    );
  }

  /// `Ngoại tuyến`
  String get outRoute {
    return Intl.message(
      'Ngoại tuyến',
      name: 'outRoute',
      desc: '',
      args: [],
    );
  }

  /// `Lần ghé thăm theo khoảng thời gian`
  String get lastVisitByTime {
    return Intl.message(
      'Lần ghé thăm theo khoảng thời gian',
      name: 'lastVisitByTime',
      desc: '',
      args: [],
    );
  }

  /// `phút`
  String get minutes {
    return Intl.message(
      'phút',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `Không có dữ liệu`
  String get noData {
    return Intl.message(
      'Không có dữ liệu',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Tìm kiếm khách hàng theo tên`
  String get searchForCustomersByName {
    return Intl.message(
      'Tìm kiếm khách hàng theo tên',
      name: 'searchForCustomersByName',
      desc: '',
      args: [],
    );
  }

  /// `Loại sản phẩm`
  String get productType {
    return Intl.message(
      'Loại sản phẩm',
      name: 'productType',
      desc: '',
      args: [],
    );
  }

  /// `Hiện có %s sản phẩm khả dụng`
  String get productsAvailableNow {
    return Intl.message(
      'Hiện có %s sản phẩm khả dụng',
      name: 'productsAvailableNow',
      desc: '',
      args: [],
    );
  }

  /// `Giá (VND)`
  String get priceVND {
    return Intl.message(
      'Giá (VND)',
      name: 'priceVND',
      desc: '',
      args: [],
    );
  }

  /// `Số lượng có sẵn`
  String get availableStock {
    return Intl.message(
      'Số lượng có sẵn',
      name: 'availableStock',
      desc: '',
      args: [],
    );
  }

  /// `Quy cách`
  String get conversionFactor {
    return Intl.message(
      'Quy cách',
      name: 'conversionFactor',
      desc: '',
      args: [],
    );
  }

  /// `Mã sản phẩm`
  String get productCode {
    return Intl.message(
      'Mã sản phẩm',
      name: 'productCode',
      desc: '',
      args: [],
    );
  }

  /// `Tên sản phẩm`
  String get productName {
    return Intl.message(
      'Tên sản phẩm',
      name: 'productName',
      desc: '',
      args: [],
    );
  }

  /// `Vấn đề`
  String get problem {
    return Intl.message(
      'Vấn đề',
      name: 'problem',
      desc: '',
      args: [],
    );
  }

  /// `Giám sát và phê duyệt`
  String get monitoringAndApproval {
    return Intl.message(
      'Giám sát và phê duyệt',
      name: 'monitoringAndApproval',
      desc: '',
      args: [],
    );
  }

  /// `Vấn đề cần giải quyết`
  String get problemsNeedToBeSlove {
    return Intl.message(
      'Vấn đề cần giải quyết',
      name: 'problemsNeedToBeSlove',
      desc: '',
      args: [],
    );
  }

  /// `Hiện có %s vấn đề`
  String get nowAvailableIssues {
    return Intl.message(
      'Hiện có %s vấn đề',
      name: 'nowAvailableIssues',
      desc: '',
      args: [],
    );
  }

  /// `Chọn khách hàng`
  String get chooseACustomer {
    return Intl.message(
      'Chọn khách hàng',
      name: 'chooseACustomer',
      desc: '',
      args: [],
    );
  }

  /// `Sắp ra mắt`
  String get comingSoon {
    return Intl.message(
      'Sắp ra mắt',
      name: 'comingSoon',
      desc: '',
      args: [],
    );
  }

  /// `Thêm vấn đề cần nhắc nhở`
  String get createAnIssueThatNeedsAReminder {
    return Intl.message(
      'Thêm vấn đề cần nhắc nhở',
      name: 'createAnIssueThatNeedsAReminder',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách chương trình khuyến mại`
  String get listOfPromotions {
    return Intl.message(
      'Danh sách chương trình khuyến mại',
      name: 'listOfPromotions',
      desc: '',
      args: [],
    );
  }

  /// `Tên chương trình khuyến mại`
  String get namePromotions {
    return Intl.message(
      'Tên chương trình khuyến mại',
      name: 'namePromotions',
      desc: '',
      args: [],
    );
  }

  /// `Chọn`
  String get choice {
    return Intl.message(
      'Chọn',
      name: 'choice',
      desc: '',
      args: [],
    );
  }

  /// `Loại vấn đề`
  String get typeOfProblem {
    return Intl.message(
      'Loại vấn đề',
      name: 'typeOfProblem',
      desc: '',
      args: [],
    );
  }

  /// `Chọn ngày`
  String get choiceDate {
    return Intl.message(
      'Chọn ngày',
      name: 'choiceDate',
      desc: '',
      args: [],
    );
  }

  /// `Từ ngày`
  String get fromDate {
    return Intl.message(
      'Từ ngày',
      name: 'fromDate',
      desc: '',
      args: [],
    );
  }

  /// `Đến ngày`
  String get toDate {
    return Intl.message(
      'Đến ngày',
      name: 'toDate',
      desc: '',
      args: [],
    );
  }

  /// `Tìm thấy {num} chương trình khuyến mại`
  String availablePromotion(num num) {
    return Intl.message(
      'Tìm thấy $num chương trình khuyến mại',
      name: 'availablePromotion',
      desc: '',
      args: [num],
    );
  }

  /// `Bạn chưa chọn thời gian bắt đầu`
  String get validateFromDate {
    return Intl.message(
      'Bạn chưa chọn thời gian bắt đầu',
      name: 'validateFromDate',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa chọn thời gian kết thúc`
  String get validateToDate {
    return Intl.message(
      'Bạn chưa chọn thời gian kết thúc',
      name: 'validateToDate',
      desc: '',
      args: [],
    );
  }

  /// `Thời gian bắt đầu phải trước thời gian kết thúc`
  String get validateFromToDate {
    return Intl.message(
      'Thời gian bắt đầu phải trước thời gian kết thúc',
      name: 'validateFromToDate',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa chọn điểm phân phối`
  String get validateChoiceShop {
    return Intl.message(
      'Bạn chưa chọn điểm phân phối',
      name: 'validateChoiceShop',
      desc: '',
      args: [],
    );
  }

  /// `Chọn điểm phân phối`
  String get choiceShop {
    return Intl.message(
      'Chọn điểm phân phối',
      name: 'choiceShop',
      desc: '',
      args: [],
    );
  }

  /// `Không có giá trị`
  String get noValue {
    return Intl.message(
      'Không có giá trị',
      name: 'noValue',
      desc: '',
      args: [],
    );
  }

  /// `Không có kết quả nào`
  String get noResult {
    return Intl.message(
      'Không có kết quả nào',
      name: 'noResult',
      desc: '',
      args: [],
    );
  }

  /// `STT`
  String get stt {
    return Intl.message(
      'STT',
      name: 'stt',
      desc: '',
      args: [],
    );
  }

  /// `Mã khuyến mại`
  String get promotionalCode {
    return Intl.message(
      'Mã khuyến mại',
      name: 'promotionalCode',
      desc: '',
      args: [],
    );
  }

  /// `Tên chương trình`
  String get programName {
    return Intl.message(
      'Tên chương trình',
      name: 'programName',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết chương trình KM`
  String get detailPromotion {
    return Intl.message(
      'Chi tiết chương trình KM',
      name: 'detailPromotion',
      desc: '',
      args: [],
    );
  }

  /// `Đang lấy dữ liệu`
  String get onGetData {
    return Intl.message(
      'Đang lấy dữ liệu',
      name: 'onGetData',
      desc: '',
      args: [],
    );
  }

  /// `Ngày nhắc nhở`
  String get reminderDay {
    return Intl.message(
      'Ngày nhắc nhở',
      name: 'reminderDay',
      desc: '',
      args: [],
    );
  }

  /// `Ngày thực hiện`
  String get implementationDate {
    return Intl.message(
      'Ngày thực hiện',
      name: 'implementationDate',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung`
  String get content {
    return Intl.message(
      'Nội dung',
      name: 'content',
      desc: '',
      args: [],
    );
  }

  /// `Chọn nhân viên bán hàng`
  String get chooseASalesperson {
    return Intl.message(
      'Chọn nhân viên bán hàng',
      name: 'chooseASalesperson',
      desc: '',
      args: [],
    );
  }

  /// `Chọn trạng thái xử lý vấn đề`
  String get selectIssueStatus {
    return Intl.message(
      'Chọn trạng thái xử lý vấn đề',
      name: 'selectIssueStatus',
      desc: '',
      args: [],
    );
  }

  /// `Chọn loại vấn đề`
  String get selectProblemType {
    return Intl.message(
      'Chọn loại vấn đề',
      name: 'selectProblemType',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết vấn đề`
  String get ticketDetails {
    return Intl.message(
      'Chi tiết vấn đề',
      name: 'ticketDetails',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin chung`
  String get generalInformation {
    return Intl.message(
      'Thông tin chung',
      name: 'generalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Ngày tạo vấn đề`
  String get ticketCreationDate {
    return Intl.message(
      'Ngày tạo vấn đề',
      name: 'ticketCreationDate',
      desc: '',
      args: [],
    );
  }

  /// `Nhân viên`
  String get staff {
    return Intl.message(
      'Nhân viên',
      name: 'staff',
      desc: '',
      args: [],
    );
  }

  /// `Người tạo`
  String get createdUser {
    return Intl.message(
      'Người tạo',
      name: 'createdUser',
      desc: '',
      args: [],
    );
  }

  /// `Thêm vấn đề cần nhắc nhở`
  String get createReminderIssue {
    return Intl.message(
      'Thêm vấn đề cần nhắc nhở',
      name: 'createReminderIssue',
      desc: '',
      args: [],
    );
  }

  /// `Chọn ngày nhắc nhở`
  String get chooseReminderDay {
    return Intl.message(
      'Chọn ngày nhắc nhở',
      name: 'chooseReminderDay',
      desc: '',
      args: [],
    );
  }

  /// `Nhập nội dung cần nhắc nhở thực hiện`
  String get enterContentToBeRemindedToDo {
    return Intl.message(
      'Nhập nội dung cần nhắc nhở thực hiện',
      name: 'enterContentToBeRemindedToDo',
      desc: '',
      args: [],
    );
  }

  /// `Thêm vấn đề thành công`
  String get createSuccessProblems {
    return Intl.message(
      'Thêm vấn đề thành công',
      name: 'createSuccessProblems',
      desc: '',
      args: [],
    );
  }

  /// `Hình ảnh`
  String get photos {
    return Intl.message(
      'Hình ảnh',
      name: 'photos',
      desc: '',
      args: [],
    );
  }

  /// `Mã khách hàng`
  String get customerCode {
    return Intl.message(
      'Mã khách hàng',
      name: 'customerCode',
      desc: '',
      args: [],
    );
  }

  /// `Số hình ảnh`
  String get photoNumber {
    return Intl.message(
      'Số hình ảnh',
      name: 'photoNumber',
      desc: '',
      args: [],
    );
  }

  /// `Báo cáo tiến độ`
  String get progressReports {
    return Intl.message(
      'Báo cáo tiến độ',
      name: 'progressReports',
      desc: '',
      args: [],
    );
  }

  /// `Ngày`
  String get date {
    return Intl.message(
      'Ngày',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Lũy kế đến`
  String get accumulationTo {
    return Intl.message(
      'Lũy kế đến',
      name: 'accumulationTo',
      desc: '',
      args: [],
    );
  }

  /// `Tổng cộng`
  String get total {
    return Intl.message(
      'Tổng cộng',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Mã tuyến`
  String get routeCode {
    return Intl.message(
      'Mã tuyến',
      name: 'routeCode',
      desc: '',
      args: [],
    );
  }

  /// `Chọn một giá trị`
  String get chooseAValue {
    return Intl.message(
      'Chọn một giá trị',
      name: 'chooseAValue',
      desc: '',
      args: [],
    );
  }

  /// `Nhập giá trị`
  String get enterValue {
    return Intl.message(
      'Nhập giá trị',
      name: 'enterValue',
      desc: '',
      args: [],
    );
  }

  /// `Thuộc tính bổ sung`
  String get additionalAttributes {
    return Intl.message(
      'Thuộc tính bổ sung',
      name: 'additionalAttributes',
      desc: '',
      args: [],
    );
  }

  /// `Loại khách hàng`
  String get customerType {
    return Intl.message(
      'Loại khách hàng',
      name: 'customerType',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng chọn`
  String get pleaseChoose {
    return Intl.message(
      'Vui lòng chọn',
      name: 'pleaseChoose',
      desc: '',
      args: [],
    );
  }

  /// `Chọn ngày thực hiện`
  String get chooseImplementationDate {
    return Intl.message(
      'Chọn ngày thực hiện',
      name: 'chooseImplementationDate',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng chọn nhân viên bán hàng`
  String get pleaseSelectSalesperson {
    return Intl.message(
      'Vui lòng chọn nhân viên bán hàng',
      name: 'pleaseSelectSalesperson',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập nội dung cần nhắc nhở thực hiện`
  String get pleaseEnterTheContentToBeRemindedToDo {
    return Intl.message(
      'Vui lòng nhập nội dung cần nhắc nhở thực hiện',
      name: 'pleaseEnterTheContentToBeRemindedToDo',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng chọn loại vấn đề`
  String get pleaseSelectIssueType {
    return Intl.message(
      'Vui lòng chọn loại vấn đề',
      name: 'pleaseSelectIssueType',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng chọn ngày nhắc nhở`
  String get pleaseSelectReminderDate {
    return Intl.message(
      'Vui lòng chọn ngày nhắc nhở',
      name: 'pleaseSelectReminderDate',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng chọn ngày thực hiện`
  String get pleaseSelectImplementationDate {
    return Intl.message(
      'Vui lòng chọn ngày thực hiện',
      name: 'pleaseSelectImplementationDate',
      desc: '',
      args: [],
    );
  }

  /// `Chưa có đánh giá nào`
  String get thereAreNoReviewsYet {
    return Intl.message(
      'Chưa có đánh giá nào',
      name: 'thereAreNoReviewsYet',
      desc: '',
      args: [],
    );
  }

  /// `Nhập nội dung đánh giá`
  String get enterTheContentOfTheReview {
    return Intl.message(
      'Nhập nội dung đánh giá',
      name: 'enterTheContentOfTheReview',
      desc: '',
      args: [],
    );
  }

  /// `Đánh giá`
  String get review {
    return Intl.message(
      'Đánh giá',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `Xóa`
  String get delete {
    return Intl.message(
      'Xóa',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Duyệt`
  String get approve {
    return Intl.message(
      'Duyệt',
      name: 'approve',
      desc: '',
      args: [],
    );
  }

  /// `Thực hiện`
  String get processTickets {
    return Intl.message(
      'Thực hiện',
      name: 'processTickets',
      desc: '',
      args: [],
    );
  }

  /// `Y/C làm lại`
  String get renewTickets {
    return Intl.message(
      'Y/C làm lại',
      name: 'renewTickets',
      desc: '',
      args: [],
    );
  }

  /// `Phê duyệt vấn đề thành công`
  String get approveTicketsSuccessfully {
    return Intl.message(
      'Phê duyệt vấn đề thành công',
      name: 'approveTicketsSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Thực hiện vấn đề thành công`
  String get implementTheProblemSuccessfully {
    return Intl.message(
      'Thực hiện vấn đề thành công',
      name: 'implementTheProblemSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu làm lại vấn đề thành công`
  String get requestToRedoTheProblemSuccessfully {
    return Intl.message(
      'Yêu cầu làm lại vấn đề thành công',
      name: 'requestToRedoTheProblemSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Xóa vấn đề thành công`
  String get successfullyClearedTheProblem {
    return Intl.message(
      'Xóa vấn đề thành công',
      name: 'successfullyClearedTheProblem',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có muốn phê duyệt vấn đề này không?`
  String get wouldYouLikeToApproveThisIssue {
    return Intl.message(
      'Bạn có muốn phê duyệt vấn đề này không?',
      name: 'wouldYouLikeToApproveThisIssue',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có muốn xóa vấn đề này không?`
  String get doYouWantToClearThisIssue {
    return Intl.message(
      'Bạn có muốn xóa vấn đề này không?',
      name: 'doYouWantToClearThisIssue',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có muốn thực hiện vấn đề này không?`
  String get doYouWantToDoThis {
    return Intl.message(
      'Bạn có muốn thực hiện vấn đề này không?',
      name: 'doYouWantToDoThis',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có muốn yêu cầu làm lại vấn đề này không?`
  String get wouldYouLikeToRequestARedoOfThisIssue {
    return Intl.message(
      'Bạn có muốn yêu cầu làm lại vấn đề này không?',
      name: 'wouldYouLikeToRequestARedoOfThisIssue',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin chi tiết >`
  String get details {
    return Intl.message(
      'Thông tin chi tiết >',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Số lần ghé thăm/tháng`
  String get numberOfVisitsMonth {
    return Intl.message(
      'Số lần ghé thăm/tháng',
      name: 'numberOfVisitsMonth',
      desc: '',
      args: [],
    );
  }

  /// `Ngày vào tuyến`
  String get dateJoinRoute {
    return Intl.message(
      'Ngày vào tuyến',
      name: 'dateJoinRoute',
      desc: '',
      args: [],
    );
  }

  /// `Ngày đặt hàng cuối`
  String get lastOrderDate {
    return Intl.message(
      'Ngày đặt hàng cuối',
      name: 'lastOrderDate',
      desc: '',
      args: [],
    );
  }

  /// `Doanh số tháng trước`
  String get lastMonthSales {
    return Intl.message(
      'Doanh số tháng trước',
      name: 'lastMonthSales',
      desc: '',
      args: [],
    );
  }

  /// `Hiện có {num} khách hàng chưa PSDS trong tháng`
  String customersHaveNotPSDSInTheMonth(num num) {
    return Intl.message(
      'Hiện có $num khách hàng chưa PSDS trong tháng',
      name: 'customersHaveNotPSDSInTheMonth',
      desc: '',
      args: [num],
    );
  }

  /// `Thông tin nhân viên`
  String get staffInfomation {
    return Intl.message(
      'Thông tin nhân viên',
      name: 'staffInfomation',
      desc: '',
      args: [],
    );
  }

  /// `Tên tuyến`
  String get routeName {
    return Intl.message(
      'Tên tuyến',
      name: 'routeName',
      desc: '',
      args: [],
    );
  }

  /// `Chọn một ngày`
  String get chooseADate {
    return Intl.message(
      'Chọn một ngày',
      name: 'chooseADate',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách album`
  String get listAlbums {
    return Intl.message(
      'Danh sách album',
      name: 'listAlbums',
      desc: '',
      args: [],
    );
  }

  /// `Chọn nhân viên`
  String get chooseAStaff {
    return Intl.message(
      'Chọn nhân viên',
      name: 'chooseAStaff',
      desc: '',
      args: [],
    );
  }

  /// `Chọn trạng thái đơn hàng`
  String get chooseOrderStatus {
    return Intl.message(
      'Chọn trạng thái đơn hàng',
      name: 'chooseOrderStatus',
      desc: '',
      args: [],
    );
  }

  /// `Doanh số`
  String get sales {
    return Intl.message(
      'Doanh số',
      name: 'sales',
      desc: '',
      args: [],
    );
  }

  /// `Tìm kiếm sản phẩm`
  String get searchProduct {
    return Intl.message(
      'Tìm kiếm sản phẩm',
      name: 'searchProduct',
      desc: '',
      args: [],
    );
  }

  /// `Nợ hiện tại`
  String get currentDebt {
    return Intl.message(
      'Nợ hiện tại',
      name: 'currentDebt',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLanguage> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLanguage> load(Locale locale) => AppLanguage.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
