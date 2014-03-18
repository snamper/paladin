# definr eus service
namespace php EUS
namespace py eus

/**
 * Const
 */
const i16 DEFAULT_LIST_SIZE = 20
const i16 MAX_LIST_SIZE = 200
const i16 ANONYMOUS_USER_ID = 886
const list<i32> TEST_USER_IDS= [182506, 192927, 3215]

const string PERMISSION_MANAGE_ALL_AREA = "manage_all_area"
const string DIRECTOR_MANAGE_RESTAURANT = "direct_manage_restaurant"
const string PERMISSION_MANAGE_RESTAURANT = "walle_restaurant_manage"
const string PAY_METHOD_ALIPAY_MOBILE_APP = "ALIPAY_MOBILE_APP"
const string PAY_METHOD_ALIPAY_MOBILE_WEB = "ALIPAY_MOBILE_WEB"
const string PAY_METHOD_TENPAY_WEB = "TENPAY_WEB"
const string USER_ACCESS_TOKEN_KEY = "user:access_token"
const string ACCESS_TOKEN_USER_KEY = "access_token:user"

/**
 * Enums
 */
enum UserNoticeConst {
    TYPE_EMAIL = 1,
    TYPE_SMS = 2,
}

enum SNSType {
    WEIBO = 1,
    RENREN = 2,
}

enum DeviceType {
    IOS = 1,
    ANDROID = 2,
}

enum DopUserProcessType {
    NO_ORDER = 0,
    NORMAL_ORDER = 1,
    TPD_ORDER = 2,
    TERMINAL_ORDER = 3,
    ELEME_ORDER = 4,
}

enum HongbaoConst {
    STATUS_UNUSED = 0,
    STATUS_USED = 1,
    STATUS_ORDER_CANCEL = 2,
}

enum ReferConst {
    STATUS_WAITING = 0,
    STATUS_VALID = 1,
    STATUS_AWARDED = 2,
    STATUS_INVALID = 3,
    STATUS_REFERER_AWARDED = 4,
}

enum UserMessageConst {
    TYPE_ORDER_PROCESS = 0,
    TYPE_ORDER_RATE = 1,
    TYPE_ORDER_INVALID = 2,
    TYPE_FEEDBACK_REPLY = 101,
    TYPE_COMMENT_REPLY = 102,
    TYPE_REFUND_SUCCESS = 201,
    TYPE_REFUND_FAIL = 202,
    TYPE_REFUND_RESTAURANT_REPLY = 203,
}

enum PointChangeRecordConst {
    TYPE_MAKE_ORDER = 0,
    TYPE_VALID_ORDER = 1,
    TYPE_INVALID_ORDER = 2,
    TYPE_RATE_ORDER = 3,
    TYPE_RATE_FOOD = 4,
    TYPE_EXCHANGE_GIFT = 5,
    TYPE_SYSTEM = 6,
    TYPE_ADMIN = 7,
    TYPE_UPLOAD_IMAGE = 8,
}

enum CustomerServiceProcessTypeConst {
    NO_ORDER = 0,
    NORMAL_ORDER = 1,
    TPD_ORDER = 2,
    TERMINAL_ORDER = 3,
    ELEME_ORDER = 4,
}

enum BalanceChangeConst {
    TRADE_TYPE_CHARGE = 0,
    TRADE_TYPE_CONSUME = 1,
    TRADE_TYPE_PRODUCE = 2,
    TRADE_TYPE_REFUND = 3,
    TRADE_TYPE_WITHDRAW_APPLY = 4,
    TRADE_TYPE_WITHDRAW_FAIL = 5,
    TRADE_TYPE_BONUS = 6,
    TRADE_TYPE_DRAWBACK = 7,
    TRADE_TYPE_PAY_AUTO_FAIL = 8,
    TRADE_TYPE_DIRECT_CONSUME = 9,
    TRADE_TYPE_CONTRACT = 10,

    PAY_METHOD_ELEME = 0,
    PAY_METHOD_ALIPAY = 1,
}

enum WithdrawRecordConst {
    STATUS_UNPROCESSED = 1
    STATUS_GENERATED = 2
    STATUS_SUBMITTED = 3
    STATUS_SUCCESS = 4
    STATUS_WARNING_FAIL = 5
    STATUS_FATAL_FAIL = 6
}

enum UserGiftConst {
    STATUS_UNPROCESSED = 0,
    STATUS_PROCESSED = 1,
    STATUS_PROCESSING = 2,
}

enum PayRecordConst {
    PAY_CO_ID_ALIPAY = 1,
    PAY_CO_ID_TENPAY = 2,
    PAY_CO_ID_CHARGE_BONUS = 3,
    PAY_METHOD_ALIPAY_MOBILE_APP = 4,
    PAY_METHOD_ALIPAY_MOBILE_WEB = 5,
}

enum OrderPaymentConstitutionConst {
    PAY_TYPE_BALANCE = 1,
    PAY_TYPE_DIRECTLY = 2,
    PAY_TYPE_ECREDIT = 3,
    PAY_TYPE_HONGBAO = 4,
}

enum SfGroupCategoryConst {
    MARKET = 1,
    CUSTOMER_SERVICE = 2,
    RESTAURANT = 3,
    OTHER = 4,
    AUTO = 5,
}

enum UserBankcardStatus{
    INVALID = -1,
    PENDING = 0,
    VALID = 1,
}

enum WithdrawProcessRecordConst {
    STATUS_SUBMITTED = 3
    STATUS_SUCCESS = 4
    STATUS_WARNING_FAIL = 5
    STATUS_FATAL_FAIL = 6
}

enum FeedbackConst  {
    TYPE_OTHER = 0,
    TYPE_USER = 1,
    TYPE_BUG = 2,
    TYPE_SUGGESTION = 3,
    TYPE_COMPLAINT = 4,
    TYPE_NEW_PAGE = 5,
    TYPE_REQUEST_FOR_ORDER = 10,
}

enum TerminalValidationConst {
    TYPE_MOBILE = 0,
    TYPE_EMAIL = 1,
}

enum UserCertificationConst {
    STATUS_PEND = 0,
    STATUS_PASS = 1,
    STATUS_FAIL = -1,

    TYPE_NONE = 0,
    TYPE_PERSONAL = 1,
    TYPE_BUSINESS = 2,
}

enum SSODestroyActionConst {
    ACTION_LOGOUT = 1,
    ACTION_REMOVE_MANUALLY = 2,
    ACTION_PASSWORD_CHANGE = 3
}


/**
 * Types and Structs
 */
typedef i64 Timestamp
typedef i64 Geohash
typedef string Mobile
typedef list<string> FieldList
typedef string DeviceId
typedef string Json

struct TCPayReturnInfo {
    1:i32 pay_record_id,
    2:string trade_no,
    3:i32 pay_co_id,
    4:double total_fee,
    5:string customer_pay_id,
    6:string remark,
}

