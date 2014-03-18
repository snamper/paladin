# define sms service
namespace php EOS
namespace py eos

/**
 * Const
 */
const i16 DEFAULT_LIST_SIZE = 20
const i16 MAX_CART_TOTAL_AMOUNT = 100000
const i16 MAX_LIST_SIZE = 200
const i16 ORDER_CATEGORY_ELEME = 1
const i16 PROCESSED_BY_MACHINE = -1

/**
 * Enums
 */
enum ElemeOrderConst {
    NOT_BOOK = 0,
    IS_BOOK = 1,

    STATUS_NOT_PAID = -5,
    STATUS_PAYMENT_FAIL = -4,
    STATUS_PAYING = -3,
    STATUS_PENDING = -2,
    STATUS_INVALID = -1,
    STATUS_UNPROCESSED = 0,
    STATUS_PROCESSING = 1,
    STATUS_PROCESSED_AND_VALID = 2,
    STATUS_REFUNDING = 3,

    REFUND_STATUS_NO_REFUND = 0,
    REFUND_STATUS_EARLY_REFUND_SUCCESS = 1,
    REFUND_STATUS_LATER_REFUND_REQUEST = 2,
    REFUND_STATUS_LATER_REFUND_RESPONSE = 3,
    REFUND_STATUS_LATER_REFUND_ARBITRATING = 4,
    REFUND_STATUS_LATER_REFUND_FAIL = 5,
    REFUND_STATUS_LATER_REFUND_SUCCESS = 6,

    DELIVERY_STATUS_UNPROCESSED = 0
    DELIVERY_STATUS_PROCESSING = 1
    DELIVERY_STATUS_DELIVERING = 2
    DELIVERY_STATUS_RECEIPT = 3
    DELIVERY_STATUS_PRECANCELED = 4
    DELIVERY_STATUS_CANCELED = 5

    # 30min
    BOOK_ORDER_REFUND_START_TIME = 1800,
    # 1hour
    ORDER_REFUND_START_TIME = 3600,
    # 1day
    ORDER_REFUND_END_TIME = 86400,

    CATEGORY_ELEME = 1,
    CATEGORY_DINE = 2,
    CATEGORY_PHONE = 3,
    CATEGORY_NAPOS_WAIMAI = 5,
    CATEGORY_NAPOS_TANGCHI = 6,

    ORDER_MODE_OTHER = 0,
    ORDER_MODE_PHONE = 1,
    ORDER_MODE_ELEME = 2,
    ORDER_MODE_NETWORK = 3,
    ORDER_MODE_WIRELESS = 4,
    ORDER_MODE_TPD = 5,
    ORDER_MODE_OPENAPI = 6,
    ORDER_MODE_TPD_ELEME = 7,
    ORDER_MODE_TPD_NAPOS = 8,
    ORDER_MODE_NAPOS_MOBILE = 9,

    ENTRY_OTHER = 0,

    COME_FROM_OTHER = 0,
    COME_FROM_PC_WEB = 1,
    COME_FROM_MOBILE_WEB = 2,
    COME_FROM_OPEN_API = 3,
    COME_FROM_IPHONE_APP = 4,
    COME_FROM_ANDROID_APP = 5,
    COME_FROM_AT_IOS = 6, # afternoon tea
    COME_FROM_WEIXIN = 7, # user order inside weixin

    PHONE_RATING_NORMAL = 0
    PHONE_RATING_NEW = 1
    PHONE_RATING_SUSPICIOUS = 2

    PAYMENT_TERM_ALL = -1,
    PAYMENT_TERM_CASH = 0,
    PAYMENT_TERM_ONLINE_PAID = 1,

    ENTITY_CATEGORY_FOOD = 1,
    ENTITY_CATEGORY_DELIVER_FEE = 2,
    ENTITY_CATEGORY_COUPON = 3,
    ENTITY_CATEGORY_HUANBAO = 4,
    ENTITY_CATEGORY_FREE_COCA = 5,
    ENTITY_CATEGORY_DISCOUNT8 = 6,
    ENTITY_CATEGORY_NEW_USER_DISCOUNT = 7,
    ENTITY_CATEGORY_COCA_GIFT = 8,
    ENTITY_CATEGORY_DISCOUNT_88 = 9,
    ENTITY_CATEGORY_PULPY = 10,
    ENTITY_CATEGORY_FOOD_ACTIVITY = 11,
    ENTITY_CATEGORY_EXTRA_DISCOUNT = 100,
    ENTITY_CATEGORY_OLPAYMENT_DISCOUNT = 101,
    ENTITY_ID_DELIVER_FEE = -10,
    ENTITY_ID_EXTRA_DISCOUNT = -11,
    ENTITY_ID_OLPAYMENT_DISCOUNT = -12,
    ENTITY_ID_COUPON = -100,
    ENTITY_ID_HUANBAO = -1000,
    ENTITY_ID_FREE_COCA = -10000,
    ENTITY_ID_DISCOUNT8 = -20000,
    ENTITY_ID_NEW_USER_DISCOUNT = -30000,
    ENTITY_ID_COCA_GIFT = -40000,
    ENTITY_ID_DISCOUNT_88 = -50000,
    ENTITY_ID_PULPY = -60000,

    UNKNOWN_SOURCE_ID = 0,

