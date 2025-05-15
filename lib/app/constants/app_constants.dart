// ignore_for_file: constant_identifier_names

class AppConstant {
  static const String clientId = 'p_002_r_001';
  static const String mailRecipient = 'mail_recipient';
  static const String nameRecipient = 'name_recipient';
  static const String phoneRecipient = 'phone_recipient';
  static const String contactRecipient = 'contact_recipient';
  static const String day = 'ngay';
  static const String month = 'thang';
  static const String year = 'nam';
  static const String dateOfBirth = 'ngaysinh_KH';
  static const String fullName = 'name_KH';
  static const String sex = 'gioitinh_KH';
  static const String idCardNumber = 'cccd_KH';
  static const String issuedDate = 'ngaycap_KH';
  static const String issuedPlace = 'noicap_KH';
  static const String currentAddress = 'diachi_KH';
  static const String phoneNumber = 'sdt_KH';
  static const String location = 'diachi_KH';
  static const String email = 'email_KH';
  static const String refId = 'refId';
  static const String headerField = 'header_fields';
  static const String serviceId = 'Service ID';
  static const String envno = 'so_HD';
  static const String nationality = 'quoctich_KH';
  static const String selector = 'flow_start_finra_create_econtract_from_template_integrate';
  static const String notExtendType = 'KHONG_GIA_HAN';
  static const String principalAndInterest = 'LAI_NHAP_GOC';
  static const String principal = 'NGUYEN_GOC';
  static const int flagNotAllowedExtend = 0;
  static const int flagAllowedExtend = 1;

  static const int DEV_ENV = 0;
  static const int PRO_ENV = 1;

  ///to chuc
  static const List<String> company = [
    'name_company',
    'diachi_company',
    'sdt_company',
    'email_company',
    'sodkkd_company',
    'ngaycap_company',
    'noicap_company',
    'mst_company',
    'ngaysua_company',
    'mst_company',
    'stk_company',
    'nganhang_company',
  ];

  /// dai dien
  static const List<String> represent = [
    'name_daidien',
    'chucvu_daidien',
    'so_daidien',
    'ngaysinh_daidien',
    'quoctich_daidien',
    'gioitinh_daidien',
    'cccd_daidien',
    'ngaycap_daidien',
    'noicap_daidien',
    'diachi_daidien',
    'sdt_daidien',
    'email_daidien',
  ];

  /// uy quyen
  static const List<String> authorization = [
    'name_uyquyen',
    'chucvu_uyquyen',
    'so_uyquyen',
    'ngaysinh_uyquyen',
    'quoctich_uyquyen',
    'gioitinh_uyquyen',
    'cccd_uyquyen',
    'ngaycap_uyquyen',
    'noicap_uyquyen',
    'diachi_uyquyen',
    'sdt_uyquyen',
    'email_uyquyen',
  ];
  static const String bankNumber = 'so_tai_khoan';
  static const String bankName = 'ngan_hang';

  static const String cast = 'CASH';
  static const String product = 'PRODUCT';
  static const String castDeposit = 'CASH_DEPOSIT';
  static const String castTransferOut = 'CASH_TRANSFER_OUT';

  static const String keyAccessToken = 'Finra_token_1234';
}