struct TUserProfile {
    1: required i32 id,
    2: required i32 current_address_id,
    3: required double balance,
    4: required i32 point,
    5: required string email,
    6: required i16 is_email_valid,
    7: optional Mobile mobile,
    8: required i16 is_mobile_valid,
    9: required string validate_string,
    10: required string avatar,
    11: optional i32 current_invoice_id,
    12: required i32 user_id,
    13: required i32 payment_quota,
    14: required string payment_password,
    15: required string name,
    16: required i32 certification_type,
    17: required string referal_code,
}


struct TUserPlace {
    1: optional i32 id,
    2: optional i32 user_id,
    3: optional i64 place_id,
    4: optional string place_name,
    5: optional Timestamp created_at,
    6: optional Timestamp last_visit,
    7: optional string pguid,
    8: optional string poi_name,
    9: optional string psn,
}


struct TUser {
    1: required i32 id,
    2: required string username,
    3: optional Timestamp last_login,
    4: optional Timestamp created_at,
    5: required i16 is_active,
    6: required i16 is_super_admin,
}


struct TSignupExtendParam {
    1: optional string referal_code,
    2: optional string refer_url,
    3: optional string user_agent,
    4: optional string device_id,
}


struct TBank {
    1: required i16 id,
    2: required string bank_name,
    3: required string cgb_name,
    4: required string cgb_id,
}


struct TThirdUserSession {
    1: required i32 id,
    2: required string user_id,
    3: required string session_id,
    4: required i16 type,
    5: required Timestamp created_at,
}


struct TUserMessage{
    1: required i32 id,
    2: required i32 user_id,
    3: required i32 type,
    4: required string msg_abstract,
    5: required string content,
    6: required string target_id,
    7: required string url,
    8: required i16 is_read,
    9: optional Timestamp created_at,
    10: optional Timestamp begin_at,
    11: optional Timestamp end_at,
    12: optional Timestamp read_at,
}


struct TFullUser {
    1: required TUser user,
    2: required TUserProfile profile,
}


struct TAddress {
    1: required i32 id,
    2: required i32 user_id,
    3: required string address,
    4: required string phone,
    5: required i16 is_valid,
    6: optional Timestamp created_at,
    7: optional i32 entry_id,
    8: required string phone_bk,
    9: required i64 geohash,
}

struct TDopUser {
    1: required i32 id,
    2: required i32 user_id,
    3: required string call_user,
    4: required string call_pwd,
    5: required i32 call_status,
    6: required i16 is_online,
    7: required i16 process_type,
    8: optional Timestamp created_at,
    9: optional double weight,
}

struct TInvoice {
    1: required i32 id,
    2: required i32 user_id,
    3: required string invoice_pay_to,
    4: required Timestamp created_at,
}

struct TGift {
    1: required i32 id,
    2: required string name,
    3: required string description,
    4: required string image_url,
    5: required i32 price,
    6: required Timestamp created_at,
    7: required i16 is_valid,
    8: required i16 amount,
    9: optional string thumb_url,
    10: required i16 is_new,
    11: required i16 is_apple_product,
    12: required string image_hash,
    13: required string thumb_hash,
}

struct TGroup {
    1: required i32 id,
    2: required string name,
    3: required string description,
    4: required i32 rank,
    5: required i32 category,
    6: required i32 is_eleme,
}

struct THongbao {
    1: optional i32 id,
    2: optional string sn,
    3: optional i32 user_id,
    4: optional double amount,
    5: optional double used_amount,
    6: optional Timestamp created_at,
    7: optional Timestamp used_at,
    8: optional Timestamp updated_at,
    9: optional string begin_date,
    10: optional string end_date,
    11: optional i32 sum_condition,
    12: optional i32 status,
    13: optional string name,
    14: optional string source,
    15: optional string tag,
}

struct TRefer {
    1: required i32 id,
    2: required i32 from_user_id,
    3: required i32 to_user_id,
    4: required string from_ip,
    5: required string to_ip,
    6: required string from_username,
    7: required string to_username,
    8: required string mobile,
    9: required i16 mobile_status,
    10: required i64 order_id,
    11: required i16 order_status,
    12: required Timestamp created_at,
    13: required string remark,
    14: required string refer_url,
    15: required string user_agent,
    16: required string from_city,
    17: required string to_city,
    18: required string mobile_city,
    19: required string device_id,
}

struct TReferQuery {
    1: optional i32 from_user_id,
    2: optional i32 offset,
    3: optional i32 limit,
}

struct TPermission {
    1: required i32 id,
    2: required string name,
    3: required string description,
    4: required i32 rank,
}

struct TGroupPermission {
    1: required i32 group_id,
    2: required i32 permission_id,
}

struct TUserGift {
    1: required i32 id,
    2: required i32 user_id,
    3: required i32 gift_id,
    4: required string delivery_name,
    5: required string delivery_address,
    6: required string delivery_phone,
    7: required string delivery_note,
    8: required Timestamp created_at,
    9: required i16 processed,
    10: required i16 is_valid,
    11: required string note,
}


struct TWeiboUserMap {
    1: required i32 id,
    2: required i64 weibo_uid,
    3: required i32 user_id,
    4: required i16 is_bound,
    5: optional Timestamp created_at,
}


struct TRenrenUserMap {
    1: required i32 id,
    2: required i64 renren_uid,
    3: required i32 user_id,
    4: required i16 is_bound,
    5: optional Timestamp created_at,
    6: required i16 enable_publish,
    7: required i16 publish_order,
    8: required i16 publish_dianping,
}

struct TSNSMapStruct {
    1: required i32 user_id,
    2: required i64 sns_uid,
    3: required SNSType sns_type,
}

struct TGiftQuery {
    1: optional i16 is_apple_product,
    2: optional i16 is_new,
    3: optional i16 is_valid,
    4: optional i16 min_amount,
    5: optional i16 offset,
    6: optional i16 limit,
    7: optional string name,
}

struct TPointChangeRecordQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional string sort_key,
    4: optional string sort_type,
    # Filters
    5: required i32 user_id,
    6: optional string start_date,
    7: optional string end_date,
    8: optional i16 delta,
}

struct TWallePointChangeQuery {
    1: required i32 user_id,
    2: optional Timestamp from_datetime,
    3: optional Timestamp to_datetime,

    4: optional i32 offset,
    5: optional i32 limit,
}

struct TPointChangeRecord {
    1:optional i32 id,
    2:optional i32 user_id,
    3:optional Timestamp created_at,
    4:optional i32 delta,
    5:optional string reason,
    6:optional i64 relevant_id,
    7:optional i16 change_type,
}

struct TUserGiftQuery {
    1: optional i16 processed,
    2: optional i16 is_valid,
    3: optional i16 offset,
    4: optional i16 limit,
    5: optional string keyword,
}

struct TUserQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional string keyword,
    # Filters
    4: optional bool is_active,
    5: optional bool is_super_admin,
    6: optional list<i32> group_ids,
    7: optional i16 category,
    8: optional string mobile,
    9: optional string email,
    10: optional string name,
}