    INVALID_DESC_TYPE_OTHERS = 0,
    INVALID_DESC_TYPE_FAKE_ORDER = 1,
    INVALID_DESC_TYPE_DUPLICATE_ORDER = 2,
    INVALID_DESC_TYPE_FAIL_CONTACT_RESTAURANT = 3,
    INVALID_DESC_TYPE_FAIL_CONTACT_USER = 4,
    INVALID_DESC_TYPE_FOOD_SOLDOUT = 5,
    INVALID_DESC_TYPE_RESTAURANT_CLOSED = 6,
    INVALID_DESC_TYPE_TOO_FAR = 7,
    INVALID_DESC_TYPE_RST_TOO_BUSY = 8,
    INVALID_DESC_TYPE_FORCE_REJECT_ORDER = 9,
    INVALID_DESC_TYPE_DELIVERY_CHECK_FOOD_UNQUALIFIED = 10,
    INVALID_DESC_TYPE_DELIVERY_FAULT = 11,
    INVALID_DESC_TYPE_REPLACE_ORDER = 12,
}

enum OrderRecordConst {
    PROCESSED_BY_MACHINE = -1,

    PROCESS_GROUP_WEB = 1,
    PROCESS_GROUP_RESTAURANT = 2,
    PROCESS_GROUP_ADMIN = 3,
    PROCESS_GROUP_SYSTEM = 4,
    PROCESS_GROUP_API_RESTAURANT = 5,
    PROCESS_GROUP_API_DELIVERY = 6,
    PROCESS_GROUP_THIRD_PARTY = 7,
    PROCESS_GROUP_SMS = 8,
    PROCESS_GROUP_WPS = 9,

    PROCESS_GROUP_NAPOS_WEB = 11,
    PROCESS_GROUP_NAPOS_CLIENT = 12,
    PROCESS_GROUP_NAPOS_ANDROID = 13,
    PROCESS_GROUP_NAPOS_IOS = 14,
}

# deprecated, use OrderRecordConst instead
enum OrderProcessRecordConst {
    PROCESSED_BY_MACHINE = -1,

    PROCESS_GROUP_WEB = 1,
    PROCESS_GROUP_RESTAURANT = 2,
    PROCESS_GROUP_ADMIN = 3,
    PROCESS_GROUP_SYSTEM = 4,
    PROCESS_GROUP_API_RESTAURANT = 5,
    PROCESS_GROUP_API_DELIVERY = 6,
    PROCESS_GROUP_THIRD_PARTY = 7,
    PROCESS_GROUP_SMS = 8,
    PROCESS_GROUP_WPS = 9,

    PROCESS_GROUP_NAPOS_WEB = 11,
    PROCESS_GROUP_NAPOS_CLIENT = 12,
    PROCESS_GROUP_NAPOS_ANDROID = 13,
    PROCESS_GROUP_NAPOS_IOS = 14,
}

# deprecated, use OrderRecordConst instead
enum OrderDeliveryRecordConst {
    PROCESSED_BY_MACHINE = -1,

    PROCESS_GROUP_WEB = 1,
    PROCESS_GROUP_RESTAURANT = 2,
    PROCESS_GROUP_ADMIN = 3,
    PROCESS_GROUP_SYSTEM = 4,
    PROCESS_GROUP_API_RESTAURANT = 5,
    PROCESS_GROUP_API_DELIVERY = 6,
    PROCESS_GROUP_THIRD_PARTY = 7,
    PROCESS_GROUP_SMS = 8,
    PROCESS_GROUP_WPS = 9,

    PROCESS_GROUP_NAPOS_WEB = 11,
    PROCESS_GROUP_NAPOS_CLIENT = 12,
    PROCESS_GROUP_NAPOS_ANDROID = 13,
    PROCESS_GROUP_NAPOS_IOS = 14,
}

enum OrderInvalidDescConst {
    TYPE_OTHERS = 0,
    TYPE_FAKE_ORDER = 1,
    TYPE_DUPLICATE_ORDER = 2,
    TYPE_FAIL_CONTACT_RESTAURANT = 3,
    TYPE_FAIL_CONTACT_USER = 4,
    TYPE_FOOD_SOLDOUT = 5,
    TYPE_RESTAURANT_CLOSED = 6,
    TYPE_TOO_FAR = 7,
    TYPE_RST_TOO_BUSY = 8,
    TYPE_FORCE_REJECT_ORDER = 9,
    TYPE_DELIVERY_CHECK_FOOD_UNQUALIFIED = 10,
    TYPE_DELIVERY_FAULT = 11,
}

enum OrderItemConst {
    ENTITY_CATEGORY_FOOD_ACTIVITY = 11,
}

/**
 * Types and Structs
 */
typedef i64 Timestamp
typedef string Json
typedef string Ip
typedef string UniqueId
typedef map<i32, i16> FoodQuantityMap

struct TCoupon {
    1: required i32 id,
    2: required string sn,
    3: required i32 batch_id,
    4: required string batch_sn,
    5: required i32 remain,
    6: required string remarks,
    7: optional string deadline,
}

struct TCouponQuery {
    1: optional string coupon_sn,
    2: optional string batch_sn,
    3: optional bool is_used,
    4: optional bool is_out,
    5: optional i32 offset,
    6: optional i32 limit,
}

struct TCouponBatch {
    1: required i32 id,
    2: required string batch_sn,
    3: required i32 total_num,
}

struct TDeviceOrder {
    1: required i32 id,
    2: required i64 order_id,
    3: required string device_id,
    4: required i16 type,
}

struct TDockOrder {
    1: required i32 id,
    2: required i64 order_id,
    3: required i32 corp_id,
    4: required i32 restaurant_id,
}

struct TDockOrderQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional list<i64> order_ids,
    4: optional list<i32> corp_ids,
    5: optional list<i32> restaurant_ids,
}

struct TOrderEvent {
    1: required i32 id,
    2: required i32 restaurant_id,
    3: required i64 order_id,
    4: required Timestamp event_time,
    5: required Timestamp arrival_time,
    6: required i16 is_arrived,
    7: required i32 arrival_sec,
}

struct TGreyOrderMap {
    1: required i32 id,
    2: required i64 order_id,
    3: required i32 grey_id,
    4: required i32 user_id,
}

struct TOrder {
    1: required i64 id,
    2: required i32 restaurant_id,
    3: required string restaurant_name,
    4: required i32 rst_owner_id,
    5: optional i32 user_id,
    6: optional string user_name,
    7: required Json detail_json,
    8: required double total,
    9: required double deliver_fee,
    10: required i16 is_online_paid,
    11: optional Timestamp settled_at,
    12: required string address,
    13: required string phone,
    14: required i32 restaurant_number,
    15: optional Ip ip,
    16: optional string description,
    17: optional UniqueId unique_id,
    18: optional string auto_memo,
    19: required i16 order_mode,
    20: required i16 status_code,
    21: required i16 refund_status,
    22: required i16 is_book,
    23: optional Timestamp deliver_time,
    24: required i16 category_id,
    25: optional i16 come_from,
    26: optional i32 entry_id,
    27: optional i16 time_spent,
    28: optional i32 coupon_id,
    29: optional Timestamp created_at,
    30: required string invoice,
    31: required Json attribute_json,

    32: optional Json better_json,

    33: required i64 geohash,
    34: required i16 phone_rating,
    35: required string source,
    36: required i16 delivery_status,

    37: optional string pretty_description,
}

struct TOrderStruct {
    1: required UniqueId cart_id,
    2: required i32 user_id,
    3: required list<string> phones,
    4: required string address,
    5: required i32 come_from,
    6: optional i32 entry_id,
    7: optional i64 geohash,
    8: optional Ip ip,
    9: optional Timestamp deliver_time,
    10: optional string description,
    11: optional string invoice,
    12: optional bool is_online_paid,
    13: optional string payment_pwd,
    14: optional string source,
}

struct TNaposOrder {
    1: required i64 id,
    2: required i32 restaurant_id,
    3: required string restaurant_name,
    4: required Json detail_json,
    5: required double total,
    6: required string table,
    7: required string people, # TODO i16 in the future
    8: required i16 status_code,
    9: required i32 restaurant_number,
    10: required string description,
    11: required UniqueId unique_id,
    12: required i16 category_id,
    13: required Timestamp created_at,
    14: required string phone,
    15: required string address,
}

struct TNaposOrderStruct {
    1: required UniqueId cart_id,
    2: optional string description,
    3: optional string table,
    4: optional string people,
    5: optional string phone,
    6: optional string address,
}

struct TNaposOrderQuery {
    1: optional i32 restaurant_id,
    2: optional list<i16> statuses,
    3: optional i16 category_id,

    4: optional Timestamp from_datetime,
    5: optional Timestamp to_datetime,

    6: optional i32 offset,
    7: optional i32 limit,
}

struct TWalleUserOrderQuery {
    1:required i32 user_id,
    2: optional string unique_id,
    3: optional string restaurant_id,
    4: optional double min_total,
    5: optional Timestamp from_datetime,
    6: optional Timestamp to_datetime,

    7: optional i32 offset,
    8: optional i32 limit,
}

struct TCWalleUserOrder {
    1: optional i64 id,
    2: optional string unique_id,
    3: optional string user_name,
    4: optional string restaurant_name,
    5: optional string content_text,
    6: optional Ip ip,
    7: optional string address,
    8: optional string phone,
    9: optional string description,
    10: optional i16 status_code,
    11: optional string invalid_description,
    12: optional double total,
    13: optional Timestamp created_at,
}

struct TOrderConfirmRecord {
    1:required i32 id,
    2:required i32 user_id,
    4:required i64 order_id,
    5:required Timestamp created_at,
    6:required i16 from_status,
    7:required i16 to_status,
}

struct TCOrderRecord {
    1:required i32 id,
    2:required i64 order_id,
    3:required i16 record_type,
    4:required i32 process_group,
    5:required string process_role,
    6:required i32 user_id,
    7:required string name,
    8:required i32 from_status,
    9:required i32 to_status,
    10:required string description,
    11:required string content,
    12:required string image_hash,
    13:required string resource_hash,
    14:required Timestamp created_at,
}

struct TOrderDeliveryRecord {
    1:required i32 id,
    2:required i32 user_id,
    3:required i32 process_group,
    4:required i64 order_id,
    5:required i32 from_status,
    6:required i32 to_status,
    7:required string description,
    8:required Timestamp created_at,
}

struct TOrderProcessRecord {
    1:required i32 id,
    2:required i32 user_id,
    3:required i16 process_group,
    4:required i64 order_id,
    5:required Timestamp created_at,
    6:required i16 from_status,
    7:required i16 to_status,
}

struct TOrderRefundRecord {
    1:required i32 id,
    2:required i64 order_id,
    3:required i32 user_id,
    4:required i32 process_group,
    5:required i32 from_status,
    6:required i32 to_status,
    7:required string content,
    8:required string resource,
    9:required Timestamp created_at,
}