struct TFullUserQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional string keyword,
    # Filters
    4: optional bool is_active,
    5: optional bool is_super_admin,
}

struct TFeedbackQuery {
    1: optional list<i32> comment_types,
    # deprecated
    2: optional i32 entry_id,
    # deprecated
    3: optional i32 zone_id,
    # deprecated
    4: optional i32 district_id,
    5: optional i32 city_id,
    6: optional i32 offset,
    7: optional i32 limit,
    8: optional i32 feedback_id,
    9: optional i32 is_processed,
    10:optional i16 is_valid,
    11:optional Timestamp created_at_start,
    12:optional Timestamp created_at_end,
    13:optional string username,
}

struct TFeedbackReplyQuery {
    1: optional i32 user_id,
    2: optional string username,
    3: optional i16 is_valid,
    4: optional i16 is_processed,
    5: optional i16 is_from_admin,
    6: optional i32 offset,
    7: optional i32 limit,
    8: optional Timestamp created_at_start,
    9: optional Timestamp created_at_end,
}

struct TWallePayStatsQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional string sort_key,
    4: optional string sort_type,
    # Filters
    5: optional string date_start,
    6: optional string date_end,
}

struct TBlockedDeviceUserQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional i32 user_id,
    4: optional i32 come_from,
    5: optional i32 operator_user_id,
    6: optional string device_id,
}

struct TBlockedDeviceUser {
    1: required i32 id,
    2: required string device_id,
    3: required i32 come_from,
    4: optional string reason,
    5: optional i32 operator_user_id,
    6: optional i32 user_id,
}

struct THongbaoQuery {
    1: optional i32 user_id,
    2: optional list<i16> statuses,
    3: optional string begin_date_from,
    4: optional string begin_date_to,
    5: optional string end_date_from,
    6: optional string end_date_to,
    7: optional Timestamp created_at_from,
    8: optional Timestamp created_at_to,
    9: optional Timestamp used_at_from,
    10: optional Timestamp used_at_to,
    11: optional i32 limit,
    12: optional i32 offset,
    13: optional string order_by,
    14: optional i32 sum_condition,
    15: optional string source,
}

struct THongbaoSum {
    1: optional i32 user_id,
    2: optional list<i16> statuses,
    3: optional Timestamp used_at_from,
    4: optional Timestamp used_at_to,
    5: optional string source,
}

struct TOrderPaymentConstitution{
    1: required i32 id,
    2: required i64 order_id,
    3: required i32 user_id,
    4: required i32 trade_record_id,
    5: required i32 balance_or_pay_id,
    6: required i32 pay_type,
    7: required double amount,
    8: required i32 status
}

struct TPayError{
    1: required i32 id,
    2: required string fail_from,
    3: required string ip,
    4: required string description,
    5: required string request_content,
    6: required Timestamp created_at,
}

struct TPayRecord {
    1: required i32 id,
    2: required i32 user_id,
    3: required string trade_no,
    4: required i32 pay_purpose,
    5: required i32 pay_co_id,
    6: required double total_fee,
    7: required string customer_pay_id,
    8: required i32 pay_status,
    9: required string remark,
    10: required Timestamp created_at,
    11: required Timestamp succeeded_at,
}

struct TFeedback {
    1: required i32 id,
    2: required i32 user_id,
    3: required string username,
    4: required Timestamp created_at,
    5: required string content,
    6: required i16 is_valid,
    7: required i16 is_processed,
    8: required i32 entry_id,
    9: required i32 type,
    10: required i32 district_id,
    11: required i32 zone_id,
    12: required i32 city_id,
    13: required i64 geohash,
    14: optional string user_agent,
}

struct TFeedbackReply{
    1: required i32 id,
    2: required i32 feedback_id,
    3: required i32 user_id,
    4: required string username,
    5: required string content,
    6: required i16 is_valid,
    7: required Timestamp created_at,
    8: required i16 is_from_admin,
}

struct TCFeedbackWithReplies{
    1: required TFeedback feedback,
    2: required list<TFeedbackReply> feedback_replies,
}

struct TCFeedbackInfo {
    1: required i32 feedback_id,
    2: required Timestamp feedback_at,
    3: required i16 city_id,
    4: required Geohash geohash,
    5: required i32 reply_id,
    6: required Timestamp reply_at,
    7: required i32 reply_by,
}


struct TWithdrawRecord {
    1: required i32 id,
    2: required i32 user_id,
    3: required double amount,
    4: required i16 status,
    5: required Timestamp created_at,
    6: required string remark,
}

struct TCWithdrawRecord {
    1:required double amount,
    2:required i32 bank_id,
    3:required string cgb_id,
    4:required string card_id,
    5:required string bank_name,
    6:required string cardholder_name,
    7:required i32 withdraw_id,
}

struct TCDrawbackRecord {
    1:required string username,
    2:required double amount,
    3:required string out_trade_no,
    4:required string trade_no
}

struct TCDrawbackReport {
    1:required list<TCDrawbackRecord> mobile_records,
    2:required string batch_report
}

struct TWalleWithdrawApplyQuery {
    1: optional list<i16> statuses,
    2: optional i32 restaurant_id,
    3: optional i32 offset,
    4: optional i32 limit,
    5: optional Timestamp from_created_at,
    6: optional Timestamp to_created_at,
}

struct TWalleWithdrawRecordQuery {
    1: optional list<i16> statuses,
}

struct TCWalleWithdrawApply {
    1:required i32 id,
    2:required i32 user_id,
    3:required double amount,
    4:required i16 status,
    5:required Timestamp created_at,
    6:required string remark,

    7:required string card_id,
    8:required string bank_name,
    9:required string cardholder_name,
    10:required i32 restaurant_id,
    11:required string restaurant_name,
    12:required string username,
    13:required i32 bank_id,
}

struct TTerminalValidation
{
   1: required i32 id,
   2: required i32 user_id,
   3: required string terminal,
   4: required i16 terminal_type,
   5: required string validate_code,
   6: required i16 is_valid,
   7: required i16 lives,
   8: required Timestamp created_at,
   9: required i16 is_success,
   10: required Timestamp succeeded_at,
   11: required i16 is_used,
   12: required string ip,
}

struct TTerminalValidationQuery
{
    1: optional i32 user_id,
    2: optional i16 is_valid,
    3: optional i16 is_success,
    4: optional i16 is_used,
    5: optional string ip,
    6: optional i16 terminal_type,
    7: optional string terminal,
    8: optional Timestamp created_at,
    9: optional i16 lives,
    10: optional i32 offset,
    11: optional i32 limit,
    12: optional string orderby,
}

struct TRestaurantAdmin {
    1: required i32 restaurant_id,
    2: required i32 user_id,
}

struct TSfGuardRememberKey {
    1: required i32 user_id,
    2: required string remember_key,
    3: required string ip_address,
    4: required Timestamp created_at,
}

struct TCBatchCheckResult {
    1:required list<i32> success_ids,
    2:required list<i32> failed_ids
}

struct TUserBankcard {
    1:required i32 id,
    2:required i32 user_id,
    3:required string card_id,
    4:required i32 bank_id,
    5:required string cardholder_name,
    6:required i16 status,
    7:required Timestamp created_at,
    8:optional string city_name,
    9:optional string branch_name,
}

struct TUserMetaData {
    1:required i32 id,
    2:required i32 user_id,
    3:required string username,
    4:required i32 refer_count,
    5:required Timestamp succeeded_at
}

struct TUserMetaDataQuery {
    1:optional i32 offset,
    2:optional i32 limit,
}

struct TUserReferRank {
    1:optional i32 rank,
    2:optional string prize,
}

struct TWalleOnlinePaymentApplyQuery {
    1:optional i16 status,
    2:optional i32 bank_id,
    3:optional string search,
    4:optional list<i32> region_ids,

    5:optional i32 offset,
    6:optional i32 limit,
}

struct TCWalleOnlinePaymentApply {
    1:required i32 id,
    2:required i32 user_id,
    3:required string card_id,
    4:required i32 bank_id,
    5:required string cardholder_name,
    6:required i16 status,
    7:required Timestamp created_at,

    8:required i32 restaurant_id,
    9:required string restaurant_name,
    10:required string username,
    11:required string bank_name,
}

struct TCUserBankCard {
    1:required i32 id,
    2:required i32 user_id,
    3:required string card_id,
    4:required i32 bank_id,
    5:required string cardholder_name,
    6:required string username,
    7:required string bank_name,
}

struct TUserProfileQuery {
    1:optional string email,
    2:optional i16 is_email_valid,
    3:optional Mobile mobile,
    4:optional i16 is_mobile_valid,
    5:optional string referal_code,
}

struct TCAccountDailyStats {
    1:required i32 type,
    2:required double amount,
    3:required i32 count,
    4:required string date
}

struct TTradeRecordQuery {
    1:optional Timestamp from_datetime,
    2:optional Timestamp to_datetime,
    3:optional list<i32> categories,
    4:optional list<i32> statuses,
    5:optional i32 user_id,
    6:optional i32 offset,
    7:optional i32 limit,
    8:optional i16 asc,
}

struct TTradeRecord {
    1:required i32 id,
    2:required i32 user_id,
    3:required i32 type,
    4:required string trade_no,
    5:required double amount,
    6:required i32 status,
    7:required string remark,
    8:required Timestamp created_at,
    9:required Timestamp finished_at,
}

struct TLoginStruct {
    1:required i32 user_id,
    2:required string ip,
    3:optional string key,
}

struct TLoginInfo {
    1:required i32 id,
    2:required i32 user_id,
    3:required Timestamp created_at,
    4:required string username,
    5:required string ip,
}

struct TLoginInfoQuery {
    1:optional i32 user_id,
    2:optional Timestamp from_datetime,
    3:optional Timestamp to_datetime,
    4:optional string ip,
    5:optional i32 offset,
    6:optional i32 limit,
}

struct TUserBalanceChangeQuery {
    1:optional list<i32> user_ids,
    2:optional list<i32> trade_types,
    3:optional i32 pay_method,
    4:optional Timestamp from_datetime,
    5:optional Timestamp to_datetime,
}

struct TCWalleBalanceChange {
    1:optional i32 id,
    2:optional i32 user_id,
    3:optional double balance,
    4:optional double balance_change,
    5:optional string  trade_no,
    6:optional i16 trade_type,
    7:optional i16 pay_method,
    8:optional Timestamp created_at,
    9:optional string alipay_trade_no,
}

struct TCWallePayStatsOverview {
    1:optional i32 count,
    2:optional double amount,
}

struct TCWallePayStatsDetail {
    1:optional i32 count,
    2:optional double amount,
    3:optional string user_name,
}


struct TWalleBalanceChangeQuery {
    1:required i32 user_id,
    2:optional list<i16> trade_types,
    3:optional list<i16> pay_methods,
    4:optional Timestamp from_datetime,
    5:optional Timestamp to_datetime,
    6:optional i32 offset,
    7:optional i32 limit,
}

struct TUserPlaceQuery
{
    1:optional i32 user_id,
    2:optional i64 place_id,
    3:optional i32 limit,
    4:optional string psn,
}

struct TAlipayInfo {
    1:optional i32 id,
    2:optional string seller_account,
    3:optional string callback_url,
    4:optional string web_notify_url,
    5:optional string app_notify_url,
    6:optional string sign_url,
    7:optional string verify_url,
    8:optional string decrypt_url,
    9:optional string v2_callback_url,
}

struct TWithdrawProcessRecord {
    1:optional i32 id,
    2:optional string batch_id,
    3:optional i32 withdraw_id,
    4:optional string card_id,
    5:optional i32 bank_id,
    6:optional string cardholder_name,
    7:optional double amount,
    8:optional i16 status,
    9:optional Timestamp processed_at,
    10:optional Timestamp finished_at,
    11:optional string reason,
}

struct TCWithdrawProcessBatch {
    1:optional string batch_id,
    2:optional i16 total,
    3:optional i16 success,
    4:optional i16 warning_fail,
    5:optional i16 fatal_fail,
    6:optional Timestamp time,
    7:optional i16 is_finished,
}

struct TUserCertification {
    1:optional i32 id,
    2:optional i32 user_id,
    3:optional i32 certification_type,
    4:optional string person_name,
    5:optional string person_certification_id,
    6:optional string person_certification_image_front,
    7:optional string person_certification_image_back,
    8:optional string corporation_name,
    9:optional string business_license_id,
    10:optional string business_license_location,
    11:optional string business_license_expiration_date,
    12:optional string business_license_image,
    13:optional string address,
    14:optional string phone,
    15:optional i16 status,
    16:optional string corporation_phone,
    17:optional Timestamp created_at,
}

struct TUserCertificationApply {
    1:optional i32 certification_type,
    2:optional string person_name,
    3:optional string person_certification_id,
    4:optional string person_certification_image_front,
    5:optional string person_certification_image_back,
    6:optional string corporation_name,
    7:optional string business_license_id,
    8:optional string business_license_location,
    9:optional string business_license_expiration_date,
    10:optional string business_license_image,
    11:optional string address,
    12:optional string phone,
    13:optional string corporation_phone,
}

struct TUserCertificationQuery{
    1:optional list<i32> certification_types,
    2:optional list<i32> statuses,
    3:optional Timestamp from_created_at,
    4:optional Timestamp to_created_at,
    5:optional i32 offset,
    6:optional i32 limit,
    7:optional i32 user_id,
}

struct TCUserCertificationProcessRecord {
    1:optional i32 id,
    2:optional i32 user_id,
    3:optional i16 from_status,
    4:optional i16 to_status,
    5:optional string remark,
    6:optional i32 process_user_id,
    7:optional Timestamp created_at,
    8:optional string description,
    9:optional string username,
}

struct TUserChangeRecord {
    1: required i32 id,
    2: required i32 user_id,
    3: required i32 admin_user_id,
    4: required string description,
    5: required string process_type,
    6: required string from_value,
    7: required string to_value,
    8: required Timestamp created_at,
}