struct TOrderReplaceRecord {
    1:required i32 id,
    2:required i64 order_id,
    3:required i64 new_order_id,
    4:required i32 user_id,
    5:required i32 process_group,
    6:required i16 replace_type,
    7:required string remark,
    8:required Timestamp created_at,
}

struct TElemeOrderRate {
    1:required i32 id,
    2:required i64 order_id,
    3:required i16 time_spent,
}

struct TOrderItemRating {
    1:required i32 order_item_id,
    2:required i64 order_id,
    3:required i32 restaurant_id,
    4:required i32 food_id,
    5:required i32 user_id,
    6:required i16 rating,
    7:required string rating_text,
    8:required Timestamp rated_at,
    9:optional string image_hash,
    10:required string username,
    11:optional string avatar,
}

struct TOrderItem {
    1:required i32 id,
    2:required i64 order_id,
    3:required i32 restaurant_id,
    4:required string restaurant_name,
    5:required i16 entity_category_id,
    6:required i32 entity_id,
    7:required i32 parent_entity_id,
    8:required i16 group_id,
    9:required string name,
    10:required i32 quantity,
    11:required double price,
    12:required Timestamp created_at,
}

struct TOrderItemAttribute {
    1: required i64 order_item_id,
    2: required i64 order_id,
    3: required i32 entity_id,
    4: required Timestamp created_at,
    5: required Json attribute,
}

struct TOrderInvalidDescription {
    1:required i32 id,
    2:required i64 order_id,
    3:required string remark,
    4:required i16 type_code,
    5:required string invalid_description,
    6:required string type_message,
}

struct TOrderItemRatingQuery {
    1:optional i64 order_id,
    2:optional i32 restaurant_id,
    3:optional i32 food_id,
    4:optional i32 offset,
    5:optional i32 limit,
    6:optional bool has_text,
    7:optional bool is_valid,
    8:optional Timestamp rated_at,
    9:optional bool has_image,
    10:optional i32 user_id,
}

struct TWalleOrderItemRatingQuery {
    1:optional i16 is_valid,
    2:optional string order_id,
    3:optional i32 user_id,
    4:optional i32 restaurant_id,

    5:optional i32 offset,
    6:optional i32 limit,
}

struct TCWalleOrderItemRating {
    1:required i32 order_item_id,
    2:required i64 order_id,
    3:required i32 restaurant_id,
    4:required i32 food_id,
    5:required i32 user_id,
    6:required i16 rating,
    7:required string rating_text,
    8:required Timestamp is_valid,
    9:required Timestamp rated_at,

    10:required string unique_id,
    11:required string food_name,
    12:required string username,
    13:required string restaurant_name,
}

struct TOrderQuery {
    1:optional Timestamp from_datetime,
    2:optional Timestamp to_datetime,
    3:optional list<i16> statuses,
    4:optional list<i32> exc_restaurant_ids,
    5:optional i32 restaurant_id,
    6:optional i32 user_id,
    7:optional i16 category_id,
    8:optional i32 entry_id,

    9:optional i32 offset,
    10:optional i32 limit,

    11:optional i16 asc,
    12:optional i16 time_spent,

    13:optional list<i16> order_modes,
    14:optional list<i16> refund_statuses,
    15:optional list<i32> restaurant_ids,
    16:optional list<i16> delivery_statuses,
    17:optional bool is_online_paid,
    18:optional list<i16> come_froms,
}

struct TOrderProcessRecordQuery {
    1:optional Timestamp from_datetime,
    2:optional Timestamp to_datetime,
    3:optional list<i64> order_ids,

    4:optional i32 offset,
    5:optional i32 limit,
}

struct TPhoneValidation {
    1: optional i32 id,
    2: optional string phone,
    3: optional i32 valid,
    4: optional i32 invalid,
    5: optional i32 valid_rate,
    6: optional i32 manual_set,
}

struct TLastOrderQuery {
    1:optional i32 user_id,
    2:optional string session_id,
}

struct TCWalleOrderCount {
    1:required i16 eleme,
    2:required i16 rst,
    3:required i16 pending,
    4:required i16 refund,
    5:required i16 openapi,
    6:required i16 tpd_eleme,
    7:required i16 tpd_napos,
}

struct TCWalleTDSOrderCount {
    1:required i16 unprocessed,
    2:required i16 processing,
    3:required i16 to_be_cancel,
}

struct TWalleOrderQuery {
    1:optional i32 dop_user_id,
    2:optional list<i64> order_ids,
    3:optional list<i16> modes,
    4:optional list<i16> statuses,
    5:optional list<i16> refund_statuses,
    6:optional Timestamp from_datetime,
    7:optional Timestamp to_datetime,
    8:optional i16 show_book,
    9:optional i16 limit,
    10:optional list<i16> delivery_statuses,
    11:optional list<i32> restaurant_ids,
    12:optional list<i32> exclude_restaurant_ids,
}

struct TWalleFilterOrderQuery {
    1:optional list<i32> region_ids,
    2:optional list<i64> order_ids,
    3:optional i32 restaurant_id,
    4:optional i32 user_id,
    5:optional list<i16> status_codes,
    6:optional list<i16> come_froms,
    7:optional list<i16> category_ids,
    8:optional list<i16> order_modes,
    9:optional bool is_online_paid,
    10:optional bool is_coupon,
    11:optional Timestamp from_datetime
    12:optional Timestamp to_datetime
    13:optional i16 offset,
    14:optional i16 limit,
}

struct TWalleRegionOrderQuery {
    1:optional Timestamp from_datetime
    2:optional Timestamp to_datetime
    3:optional list<i32> region_ids
}

struct TWalleSuspiciousOrderQuery {
    1:optional Timestamp from_datetime,
    2:optional Timestamp to_datetime,
    3:optional i16 offset,
    4:optional i16 limit,
}

struct TWalleCouponOrderQuery {
    1:optional Timestamp from_datetime,
    2:optional Timestamp to_datetime,
    3:optional list<i16> statuses,
    4:optional string batch_sn,
    5:optional bool is_new_user,
    6:optional i16 offset,
    7:optional i16 limit,
}

struct TWalleProcessOrderQuery {
    1:optional Timestamp from_datetime,
    2:optional Timestamp to_datetime,
    5:optional i32 user_id,
    6:optional i16 offset,
    7:optional i16 limit,
}

struct TCOrderInfo {
    1:required i64 order_id,
    2:required string content_text,
    3:required string pretty_text,

    4:optional string invalid_description
    5:optional string suspicious_reason

    6:optional i32 dop_user_id

    7:optional bool is_phone_confirmed
}

struct TRegionOrder {
    1:required i64 id,
    2:required i32 region_id,
    3:required i64 order_id,
    4:required Timestamp created_at,
}

struct TCDMSOrderProcessInfo {
    1:required i32 user_id,
    2:required Timestamp created_at,
    3:required i16 process_group,
}

struct TCDMSOrderDispatchInfo {
    1:required i32 user_id,
    2:required Timestamp created_at,
}

struct TPhoneBlacklist {
    1: required i32 id,
    2: required string phone,
    3: required string description,
    4: required bool is_valid,
    5: required Timestamp created_at,
}

struct TPhoneWhitelist {
    1: required i32 id,
    2: required string phone,
    3: required string description,
    4: required bool is_valid,
    5: required Timestamp created_at,
}

/**
 * Exceptions
 */
enum EOSErrorCode {
    UNKNOWN_ERROR,

    // User Errors
    CART_NOT_FOUND,
    CART_IS_NOT_EMPTY,
    COUPON_ALREADY_USED,
    COUPON_BATCH_ALREADY_EXIST,
    COUPON_BATCH_NOT_FOUND,
    COUPON_CONFLICT_WITH_ACTIVITY,
    COUPON_NOT_FOUND,
    COUPON_OUT_OF_DATE,
    COUPON_ONE_ONLY,
    COUPON_NOT_BELONG_TO_THIS_CART,
    DESCRIPTION_CANT_METION_PHONE,
    DEVICE_ORDER_NOT_FOUND,
    DOCK_ORDER_NOT_FOUND,
    FOOD_MISMATCH_RESTAURANT,
    FOOD_NOT_SOLD,
    FOOD_NOT_IN_GROUP,
    FOOD_INVALID_QUANTITY,
    GARNISH_NOT_IN_FOOD,
    INVALID_ADDRESS,
    INVALID_BACKUP_PHONE,
    INVALID_CART_GROUP,
    INVALID_CART_TOTAL_AMOUNT,
    INVALID_ORDER_BOOK_TIME,
    INVALID_PHONE,
    INVALID_RATING,
    FIRST_PHONE_INVALID,
    ORDER_ALREADY_RATED,
    ORDER_CANT_REFUND,
    ORDER_CANT_BE_REPLACED,
    ORDER_CANT_BE_REPLACED_NOT_THE_SAME_RESTAURANT,
    ORDER_DELIVERY_RECORD_NOT_FOUND,
    ORDER_HAS_BEEN_REPLACED,
    ORDER_HAS_BEEN_SETTLED,
    ORDER_ITEM_NOT_FOUND,
    ORDER_ITEM_RATING_NOT_FOUND,
    ORDER_NOT_FOUND,
    ORDER_PROCESS_RECORD_NOT_FOUND,
    ORDER_REFUND_RECORD_NOT_FOUND,
    ORDER_REPLACE_FAILED,
    ORDER_TOTAL_AMOUNT_TOO_LESS,
    PAYMENT_CANT_SUCCESS,
    PERMISSION_DENIED,
    PHONE_VALIDATION_NOT_FOUND,
    REFUND_CANT_APPROVE,
    REFUND_CANT_ARBITRATE,
    REFUND_CANT_CANCEL,
    REFUND_CANT_REPLY,
    RESTAURANT_NOT_VALID,
    RESTAURANT_NOT_AVAILABLE_FOR_NOW,
    RESTAURANT_NOT_AVAILABLE_FOR_BOOK,
    RESTAURANT_NOT_SUPPORT_COUPON,
    RESTAURANT_NOT_SUPPORT_ONLINE_ORDER,
    RESTAURANT_NOT_SUPPORT_ONLINE_PAYMENT,
    STOCK_NOT_ENOUGH,
    SOURCE_NOT_FOUND,
    ORDER_ALREADY_DISPATCHED,
    ORDER_INVALID_DESCRIPTION_NOT_FOUND,
    ORDER_OUT_OF_LIMIT,
    UNKNOWN_RECORD_TYPE,
    USER_AUTH_FAIL,
    ONLINE_PAYMENT_TEST_CONSTRAINT,
    ORDER_IN_PENDING,