struct TUserChangeRecordQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional i32 user_id,
    4: optional i32 admin_user_id,
    5: optional string process_type,
}

/**
 * Exceptions
 */
enum EUSErrorCode {
    UNKNOWN_ERROR,

    // User Errors
    ADDRESS_NOT_FOUND,
    ALIPAY_ACCOUNTS_INVALID,
    ALREADY_BIND_EMAIL,
    ALREADY_BIND_MOBILE,
    ANDROID_MESSAGE_NOT_FOUND,
    ANONYMOUS_USER_CANT_CHARGE,
    BANKCARD_BIND_RECORD_NOT_FOUND,
    BANK_NOT_FOUND,
    BATCH_LOG_WRONG_FORMAT,
    BATCH_NOT_FOUND,
    CANT_PAY_FOR_ORDER,
    CANT_PAY_FOR_CONTRACT,
    CGB_ACCOUNTS_INVALID,
    CUSTOMER_SERVICE_NOT_FOUND,
    DOP_USER_NOT_FOUND,
    DUPLICATED_BANKCARD,
    DUPLICATED_BIND_CARD_REQUEST,
    EMAIL_OCCUPIED,
    EMAIL_VALIDATION_TOO_FREQUENT,
    FEEDBACK_NOT_FOUND,
    FEEDBACK_TOO_FREQUENT,
    GENERATED_RECORD_NOT_FOUND,
    GIFT_NOT_FOUND,
    GIFT_REMAIN_NONE,
    HONGBAO_AMOUNT_NOT_ENOUGH,
    HONGBAO_INVALID,
    HONGBAO_NOT_FOUND,
    HONGBAO_OTHER_PEOPLES,
    HONGBAO_USED,
    INSUFFICIENT_BALANCE,
    INVALID_BANKCARD_ID,
    INVALID_EMAIL,
    INVALID_BACKUP_PHONE,
    INVALID_MOBILE,
    INVALID_PASSWORD,
    INVALID_PAY_METHOD_REMARK,
    INVALID_PAY_RECORD,
    INVALID_PAY_RETURN_INFO,
    INVALID_RESTAURANT,
    INVALID_USER,
    INVALID_USERNAME,
    INVALID_VALIDATE_REQUEST,
    INVOICE_NOT_FOUND,
    IOS_MESSAGE_NOT_FOUND,
    IP_CHANGED,
    IP_PARSER_NOT_WORK,
    MESSAGE_USER_NOT_MATCH,
    MOBILE_AUTH_FAIL,
    MOBILE_OCCUPIED,
    MOBILE_VALIDATE_QUOTA_OUT,
    NO_COUPON_SOURCE,
    NO_EMAIL_BOUND,
    NO_MOBILE_BOUND,
    ONLINE_PAYMENT_RESTAURANT_MUST_HAVE_ADMIN,
    ORDER_PAYMENT_CONSTITUTION_NOT_FOUND,
    PAY_RECORD_NOT_FOUND,
    PAY_RECORD_TRADE_NO_DUPLICATED,
    PERMISSION_DENIED,
    POINT_NOT_ENOUGH,
    PROFILE_CHANGE_QUOTA_OUT,
    REMEMBER_KEY_NOT_FOUND,
    RENREN_USER_MAP_NOT_FOUND,
    RESTAURANT_ADMIN_NOT_FOUND,
    RESTAURANT_ALREADY_HAVE_ADMIN,
    SNS_ALREADY_BOUND_OTHER,
    SNS_OCCUPIED,
    THIRD_USER_SESSION_NOT_FOUND,
    TRADE_RECORD_NOT_FOUND,
    USERNAME_ALREADY_USED,
    USER_ALREADY_RESTAURANT_ADMIN,
    USER_AUTH_FAIL,
    USER_BALANCE_CHANGE_NOT_FOUND,
    USER_BANKCARD_NOT_FOUND,
    USER_BANKCARD_ALL_INVALID,
    USER_CERTIFICATION_NOT_FOUND,
    USER_CERTIFICATION_APPLY_TYPE_INVALID,
    USER_CERTIFICATION_APPLY_TYPE_NOT_FOUND,
    USER_CERTIFICATION_APPLY_PASS_EDIT,
    USER_CERTIFICATION_FIRST,
    USER_CERTIFICATION_PROCESS_RECORD_NOT_FOUND,
    USER_CERTIFICATION_DUPLICATE,
    CARDHOLDER_NAME_NOT_MATCH,
    USER_GIFT_NOT_FOUND,
    USER_GROUP_NOT_FOUND,
    USER_MESSAGE_NOT_FOUND,
    USER_META_DATA_NOT_FOUND,
    USER_NOT_FOUND,
    USER_PLACE_NOT_FOUND,
    USER_PROFILE_NOT_FOUND,
    VALIDATE_CODE_EXPIRED,
    VALIDATE_CODE_QUOTA_OUT,
    WEIBO_USER_MAP_NOT_FOUND,
    WITHDRAW_RECORD_NOT_FOUND,
    WITHDRAW_PROCESS_RECORD_NOT_FOUND,
    WITHDRAW_TOO_FREQUENTLY,
    WRONG_ACTIVE_CODE,
    WRONG_AMOUNT,
    WRONG_PASSWORD_RETRIEVAL_TOKEN,
    ALREADY_BIND_BANKCARD,
    USER_EXISTED_BUT_NOT_RESTAURANT_ADMIN,

    EOS_CLIENT_ERROR,
    ERS_CLIENT_ERROR,
    SMS_CLIENT_ERROR,
    GEOS_CLIENT_ERROR,

    // System Errors
    DATABASE_ERROR,
}

exception EUSUserException {
    1: required EUSErrorCode error_code,
    2: required string error_name,
    3: optional string message,
}

exception EUSSystemException {
    1: required EUSErrorCode error_code,
    2: required string error_name,
    3: optional string message,
}

exception EUSUnknownException {
    1: required EUSErrorCode error_code,
    2: required string error_name,
    3: required string message,
}

/**
 * Services
 */