    ERS_CLIENT_ERROR,
    EUS_CLIENT_ERROR,
    WPS_CLIENT_ERROR,
    EES_CLIENT_ERROR,
    TDS_CLIENT_ERROR,
    GEOS_CLIENT_ERROR,

    // System Errors
    DATABASE_ERROR,
    UPDATE_REGION_DAEMON_ERROR,
}

exception EOSUserException {
    1: required EOSErrorCode error_code,
    2: required string error_name,
    3: optional string message,
}

exception EOSSystemException {
    1: required EOSErrorCode error_code,
    2: required string error_name,
    3: optional string message,
}

exception EOSUnknownException {
    1: required EOSErrorCode error_code,
    2: required string error_name,
    3: required string message,
}


/**
 * Services
 */
service ElemeOrderService {
    /**
     * Base APIs
     */

    bool ping()
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void clear_cache(1:string api_name,
                     2:list<string> params)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    string get_pretty_description(1: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i64 make_order(1: TOrderStruct order_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i64 admin_replace_order(1: i64 order_id,
                            2: UniqueId cart_id,
                            3: i32 user_id,
                            4: i16 replace_type,
                            5: string remark)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i64 make_napos_order(1: TNaposOrderStruct napos_order_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i16 rate_order_item(1:i32 order_item_id,
                        2:i32 user_id,
                        3:i16 rating_value,
                        4:string rating_text)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i16 rate_order_item2(1:i32 order_item_id,
                         2:i32 user_id,
                         3:i16 rating_value,
                         4:string rating_text,
                         5:string image_hash)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void rate_order_item_text(1:i32 order_item_id,
                              2:i32 user_id,
                              3:string rating_text)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i16 rate_deliver_time_spent(1:i64 order_id,
                                2:i32 user_id,
                                3:i16 time_spent)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    Json get_status_translation(1:i16 from_status,
                                2:i16 to_status)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void save_session_order(1: string session_id,
                            2: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 save_dock_order(1:i32 dock_order_id,
                        2:TDockOrder save_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 count_order(1: TOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<i32> count_restaurant_list_order(1: list<i32> restaurant_list)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 count_old_order(1: TOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void claim_order(1:string session_id,
                     2:i32 user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void claim_online_paid_order(1:i32 user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    bool check_olpayment_discount_saturated(1:i32 user_id, 2:string phone)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void add_discount_saturated_user(1:i32 user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void add_discount_saturated_phone(1:i32 phone)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    TCoupon generate_coupon(1:string batch_sn,
                            2:i32 remain,
                            3:Timestamp deadline,
                            4:string remarks)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void save_order_invalid_description(1: i64 order_id,
                                        2: i16 type_code,
                                        3: string remark)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void remove_order_invalid_description(1: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void set_order_phone_confirmed(1: i64 order_id,
                                   2: bool is_phone_confirmed)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    bool check_new_user(1: i32 user_id,
                        2: string phones,
                        3: bool is_strict)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void add_phone_to_whitelist(1: string phone,
                                2: string description)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void add_phone_to_blacklist(1: string phone,
                                2: string description)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    bool check_phones_in_blacklist(1: list<string> phones)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    bool check_phones_in_whitelist(1: list<string> phones)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    /**
     * Apps APIs
     */
    TCWalleOrderCount walle_get_order_count_all(1:i32 dop_user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 walle_get_tds_order_count_all(1:i32 dop_user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<i64> walle_filter_order_ids(1: TWalleFilterOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<i64> walle_get_order_ids(1: TWalleOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<i64> walle_get_region_order_ids(1: TWalleRegionOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    Json walle_get_suspicious_order_ids(1: TWalleSuspiciousOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    Json walle_get_coupon_order_ids(1: TWalleCouponOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<i64> walle_get_process_order_ids(1: TWalleProcessOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void walle_batch_generate_coupon(1:string batch_sn,
                                     2:i32 num,
                                     3:Timestamp deadline)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 walle_count_order_item_rating(1:TWalleOrderItemRatingQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TCWalleOrderItemRating> walle_query_order_item_rating(
        1:TWalleOrderItemRatingQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void walle_set_order_item_rating_valid(1:i32 order_item_id,
                                           2:i16 is_valid)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TCWalleUserOrder> walle_get_recent_orders(1:string username,
                                                   2:string phone,
                                                   3:i32 limit)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TCWalleUserOrder> walle_get_related_orders(1:string order_sn)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TCWalleUserOrder> walle_query_user_order(1:TWalleUserOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 walle_count_user_order(1:TWalleUserOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void mobile_confirm_received(1:i64 order_id,
                                 2:i32 user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void mobile_add_device_order(1:i64 order_id,
                                 2:string device_id,
                                 3:string third_user_id,
                                 4:string session_id,
                                 5:string eleme_device_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i16 mobile_order_check(1:i32 user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i64 mobile_grey_id_to_order_id(1:i32 grey_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    UniqueId cart_init(1: i32 order_category_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    Json cart_rebuy(1: UniqueId cart_id, 2: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    Json cart_get(1: UniqueId cart_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void cart_add_food(1: UniqueId cart_id,
                       2: i16 group_id,
                       3: i32 food_id,
                       4: i32 parent_food_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void cart_add_coupon(1:UniqueId cart_id,
                         2:string coupon_sn)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void cart_remove_coupon(1:UniqueId cart_id,
                            2:i32 coupon_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void cart_remove_food(1: UniqueId cart_id,
                          2: i16 group_id,
                          3: i32 food_id,
                          4: i32 parent_food_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void cart_set_food_quantity(1: UniqueId cart_id,
                                2: i16 group_id,
                                3: i32 food_id,
                                4: i16 quantity,
                                5: i32 parent_food_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void cart_decrease_food(1: UniqueId cart_id,
                            2: i16 group_id,
                            3: i32 food_id,
                            4: i32 parent_food_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void cart_clear_group(1: UniqueId cart_id,
                          2: i16 group_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void cart_set_phone(1: UniqueId cart_id,
                        2: string phone
                        3: i32 user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void cart_set_is_online_paid(1: UniqueId cart_id,
                                 2: bool is_online_paid)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    UniqueId cart_napos_add_food(1: i16 order_category_id,
                                 2: FoodQuantityMap food_quantity_map)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    # deprecated, use eleme_process_delivery instead
    i32 admin_process_delivery(1:i64 order_id,
                               2:i32 to_delivery_status,
                               3:i32 user_id,
                               4:string remark)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 eleme_process_delivery(1:i64 order_id,
                               2:i32 to_delivery_status,
                               3:i32 user_id,
                               4:i32 process_group,
                               5:string remark,
                               6:i16 type_code)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    # deprecated, use napos_process_delivery_new instead
    i32 napos_process_delivery(1:i64 order_id,
                               2:i32 to_delivery_status,
                               3:i32 user_id,
                               4:string remark)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 napos_process_delivery_new(1:i64 order_id,
                                   2:i32 to_delivery_status,
                                   3:i32 user_id,
                                   4:i32 process_group,
                                   5:string remark,
                                   6:i16 type_code)

    i32 openapi_process_delivery(1:i64 order_id,
                                 2:i32 to_delivery_status,
                                 3:string remark)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void force_invalid_order(1:i64 order_id,
                             2:i32 user_id,
                             3:string password)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void eleme_process_order(1:i64 order_id,
                             2:i16 to_status,
                             3:i32 user_id,
                             4:i16 process_group,
                             5:string remark,
                             6:i16 type_code)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void napos_process_order(1:i64 order_id,
                             2:i16 to_status,
                             3:i32 user_id,
                             4:i16 process_group,
                             5:string remark,
                             6:i16 type_code)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    # deprecated, using napos_process_order instead
    void napos_set_order_invalid(1:i64 order_id,
                                 2:i32 user_id,
                                 3:i32 type_code,
                                 4:string remark)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void napos_process_napos_order(1: i64 order_id,
                                   2: i16 to_status,
                                   3: i32 user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void openapi_process_order(1:i64 order_id,
                               2:i16 to_status)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void refund_apply(1:i32 user_id,
                      2:string unique_id,
                      3:string content,
                      4:string resource,
                      5:string password)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void refund_cancel(1:i32 user_id,
                       2:string unique_id,
                       3:string password)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void refund_overrule_by_admin(1:i32 user_id,
                                  2:string unique_id,
                                  3:string content)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void refund_reply(1:i32 rst_user_id,
                      2:string unique_id,
                      3:string resource,
                      4:string explanation)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void refund_arbitrate(1:i32 user_id,
                          2:string unique_id,
                          3:string content)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void refund_approve(1:i32 user_id,
                        2:string unique_id,
                        3:string password)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void refund_approve_by_admin(1:i32 user_id,
                                 2:string unique_id,
                                 3:string content)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void refund_auto_success(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void refund_auto_fail(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void settle_up_order(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void settle_after_make(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void settle_after_invalid(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 walle_count_coupon(1:TCouponQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TCoupon> walle_query_coupon(1:TCouponQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    Json napos_today_summary(1: i32 restaurant_id,
                             2: bool require_full)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrder> napos_search_eleme_order(1: i32 restaurant_id,
                                          2: string keyword)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 walle_get_coupon_total_amount()
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    map<i64, TCDMSOrderProcessInfo> dms_mget_process_info(
        1: list<i64> order_ids
    )
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    map<i64, TCDMSOrderDispatchInfo> dms_mget_dispatch_info(
        1: list<i64> order_ids
    )
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<i32> redis_mcount_order(1: list<i32> restaurant_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 redis_count_order(1: i32 restaurant_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void redis_count_order_add(1: i32 restaurant_id,
                               2: i64 order_id,
                               3: Timestamp created_at)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void redis_count_order_rem(1: i32 restaurant_id,
                               2: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    /**
     * Inner APIs
     */
    void back_up_mysql_task()
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void clean_timeout_mysql_task()
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void process_order_item_attribute(1: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void process_post_make_napos_order(1: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void process_post_pay_for_order(1:i64 order_id,
                                    2:i32 pay_record_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void process_post_pay_success(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void process_post_pay_fail(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void process_claim_order(1:i64 order_id,
                             2:i32 user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void update_order_region_by_geohash(1: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    i32 get_source_id(1: string name)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void dispatch_order_to_sev(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    string get_source_name(1: i32 id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    map<i32, string> mget_source_name(1: list<i32> source_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    map<string, i32> get_source_name_id_map(1: list<string> names)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void not_paid_order_auto_fail(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void check_or_update_food_popularity_rating(1:i32 food_id,
                                                2:i32 recent_popularity,
                                                3:list<i32>recent_num_ratings)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void check_or_update_restaurant_deliver_spent(1:i32 restaurant_id,
                                                  2:i32 deliver_spent)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void calculate_suspicious_order_by_restaurant(1:i32 restaurant_id,
                                                  2:string day)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void update_order_region(
        1: map<i64, TRegionOrder> order_regions,
    )
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void archive_old_dop_order()
         throws (1: EOSUserException user_exception,
                 2: EOSSystemException system_exception,
                 3: EOSUnknownException unkown_exception),

    void do_archive_old_dop_order(1: i32 start_id,
                                  2: i32 end_id)
         throws (1: EOSUserException user_exception,
                 2: EOSSystemException system_exception,
                 3: EOSUnknownException unkown_exception),

    void add_order_event(1: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    bool is_device_blockable(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void process_order_phone(1: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    /**
     * Query APIs
     */

    TOrder get(1: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    # TODO change to map
    list<TOrder> mget(1: list<i64> order_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TOrder master_get(1: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TOrder master_get_anonymous_order(1: string session_id
                                      2: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TOrder master_get_by_unique_id(1: string unique_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    TOrder master_get_last_order(1: TLastOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TCOrderInfo> mget_order_info(1: list<i64> order_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TOrder get_by_restaurant_number(1: i32 restaurant_id,
                                    2: i32 restaurant_number)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TOrder get_by_unique_id(1: string unique_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TOrder get_old_order_by_unique_id(1: string unique_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i64 unique_id_to_id(1: string unique_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrder> query_order(1: TOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrder> query_rateable_orders(1: i32 user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrder> query_processing_orders(1: i32 user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrder> query_old_order(1: TOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrder> query_anonymous_orders(1: string session_id,
                                        2: i32 limit)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrder> query_all_order(1: TOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TNaposOrder get_napos_order(1: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TNaposOrder master_get_napos_order(1: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TNaposOrder> mget_napos_order(1: list<i64> order_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TNaposOrder> query_napos_order(1: TNaposOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 count_napos_order(1: TNaposOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TOrderProcessRecord get_process_record(1:i64 order_process_record_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TOrderDeliveryRecord get_delivery_record(1:i32 order_delivery_record_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TOrderRefundRecord get_refund_record(1:i32 order_refund_record_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderProcessRecord> query_all_process_time(
        1: TOrderProcessRecordQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderProcessRecord> query_process_record(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TElemeOrderRate> query_time_spent_rate(1:list<i64> order_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderConfirmRecord> query_confirm_record(1:list<i64> order_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderDeliveryRecord> query_delivery_record(1:list<i64> order_ids
                                                     2:i32 asc)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderRefundRecord> query_refund_record(1:list<i64> order_ids,
                                                 2:i32 asc)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderReplaceRecord> query_replace_record(1:list<i64> order_ids,
                                                   2:i32 asc)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    void update_order_event_arrival_time(1: i32 event_id_start,
                                         2: i32 event_id_end,
                                         3: i32 restaurant_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderEvent> query_order_event_by_restaurant(1: i32 event_id,
                                                      2: i32 restaurant_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TCOrderRecord> query_order_record(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderItemRating> query_order_item_rating(1:TOrderItemRatingQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TOrderItemRating get_order_item_rating(1:i32 order_item_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 count_order_item_rating(1:TOrderItemRatingQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TGreyOrderMap> query_grey_order_map(1:list<i64> grey_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TDeviceOrder get_device_order(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TDockOrder get_dock_order(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TDockOrder> mget_dock_order(1:list<i64> order_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    i32 count_dock_order(1:TDockOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TDockOrder> query_dock_order(1:TDockOrderQuery query_struct)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TPhoneValidation get_phone_validation_by_phone(1: string phone)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    list<TOrderItemRating> mget_order_item_rating_by_order_id(1:list<i64> order_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderItem> mget_order_item_by_order_id(1:list<i64> order_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderItemAttribute> mget_order_item_attrs_by_order_id(1:list<i64> order_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderItemAttribute> mget_order_item_attrs_by_item_id(
        1:list<i64> order_item_ids,
    )
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TOrderItem get_order_item(1: i32 order_item_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderItem> get_recently_order_item_by_user_id(1: i32 user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderItem> get_recently_order_item_by_session_id(1: string user_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TOrderItem> mget_order_item(1: list<i32> ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TOrderInvalidDescription query_order_invalid_description(1: i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TCoupon get_coupon(1: i32 coupon_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TCoupon> mget_coupon(1: list<i32> coupon_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TCoupon get_coupon_by_sn(1:string coupon_sn)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TCoupon> mget_coupon_by_sn(1:list<string> coupon_sns)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TCouponBatch> mget_coupon_batch(1: list<i32> batch_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    TCouponBatch get_coupon_batch_by_sn(1: string batch_sn)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TPhoneBlacklist> query_phone_blacklist(1: list<string> phones)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

    list<TPhoneWhitelist> query_phone_whitelist(1: list<string> phones)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unkown_exception),

   /**
     * Signal APIs
     */

    void signal_post_process_order(1:i32 order_process_record_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void signal_pending_make_order(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void signal_post_make_order(1:i64 order_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void signal_post_replace_order(1:i32 order_replace_record_id)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),

    void signal_update_eleme_order(1:list<i64> order_ids)
        throws (1: EOSUserException user_exception,
                2: EOSSystemException system_exception,
                3: EOSUnknownException unknown_exception),
}