service ElemeUserService {
    /**
     * Base services
     */
    bool ping()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void clear_cache(1:string api_name,
                     2:list<string> params)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unkown_exception),

    i32 auth(1:string username,
             2:string passward)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 sns_auth(1:i64 sns_uid,
                 2:SNSType sns_type)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 signup(1:string username,
               2:string email,
               3:string passward)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 extend_signup(1:string username,
                      2:string email,
                      3:TSignupExtendParam extend_param,
                      4:string passward)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),


    list<map<i32, list<TRefer>>> get_pending_refer()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),


    list<map<i32, list<TRefer>>> get_suspicious_refer()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),


    string get_user_referal_code(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool is_user_refered(1:i32 user_id, 2:string mode)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void temp_super_user_bind(1:string username,
                              2:string mobile,
                              3:i32 restaurant_id,
                              4:i32 bank_id,
                              5:string card_id,
                              6:string cardholder_name,
                              7:i32 process_user_id,
                              )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void third_signup(1:string user_id,
                      2:string session_id,
                      3:i32 user_type)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool is_username_available(1:string username)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void save_dop_user(1:i32 nid,
                       2:TDopUser save_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    # deprecated, use force_reset password instead
    void reset_password(1:i32 user_id,
                        2:string new_password)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void force_reset_password(1: i32 user_id,
                              2: i32 admin_user_id,
                              3: string new_password)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void update_password(1:i32 user_id,
                         2:string old_password,
                         3:string new_password
                         4:string current_session)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void clean_session(1:i32 user_id,
                       2:string current_session)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void clean_mobile_session(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 get_user_id_by_mobile_session(1:string session_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void post_login(1:TLoginStruct login_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void set_avatar(1:i32 user_id,
                    2:string avatar)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void bind_sns(1:i32 user_id,
                  2:i64 sns_uid,
                  3:SNSType sns_type)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void renren_purify(1:i32 user_id,
                       2:string username,
                       3:string email,
                       4:string password)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void unbind_sns(1:i32 user_id,
                    2:SNSType sns_type)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void bind_device(1:i32 user_id,
                     2:DeviceId device_id,
                     3:DeviceType device_type,
                     4:double version,
                     5:i32 come_from,
                     6:DeviceId eleme_device_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void unbind_device(1:i32 user_id,
                       2:DeviceId device_id,
                       3:DeviceType device_type)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    # deprecated, use update_user_email instead
    void update_email(1:i32 user_id,
                      2:string email)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void update_user_email(1: i32 user_id,
                           2: i32 admin_user_id,
                           3: string email)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void update_mobile(1:i32 user_id,
                       2:Mobile mobile)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 add_address(1:i32 user_id,
                    2:i32 entry_id,
                    3:Geohash geohash,
                    4:string phone,
                    5:string address,
                    6:string phone_bk)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void update_address(1:i32 user_id,
                        2:i32 address_id,
                        3:string phone,
                        4:string address,
                        5:string phone_bk)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void delete_address(1:i32 user_id,
                        2:i32 address_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void set_default_address(1:i32 user_id,
                             2:i32 address_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void set_groups(1:i32 user_id,
                    2:list<i32> group_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 add_invoice(1:i32 user_id,
                    2:string invoice_pay_to)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void update_invoice(1:i32 user_id,
                        2:i32 invoice_id,
                        3:string invoice_pay_to)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void delete_invoice(1:i32 user_id,
                        2:i32 invoice_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void set_default_invoice(1:i32 user_id,
                             2:i32 invoice_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 count_unprocessed_user_gift()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void mset_user_gift_status(1:list<i32> user_gift_ids,
                               2:i16 processed)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void mset_user_gift_valid(1:list<i32> user_gift_ids,
                              2:bool is_valid)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void mset_feedback_reply_valid(1:list<i32> reply_ids,
                                   2:bool valid)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void delete_bankcard(1: i32 bankcard_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void update_user_gift(1:TUserGift update_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    #deprecated use save_gift instead
    void update_gift(1:i32 gift_id,
                     2:string name,
                     3:string description,
                     4:i32 price,
                     5:i16 amount,
                     6:string image_hash,
                     7:string thumb_hash,
                     8:i16 is_new,
                     9:i16 is_valid)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    #deprecated use save_gift instead
    i32 add_gift(1:string name,
                 2:string description,
                 3:i32 price,
                 4:i16 amount,
                 5:string image_hash,
                 6:string thumb_hash,
                 7:i16 is_new,
                 8:i16 is_valid)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 save_gift(1: i32 gift_id,
                  2: TGift save_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),


    void exchange_gift(1:i32 user_id,
                       2:i32 gift_id,
                       3:string delivery_name,
                       4:string delivery_address,
                       5:string delivery_phone,
                       6:string delivery_note)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void analyse_user_gift(1:i32 user_gift_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 change_point(1:i32 user_id,
                     2:i32 point_change,
                     3:string reason,
                     4:i64 relevant_id,
                     5:i16 change_type)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void set_rate_message_read(1:string target_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool check_restaurant_admin(1:i32 user_id,
                                2:i32 restaurant_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool check_service_admin(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 count_unread_message(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void mark_message_as_read(1:i32 user_id,
                              2:i32 message_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void mark_all_message_as_read(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<string> get_user_permission(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void set_pay_record_method(1:i32 user_id,
                               2:i32 pay_record_id,
                               3:string method_json)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 add_feedback(1:i32 user_id,
                     2:string content,
                     3:i32 comment_type,
                     4:i32 entry_id,
                     5:i32 zone_id,
                     6:i32 district_id,
                     7:i32 city_id,
                     8:i64 geohash,
                     9:string user_agent)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TFeedback> mget_feedback(1:list<i32> feedback_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 count_feedback(1:TFeedbackQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TFeedback> query_feedback(1:TFeedbackQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TCFeedbackWithReplies> query_feedback_with_replies(
        1:TFeedbackQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 count_feedback_reply(1:TFeedbackReplyQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TFeedbackReply> query_feedback_reply(1:TFeedbackReplyQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),


    void feedback_reply(1:i32 feedback_id,
                        2:i32 user_id,
                        3:string content)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void add_restaurant_admin(1:i32 restaurant_id,
                              2:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void delete_restaurant_admin(1:i32 restaurant_id,
                                 2:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void modify_payment_quota(1:i32 user_id,
                              2:i16 payment_quota,
                              3:string ip)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    string generate_email_validate_str(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool validate_old_mobile(1:i32 user_id,
                             2:string mobile)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    string send_validate_code(1:i32 user_id,
                              2:string terminal,
                              3:i32 terminal_type,
                              4:string ip)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool validate_terminal(1:i32 user_id,
                           2:string terminal,
                           3:i32 terminal_type,
                           4:string validate_code,
                           5:string ip)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool unbind_terminal(1:i32 user_id,
                         2:i32 terminal_type,
                         3:string validate_code,
                         4:string ip)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void send_notice(1: i32 user_id,
                     2: i16 type_code,
                     3: string title,
                     4: string content)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void send_unsent_notice()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void send_unsent_notice_by_user(1: i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    # deprecated, use send_coupon_by_sms2 instead
    string send_coupon_by_sms(1:i64 mobile)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    string send_coupon_by_sms2(1:i64 mobile, 2:string source)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void active_email(1: string active_code)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    string generate_retrieval_password_final_token(1:string email)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 reset_forgetted_password(1:string final_token
                                 2:string password)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool check_password_retrieval_token(1:string final_token)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),


    i32 get_user_point_change_except_order(1:i32 user_id,
                                           2:i64 order_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void save_pay_error(1:i32 error_id, 2:TPayError t_error)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TPayRecord get_pay_record(1:i32 record_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TPayRecord get_pay_record_by_unique_id(1:i64 unique_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 get_pay_record_id_by_order_id(1:i64 order_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i64 get_order_id_by_pay_record_id(1:i32 pay_record_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool check_function_blocked(1:i32 user_id,
                                2:i32 func)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 count_trade_record(1:TTradeRecordQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    string parse_ip(1:string ip)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    double sum_balance_change(1:TUserBalanceChangeQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 set_user_place(1: TUserPlace set_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void delete_user_place(1: list<i32> id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    /**
     * App services
     */
    list<TCAccountDailyStats> account_get_stats(1:i32 user_id,
                                                2:Timestamp begin_datetime,
                                                3:Timestamp end_datetime)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    double account_get_stats_by_type(1:i32 user_id,
                                     2:i32 type_code)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TGroup> walle_get_all_groups()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TPermission> walle_get_all_permissions()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TGroupPermission> walle_get_all_group_permissions()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_add_group_permission(1:i32 group_id,
                                    2:i32 permission_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_remove_group_permission(1:i32 group_id,
                                       2:i32 permission_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_save_group(1:i32 group_id,
                          2:TGroup group_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_save_permission(1:i32 permission_id,
                               2:TPermission permission_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 walle_count_balance_change(1:TWalleBalanceChangeQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TCWalleBalanceChange> walle_query_balance_change(1:TWalleBalanceChangeQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),


    i32 walle_count_withdraw_apply(1:TWalleWithdrawApplyQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TCWalleWithdrawApply> walle_query_withdraw_apply(1:TWalleWithdrawApplyQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 walle_count_withdraw_record(1:TWalleWithdrawRecordQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_mset_withdraw_process_record_batch_id(
        1:list<i32> ids,
        2:string batch_id
    )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TWithdrawRecord> walle_query_withdraw_record(1:TWalleWithdrawRecordQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TWithdrawRecord> walle_mget_withdraw_record(1:list<i32> ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 walle_mset_withdraw_record_status(1:list<i32> ids, 2:i16 status)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TWithdrawProcessRecord walle_get_latest_withdraw_process_record_by_withdraw_id(
        1: i32 withdraw_id,
    )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_bind_email(1:i32 user_id,
                          2:string email)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TDopUser> walle_get_online_sev(1:list<i16> process_types)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    string walle_get_point_change_list(1:TPointChangeRecordQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    string walle_get_user_list(1:TUserQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    string walle_get_user_gift_list(1:TUserGiftQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    string walle_get_user_gift_list_by_ids(1:list<i32> user_gift_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    # deprecated, use walle_set_user_active instead
    void walle_set_active(1:i32 user_id,
                          2:bool is_active)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_set_user_active(1: i32 user_id,
                               2: i32 admin_user_id,
                               3: i32 is_active,
                               4: string description)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_set_name(1:i32 user_id,
                        2:string name)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_set_super_admin(1:i32 user_id,
                               2:bool is_super_admin)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_unbind_email(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_unbind_mobile(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 walle_count_online_payment_apply(
        1:TWalleOnlinePaymentApplyQuery query_struct
    )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TCWalleOnlinePaymentApply> walle_query_online_payment_apply(
        1:TWalleOnlinePaymentApplyQuery query_struct
    )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TPointChangeRecord> walle_query_point_change(1:TWallePointChangeQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 walle_count_point_change(1:TWallePointChangeQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 walle_get_pay_stats_detail_count(
        1:TWallePayStatsQuery query_struct,
    )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TCWallePayStatsOverview walle_get_pay_stats_overview(
        1:TWallePayStatsQuery query_struct,
    )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TCWallePayStatsDetail> walle_get_pay_stats_detail(
        1:TWallePayStatsQuery query_struct,
    )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_mset_feedback_processed(
        1:list<i32> feedback_ids,
        2:bool is_processed,
    )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TCWithdrawProcessBatch> walle_query_withdraw_process_batch(
        1: list<i16> statuses,
        2: string batch_id
        3: i32 offset,
        4: i32 limit,
    )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void walle_mset_feedback_valid(
        1:list<i32> feedback_ids,
        2:bool is_valid,
    )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 walle_count_withdraw_process_batch(
        1: list<i16> statuses,
        2: string batch_id
    )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TWithdrawProcessRecord> walle_get_withdraw_process_record_by_batch_id(
        1: string batch_id
    )
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<i32> dms_get_dop_user_list()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    string mobile_third_signup(1:string third_user_id,
                               2:string session_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TBlockedDeviceUser> mobile_query_blocked_device_user_list(1:TBlockedDeviceUserQuery query)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TSNSMapStruct> mobile_get_sns_map(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void mobile_save_food_image(1:i32 user_id,
                                2:i32 food_id,
                                3:string image_hash)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void mobile_add_feedback(1:i32 user_id,
                             2:string username,
                             3:string content,
                             4:i16 feedback_type,
                             5:string version,
                             6:string description,
                             7:string contact)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void pay_upload_alipay_accounts(1:string raw_accounts_str)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void pay_upload_cgb_accounts(1:string raw_accounts_str)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 pay_for_order(1:i32 user_id,
                      2:i64 order_id,
                      3:string pay_method,
                      4:string hongbao_sn,
                      5:string password)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void pay_for_contract(1:i32 user_id,
                          2:string contract_sn,
                          3:string password)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void pay_for_contract_direct(1:string contract_sn)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void pay_success(1:TCPayReturnInfo pay_return_info,
                     2:string from_action,
                     3:string ip)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void pay_manually_success(1:i32 pay_record_id,
                              2:i32 user_id,
                              3:i32 admin_user_id,
                              4:string password)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 pay_record_make(1:i32 user_id,
                        2:i32 pay_co_id,
                        3:double total_fee,
                        4:string remark)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void pay_record_fail(1:i32 pay_record_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void direct_order_pay_fail(1:i64 order_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool pay_is_success(1:i32 pay_record_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TAlipayInfo pay_get_alipay_info()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    double pay_get_today_payment(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void withdraw_set_fatal(1:i32 withdraw_id, 2:string remark)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TCWithdrawRecord> withdraw_get_apply_records()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 withdraw_restaurant_apply(1:i32 restaurant_id,
                                  2:i32 process_user_id,
                                  3:double amount,
                                  4:string password)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void withdraw_user_drawback(1:i32 user_id
                                2:i32 process_user_id,
                                3:double amount,
                                4:string password)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void anonymous_user_drawback(1:string order_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TCDrawbackReport get_drawback_report()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TCBatchCheckResult batch_check_log(1:string batch_log)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TCBatchCheckResult batch_check_result(1:string batch_id,
                                          2:string batch_result)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void batch_add(1:string batch_id,
                   2:string batch_log)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void batch_finish(1:string batch_id, 2:string batch_result)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 bankcard_bind_apply(1:i32 user_id,
                            2:string card_id,
                            3:i32 bank_id,
                            4:string cardholder_name,
                            5:string password)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void bankcard_bind_update(1:i32 user_id,
                              2:string card_id,
                              3:i32 bank_id,
                              4:string cardholder_name,
                              5:string password)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void bankcard_bind_approve(1:i32 record_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void bankcard_bind_overrule(1:i32 record_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void bankcard_bind(1:i32 user_id,
                       2:string card_id,
                       3:i32 bank_id,
                       4:string cardholder_name)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void balance_reconciliation()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void generate_hongbao(1: list<i32> user_ids,
                          2: THongbao query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void charge_hongbao(1: i32 pay_record_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void new_user_hongbao(1: i32 user_id
                          2: i64 order_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void bind_mobile_hongbao(1: i32 user_id
                             2: string phone)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void award_refer_hongbao(1:list<i32> refer_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void punish_refers(1:list<i32> refer_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void award_refer_bind_mobile_hongbao(1:i32 refer_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void user_certification_apply(1: i32 user_id,
                                  2: TUserCertificationApply user_certification_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void process_user_certification(1:i32 user_id,
                                    2:i32 to_status,
                                    3:string remark,
                                    4:i32 process_user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TUserCertification get_user_certification(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TCUserCertificationProcessRecord> query_user_certification_process_records(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void post_process_user_certification(1:i32 record_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void new_user_bankcard_apply(1:i32 user_id,
                                 2:string card_id,
                                 3:i32 bank_id,
                                 4:string cardholder_name,
                                 5:string city_name,
                                 6:string branch_name)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void update_user_bankcard(1:i32 user_id,
                              2:string card_id,
                              3:i32 bank_id,
                              4:string cardholder_name,
                              5:string city_name,
                              6:string branch_name,
                              7:i32 process_user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void update_user_bankcard_by_user(1:i32 user_id,
                                      2:string card_id,
                                      3:i32 bank_id,
                                      4:string cardholder_name,
                                      5:string city_name,
                                      6:string branch_name,
                                      7:string password)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TUserCertification> query_user_certification(1:TUserCertificationQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 count_user_certification(1:TUserCertificationQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    /**
     * Fingerprint
     */

    string sso_create(1:i32 user_id,
                      2:Json info_raw,
                      3:string ip_addr)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool sso_destroy(1:string sso_id,
                     2:i32 op_user_id,
                     3:SSODestroyActionConst action,
                     4:string ip_addr)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool sso_destroy_admin(1:string sso_id,
                           2:i32 op_user_id,
                           3:string ip_addr)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool sso_destroy_expire(1:string sso_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 sso_check(1:string sso_id,
                  2:Json info_raw,
                  3:string ip_addr)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    /**
     * Inner services
     */
    void clean_timeout_message()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void clean_outofdate_message()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void back_up_mysql_task()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void clean_timeout_mysql_task()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void signal_post_make_order(1:i64 order_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void signal_post_process_order(1:i32 order_process_record_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void process_claim_order(1:i64 order_id,
                             2:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unkown_exception),

    void process_push_android_message(1:i32 msg_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unkown_exception),

    void process_push_ios_message(1:i32 msg_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unkown_exception),

    void process_add_user_message(1: i32 message_type,
                                  2: string target_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void process_quit_online_payment(1:i32 restaurant_id,
                                     2:i32 user_id,
                                     3:Timestamp timestamp)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void process_post_refund_apply(1:i64 order_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void process_post_settle_up_order(1:i64 order_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void unsubscribe_order_sms(1:i64 mobile)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void process_order_refund_fail(1:i64 order_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void process_order_refund_success(1:i64 order_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void process_refer_make_order(1:i32 user_id, 2:i64 order_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void invalid_order_income(1:i64 order_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool has_permissions(1:i32 user_id,
                         2:list<string> permissions,
                         3:bool is_strict)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    bool has_groups(1:i32 user_id,
                    2:list<string> groups,
                    3:bool is_strict)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void clean_timout_message()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    void send_restaurant_daily_balance_report(1:i32 restaurant_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TUserReferRank get_user_refer_rank(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    /**
     * Query services
     */
    TUser get(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TUser master_get(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TThirdUserSession get_third_user_session_by_user_id(1:string user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TUser get_by_username(1:string username)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TUser> mget(1:list<i32> user_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TUser> mget_by_username(1:list<string> username)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TBank get_bank(1:i32 bank_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TBank> get_bank_list()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TBank> mget_bank(1:list<i32> bank_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TUserBankcard get_bankcard(1: i32 user_id
                               2: i16 status)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TUserBankcard get_bankcard_by_user(1: i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    map<i32, TUserBankcard> mget_bankcard_by_restaurant(1: list<i32> restaurant_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TDopUser get_dop_user(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TUserProfile get_profile(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TUserProfile master_get_profile(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TUserProfile> mget_profile(1:list<i32> user_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TUserProfile> query_profile(1:TUserProfileQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TSfGuardRememberKey get_remember_key(1: string remember_key)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TFullUser get_full(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TFullUser> query_full(1:TFullUserQuery qeury_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TAddress get_address(1:i32 address_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TInvoice get_invoice(1:i32 invoice_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TGift get_gift(1:i32 gift_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TGift> mget_gift(1: list<i32> gift_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TGroup> get_group_list()
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TUserGift get_user_gift(1:i32 user_gift_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TUserGift> mget_user_gift(1:list<i32> user_gift_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TWeiboUserMap get_weibo_map_by_user(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TRenrenUserMap get_renren_map_by_user(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    THongbao get_hongbao_by_sn(1:string hongbao_sn)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    double sum_hongbao_amount(1:THongbaoSum query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<THongbao> query_hongbao(1:THongbaoQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 count_hongbao(1:THongbaoQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    map<i64, list<TOrderPaymentConstitution>> get_order_payment_constitution_map(1:list<i64> order_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TAddress> query_address_by_user(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TInvoice> query_invoice_by_user(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TUserGift> query_user_gift(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TGroup> query_user_group(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    i32 count_gift(1:TGiftQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TGift> query_gift(1:TGiftQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TUserMessage> query_unread_user_message(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TUserPlace> query_user_place(1: TUserPlaceQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TRefer> query_refer(1:TReferQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TRefer master_get_refer_by_to_user_id(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TTerminalValidation> query_terminal_validation(1:TTerminalValidationQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TWeiboUserMap get_weibo_map_by_weibo_id(1:i64 weibo_uid)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TRenrenUserMap get_renren_map_by_renren_id(1:i32 renren_uid)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TRestaurantAdmin get_restaurant_admin(1:i32 restaurant_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TRestaurantAdmin get_restaurant_admin_by_admin(1:i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TTradeRecord> query_trade_record(1:TTradeRecordQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TLoginInfo> query_login_info(1:TLoginInfoQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TCUserBankCard> mget_user_bankcard(1: list<i32> record_ids)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    TUserMetaData get_user_meta_data(1: i32 user_id)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TUserMetaData> query_user_meta_data(1: TUserMetaDataQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),

    list<TUserChangeRecord> query_user_process_record(1: TUserChangeRecordQuery query_struct)
        throws (1: EUSUserException user_exception,
                2: EUSSystemException system_exception,
                3: EUSUnknownException unknown_exception),
}

