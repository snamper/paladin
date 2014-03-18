# define ers service
namespace php ERS
namespace py ers

/**
 * Const
 */
const i16 DEFAULT_LIST_SIZE = 100
const i16 MAX_LIST_SIZE = 1000
const i16 SORT_TYPE_DESC = 1
const i16 SORT_TYPE_ASC = 2
const i16 FOOD_DEFAULT_STOCK = 1000
const string FOOD_STOCK_CACHE_PREFIX = "food:stock"
const i32 TIYANDIAN_RESTAURANT_ID = 59
const i16 AREA_ALL = -1
const i16 REGION_TYPE_ALL = -1
const i16 AREA_UNGROUPED = -2
const i16 SAAS_TRIAL_DAYS_LIMIT = 15
const string SAAS_LOCK_PREFIX = "lock:saas:"

const i16 USER_ID_SYSTEM = -1
const i16 REGION_CHANGE_TATUS_GEOS_FINISHED = 1
const i16 REGION_CHANGE_TATUS_EOS_FINISHED = 2

const list<i32> EXCLUDE_TEST_RESTAURANT = [11811, 11813, 11814, 59, 25381]
const list<i32> INNER_TEST_RESTAURANT = [11811, 11813, 11814, 25381]
const list<string> STATUS_NEED_NOTICE = ['is_valid', 'busy_level', 'order_mode']

const string RESTAURANT_ATTR_HALF_PRICE = "half_price"
const string RESTAURANT_ATTR_HALF_PRICE_BACKUP = "half_price_backup"
const string RESTAURANT_ATTR_FREE_ORDER = "free_order"
const string RESTAURANT_ATTR_HUANBAO = "huanbao"
const string RESTAURANT_ATTR_HUANBAO_DOUBLE_POINT = "huanbao_double_point"
const string RESTAURANT_ATTR_COCA = "coca"
const string RESTAURANT_ATTR_DOUBLE_POINT = "double_point"
const string RESTAURANT_ATTR_FAPIAO = "fapiao"
const string RESTAURANT_ATTR_QUAN = "quan"
const string RESTAURANT_ATTR_DISCOUNT8 = "discount8"
const string RESTAURANT_ATTR_ZHUKAO_HALF_PRICE = "zhukao_half_price"
const string RESTAURANT_ATTR_NEW_USER_DISCOUNT = "new_user_discount"
/* TODO may remove new_user_discount_amount */
const string RESTAURANT_ATTR_NEW_USER_DISCOUNT_AMOUNT = "new_user_discount_amount"
const string RESTAURANT_ATTR_NEW_USER_DISCOUNT_RESTAURANT_PAY = "new_user_discount_restaurant_pay"
const string RESTAURANT_ATTR_COUPON_DISCOUNT_RESTAURANT_PAY = "coupon_discount_restaurant_pay"
const string RESTAURANT_ATTR_DISCOUNT_88 = "discount_88"
const string RESTAURANT_ATTR_GUANGZHOU_COCA = "guangzhou_coca"
const string RESTAURANT_ATTR_EXTRA_DISCOUNT = "extra_discount"
const string RESTAURANT_ATTR_SETUP_STEP = "setup_step"


/**
 * Enums
 */
enum RestaurantConst {
    BUSY_LEVEL_FREE = 0,
    BUSY_LEVEL_CLOSED = 2,
    BUSY_LEVEL_NETWORK_UNSTABLE = 3,
    BUSY_LEVEL_HOLIDAY = 4,

    TOTAL_STATUS_OPEN = 1,
    TOTAL_STATUS_CLOSED = 2,
    TOTAL_STATUS_NETWORK_UNSTABLE = 3,
    TOTAL_STATUS_RESTING = 4,
    TOTAL_STATUS_BOOKONLY = 5,
    TOTAL_STATUS_ORDER_BY_PHONE = 6,
    TOTAL_STATUS_HOLIDAY = 7,

    ORDER_MODE_OTHER = 0,
    ORDER_MODE_PHONE = 1,
    ORDER_MODE_ELEME = 2,
    ORDER_MODE_NETWORK = 3,
    ORDER_MODE_WIRELESS_PRINTER = 4,
    ORDER_MODE_TPD = 5,
    ORDER_MODE_OPENAPI = 6,
    ORDER_MODE_TPD_ELEME = 7,
    ORDER_MODE_TPD_NAPOS = 8,
    ORDER_MODE_NAPOS_MOBILE = 9,

    COME_FROM_OFFLINE = 0,
    COME_FROM_ONLINE = 1,
}

enum RestaurantMessageConst {
    TYPE_OTHER = 0,
    TYPE_BINDCARD_APPROVE = 1,
    TYPE_BINDCARD_REJECT = 2,
    TYPE_WITHDRAW_FAIL = 3,
}

enum ActivityConst {
    MIDDLE = 0,
    BANNER = 1,

    NO_INFO = 0,
    WITH_LINK = 1,
    WITH_PAGE = 2,
}

enum AppVersionConst {
    ANDROID_ELEME = 1,
    IOS_ELEME = 2,
    ANDROID_NAPOS = 3,
}

enum TGarnishCategoryKind {
    REQUIRED = 0,
    OPTIONAL = 1,
}

enum TOrderMode {
    PHONE = 1,
    ELEME = 2,
    NETWORK = 3,
    WIRELESS = 4,
}

enum FreeGiftActivityCategory {
    FREE_GIFT = 1,
    PACKAGE_GIFT = 2,
    NO_GIFT = 3,
}

enum SaasConst {
    TRIAL_ORDER_AMOUNT = 300,
    TRIAL_ORDER_COUNT = 10,

    TRIAL_DAYS = 15,

    STATUS_SUSPEND = 0,
    STATUS_FREE = 1,
    STATUS_TRIAL = 2,
    STATUS_PAY = 3,
    STATUS_TEMP_FREE = 4,

    CHANGE_ATTR_REMAINS = 1,
    CHANGE_ATTR_RANKING = 2,

    CHANGE_TYPE_LOGIN = 1,
    CHANGE_TYPE_ORDER = 2,
    CHANGE_TYPE_CUSTOM = 11,
    CHANGE_TYPE_TRIAL = 12,
    CHANGE_TYPE_CONTRACT_RECHARGE = 13,
    CHANGE_TYPE_CONTRACT_ABANDON = 14,
}

enum SaasContractRecordConst {
    STATUS_ABANDON = 0,
    STATUS_NEW = 1,
    STATUS_NORMAL = 2,
    STATUS_ARCHIVED = -1,

    CONTRACT_TYPE_NEW = 1,
    CONTRACT_TYPE_UPGRADE = 2,
    CONTRACT_TYPE_RENEW = 3,

    PLAN_TYPE_NORMAL = 1,
    PLAN_TYPE_RANKING = 2,

    PAYMENT_TYPE_CASH = 1,
    PAYMENT_TYPE_ELEME_ONLINE = 3,

    INCOME_STATUS_UNREC = 0,
    INCOME_STATUS_REC = 1,

    PLAN_SELECT_LEVEL_ALL = 0,
    PLAN_SELECT_LEVEL_INTERNAL = 1,
}

enum SaasContractComboConst {
    STATUS_STOP = 0,
    STATUS_NEW = 1,
    STATUS_IN_PROGRESS = 2,
    STATUS_ACOMPLISHED = 3,
    STATUS_ABANDON = -1,

    INCOME_STATUS_NEW = 0,
    INCOME_STATUS_STEP_1 = 1,
    INCOME_STATUS_STEP_2 = 2,
    INCOME_STATUS_STEP_3 = 3,

    INCOME_PERCENTAGE_1 = 30,
    INCOME_PERCENTAGE_2 = 30,
    INCOME_PERCENTAGE_3 = 40,

    COMBO_TYPE_A = 1,
    COMBO_TYPE_B = 2,
    COMBO_TYPE_C = 3,

    COMBO_BASIC_SAAS_DURATION = 720,
    COMBO_BASIC_SAAS_PRICE = 9640,
    COMBO_C_SAAS_PRICE = 8194,

    COMBO_A_RANKING_DURATION = 270,
    COMBO_B_RANKING_DURATION = 0,
    COMBO_C_RANKING_DURATION = 0,
}

enum OperationRemindConst {
    STATUS_UNPROCESSED = 0
    STATUS_PROCESSED = 1
}

enum RestaurantOpenApplyConst {
    STATUS_UNPROCESSED = 1
    STATUS_PASSED = 2
    STATUS_REJECT = 3
    STATUS_PROCESSING = 4
}

enum OnlinePaymentApplyConst {
    STATUS_INVALID = -1
    STATUS_UNPROCESSED = 0
    STATUS_APPROVE = 1
}

enum RestaurantSetupStepConst {
    NEW_RST = 0,
    START_INFO = 1,
    BIND_PHONE = 2,
    MENU = 3,
    ORDER_MODE = 4,
    FINISHED = 5
}


/**
 * Types and Structs
 */
typedef i64 Geohash
typedef i64 Timestamp
typedef string Mobile
typedef map<i32, i32> FoodStockMap


struct TAmendedPoi {
    1: required i32 id,
    2: required string name,
    3: required string address,
    4: required string extra_tag,
    5: required i32 city_id,
    6: required double latitude,
    7: required double longitude,
    8: optional Timestamp created_at,
    9: optional string pguid,
}

struct TAppCampaign {
    1: required i32 id,
    2: required string sn,
    3: required string description,
    4: required string iphone_link,
    5: required string android_link,
    6: optional Timestamp created_at,
}

struct TCoupon {
    1: required i32 id,
    2: required string sn,
    3: required i32 batch_id,
    4: required string batch_sn,
    5: required i32 remain,
    6: required string remarks,
    7: optional string deadline,
}

struct TChangelogRestaurant {
    1: required i32 id,
    2: required i32 restaurant_id,
    3: required string field_name,
    4: optional string from_value,
    5: optional string to_value,
    6: required i32 by_user_id,
    7: optional Timestamp created_at,
}

struct TChangelogRegion {
    1: required i32 id,
    2: required i32 region_id,
    3: required string field_name,
    4: optional string from_value,
    5: optional string to_value,
    6: required i32 by_user_id,
    7: optional Timestamp created_at,
    8: optional i16 status,
}

struct TDeletelogRegion {
    1: required i32 id,
    2: required i32 region_id,
    3: required i32 by_user_id,
    4: optional Timestamp created_at,
    5: optional i16 status,
}

struct TDeviceRestaurant {
    1: optional i32 id,
    2: optional i32 restaurant_id,
    3: optional string device_id,
    4: optional i16 device_type,
    5: optional string eleme_guid,
    6: optional string version,
    7: optional Timestamp created_at,
}

struct TDeviceRestaurantQuery {
    1: optional string device_id,
    2: optional i32 restaurant_id,
    3: optional i16 device_type,
    4: optional i32 offset,
    5: optional i32 limit,
}

struct TZone {
    1: optional i32 id,
    2: optional string name,
    3: optional i32 district_id,
    4: optional i32 city_id,
    5: optional i32 sort,
    6: optional i16 is_valid,
    7: optional Timestamp created_at,
    8: optional i16 need_az_group,
}

struct TRestaurant {
    1: required i32 id,
    2: required i16 is_valid,
    3: required i16 agent_fee,
    4: required i16 busy_level,
    5: required string name,
    6: optional double latitude,
    7: optional double longitude,
    8: required string description,
    9: optional string address_text,

    # deliver_amount is the max of
    # (entry_restaurant.deliver_amount, restaurant.min_deliver_amount)
    # if query by entry_id else restaurant.min_deliver_amount
    10: optional i16 deliver_amount,
    # TODO deprecated
    11: optional i16 total_status,
    # db new columns
    12: required string wireless_printer_esn,
    13: required bool support_online,
    14: required string open_time_bitmap,
    15: required string book_time_bitmap,

    16: required string deliver_description,
    17: required i16 num_rating_1,
    18: required i16 num_rating_2,
    19: required i16 num_rating_3,
    20: required i16 num_rating_4,
    21: required i16 num_rating_5,
    22: required Timestamp created_at,
    23: optional string image_url,
    24: required string image_hash,
    25: optional string phone,
    26: required Mobile mobile,
    27: required i16 order_mode,
    28: optional string promotion_info,
    29: required i16 one_delivery,
    30: optional string pinyin_name,
    31: required string name_for_url,
    32: required i16 min_deliver_amount,
    33: optional string close_description,
    34: required i16 is_saas,
    35: optional string header_image_url,
    36: required i16 waimai_num_print_copies,
    37: required i16 tangchi_num_print_copies,
    38: required string printer_version,
    39: optional i16 sn,
    40: required i16 deliver_radius,
    41: optional double min_lng,
    42: optional double max_lng,
    43: optional double min_lat,
    44: optional double max_lat,
    45: required i16 is_bookable,
    46: required string flavors,
    47: required i16 dine_enabled,
    48: optional i16 deliver_spent,
    49: required i16 is_time_ensure,
    50: optional string time_ensure_description,
    # TODO deprecated
    51: optional Timestamp time_ensure_at,
    52: optional i16 time_ensure_spent,
    53: optional string time_ensure_discount,
    54: required i16 city_id,
    55: required i16 is_phone_hidden,
    # TODO deprecated
    56: required i16 coupon_enabled,
    # TODO deprecated
    57: optional Timestamp coupon_start_at,
    # TODO deprecated
    58: optional Timestamp coupon_end_at,
    # TODO deprecated
    59: optional i32 coupon_number,
    60: optional i16 coupon_discount,
    61: required string paper_width,
    62: required i16 auto_print_tangchi,
    63: required double speed_coef1,
    64: required double speed_coef2,
    65: required double speed_coef3,
    66: required double avg_comment_time,
    68: required string activities,
    69: required i16 has_food_img,
    70: required i16 online_payment,
    71: required i16 invoice,
    72: required double invoice_min_amount,
    73: required string attribute,
    74: required string deliver_area,
    75: optional string open_date,
    76: required double original_order_quantity,
    77: required string keeper_name,
    78: required string keeper_phone,
    79: required string remark,
    80: required string corporation,
    81: required i32 geohash_ranking_weight,

    # serving_time like [('08:00:00', '23:00:00')]
    82: optional list<list<string>> serving_time,

    # num_ratings represents num_rating 1-5
    # [num_rating_1, num_rating2, ...]
    83: optional list<i16> num_ratings,

    84: required i32 recent_food_popularity,
    85: required i16 is_premium,

    # TODO deprecated, use book_time_bitmap instead
    86: optional list<string> deliver_times,

    # napos client settings [json]
    87: required string napos_client_settings,
    88: required string keeper_identity_card,

    89: optional bool support_coupon,
    90: optional string time_ensure_full_description,
    91: required i32 come_from,
}

struct TRestaurantEvaluation {
    1: optional i32 id,
    2: optional double recent_daily_sales,
    3: optional double recent_daily_order_num,
    4: optional double recent_daily_sales_trend,
    5: optional double recent_daily_order_num_trend,
}

# lean restaurant struct for performance concern
struct TLeanRestaurant {
    1: required i32 id,
    2: required i16 is_valid,
    3: required i16 agent_fee,
    4: required i16 busy_level,
    5: required string name,
    6: required string description,
    7: optional string address_text,

    # deliver_amount is the max of
    # (entry_restaurant.deliver_amount, restaurant.min_deliver_amount)
    # if query by entry_id else restaurant.min_deliver_amount
    8: optional i16 deliver_amount,
    # TODO deprecated
    9: optional i16 total_status,
    # db new columns
    10: required bool support_online,
    11: required string open_time_bitmap,
    12: required string book_time_bitmap,

    13: required string deliver_description,
    14: required string image_hash,
    15: optional string phone,
    16: required Mobile mobile,
    17: required i16 order_mode,
    18: optional string promotion_info,
    19: optional string pinyin_name,
    20: required string name_for_url,
    21: optional string close_description,
    22: required i16 is_bookable,
    23: required string flavors,
    24: optional i16 deliver_spent,
    25: required i16 is_time_ensure,
    26: optional string time_ensure_full_description,
    27: required i16 city_id,
    28: required i16 is_phone_hidden,
    29: optional bool support_coupon,
    30: optional i16 coupon_discount,
    31: required double speed_coef1,
    32: required double speed_coef2,
    33: required double speed_coef3,
    34: required i16 online_payment,
    35: required i16 invoice,
    36: required double invoice_min_amount,
    37: required string attribute,

    # num_ratings represents num_rating 1-5
    # [num_rating_1, num_rating2, ...]
    38: optional list<i16> num_ratings,

    39: required i16 is_premium,

    40: optional double latitude,
    41: optional double longitude,
    42: optional i32 recent_food_popularity,
    43: required Timestamp created_at,
}

struct TRestaurantBankcard {
    1: required i32 restaurant_id,
    2: required string card_id,
    3: required i16 bank_id,
    4: required string branch_name,
    5: required string cardholder_name,
}

struct TFavoredRestaurant {
    1: required i32 id,
    2: required i32 restaurant_id,
    3: required Timestamp created_at,
    4: required i32 user_id,
    5: required i32 weight,
}

struct TFood {
    1: required i32 id,
    2: required i32 restaurant_id,
    3: required string name,
    4: required double original_price,
    5: required double price,
    6: required i16 is_valid,
    7: optional string image_url,
    8: required string image_hash,
    9: optional string description,
    10: required i16 num_rating_1,
    11: required i16 num_rating_2,
    12: required i16 num_rating_3,
    13: required i16 num_rating_4,
    14: required i16 num_rating_5,
    16: required string attribute,
    17: optional Timestamp created_at,
    18: optional i32 category_id,
    19: optional Timestamp updated_at,
    20: optional string pinyin_name,
    21: required i16 is_new,
    22: required i16 is_featured,
    23: required i16 is_gum,
    24: required i16 is_spicy,
    25: required string sn,
    26: required i32 recent_popularity,
    27: required double recent_rating,
    29: required i32 stock,
    30: required i32 max_stock,
    31: required bool daily_reset,
    32: optional Timestamp price_changed_at,
}

struct TFoodCategory {
    1: required i32 id,
    2: required i32 restaurant_id,
    3: required string name,
    4: required i32 weight,
    5: required i16 is_valid,
    # TODO deprecated, use attribute_list instead
    6: required string attributes,
    7: required Timestamp created_at,
    8: optional list<string> attribute_list,
    9: required string description,
}

struct TFoodFlavor {
    1: required i32 id,
    2: required i32 food_id,
    3: required i32 food_category_id,
    4: required i32 restaurant_id,
    5: required string flavor_name,
    6: required i32 flavor_id,
}

struct TRestaurantFlavor {
    1: required i32 id,
    2: required i32 restaurant_id,
    3: required string flavor_name,
    4: required i32 flavor_id,
    5: required i16 is_manually,
}

struct TFoodUgcImage {
    1: required i32 id,
    2: required i32 food_id,
    3: required string food_name,
    4: required i32 restaurant_id,
    5: required string image_hash,
    6: required i32 user_id,
    7: required string user_name,
    8: required string avatar_hash,
    9: required i32 order_item_id,
    10: required i16 status,
    11: required Timestamp created_at,
    12: required string sn,
}

struct TFoodUgcImageQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional string keyword,
    4: optional list<i32> food_ids,
    5: optional list<i32> restaurant_ids,
    6: optional list<i32> user_ids,
    7: optional list<i32> statuses,
    8: optional list<i32> order_item_ids,
}

struct TFoodUgcImageCover {
    1: required i32 id,
    2: required i32 food_id,
    3: required i32 restaurant_id,
    4: required i32 count,
    5: required Timestamp cover_update,
    6: required string cover_image_hash,
    7: required i32 cover_user_id,
    8: required string cover_user_name,
    9: required string cover_avatar_hash,
    10: required i16 is_valid,
}

struct TFoodUgcImageCoverQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional string keyword,
    4: optional list<i32> food_ids,
    5: optional list<i32> restaurant_ids,
}

struct TFoodUgcImagePr {
    1: required i32 id,
    2: required i32 user_id,
    3: required i32 food_ugc_image_id,
    4: required i16 from_status,
    5: required i16 to_status,
    6: required string remark,
    7: required Timestamp created_at,
}

struct TFriendLinkQuery {
    1: optional string name,
    2: optional i16 is_valid,
    3: optional i32 offset,
    4: optional i32 limit,
}

struct TFriendLink {
    1: optional i32 id,
    2: optional i32 weight,
    3: optional string link,
    4: optional string name,
    5: optional i16 is_valid,
}

struct TQuickMessageQuery {
    1: optional string title,
    2: optional string content,
    3: optional string search,
    4: optional i32 offset,
    5: optional i32 limit,
}

struct TQuickMessage {
    1: optional i32 id,
    2: optional string title,
    3: optional string content,
}

struct TCFoodCategoryWithFoods {
    1:required TFoodCategory food_category,
    2:required list<TFood> foods,
}

struct TGarnishCategory {
    1: required i32 id,
    2: required string name,
    3: required TGarnishCategoryKind kind,
    4: required i32 rst_id,
    5: required bool is_valid,
}

struct TGarnish {
    1: required i32 id,
    2: required i32 category_id,
    3: required string name,
    4: required double price,
    5: required i16 weight,
    6: required bool is_valid,
}

struct TFoodGarnishCategory {
    1: required i32 id,
    2: required i32 food_id,
    3: required i32 garnish_category_id,
    4: required i32 weight,
}


struct TEntry {
    1: required i32 id,
    2: required string sn,
    3: required string name,
    4: required string pinyin,
    5: required string address,
    6: required double latitude,
    7: required double longitude,
    9: required i16 mobile_reserved,
    10: required i32 city_id,
    11: required i16 is_rsts_cached,
    12: optional Timestamp created_at,
    13: required i32 district_id,
    14: required i32 zone_id,
    15: required i32 sort,
    16: required i16 is_valid,
    17: required string search,
    18: required string extra_tag,
    19: required i16 online_payment,
    20: required Geohash to_geohash,
    21: required i16 migrate_status,
    22: required string psn,
}

struct TRegion {
    1: required i32 id,
    2: required string name,
    3: required i32 type_code,
    4: required i32 has_geohash,
    5: required string color,
    6: required string area,
    7: required i32 city_id,
    8: required Timestamp created_at,
}

struct TArea {
    1: required i32 id,
    2: required string name,
    3: required i32 type_code,
    4: required string boundary,
    5: required double latitude,
    6: required double longitude,
    7: required i32 city_id,
    8: required Timestamp created_at,
}

struct TRegionGroup {
    1: required i32 id,
    2: required string name,
    3: i32 city_id,
}

struct TCity {
    1: required i32 id,
    2: required string name,
    3: required string abbr,
    4: required string hint,
    5: required string area_code,
    6: required string company_name,
    7: required string company_address,
    8: required i32 sort,
    9: required string notice_emails,
    10: required i16 is_valid,
    11: required i32 district_code,
    12: required string boundary,
    13: required double latitude,
    14: required double longitude,
    15: required string company_abbr,
}

struct TDistrict {
    1: optional i32 id,
    2: optional string name,
    3: optional i32 city_id,
    4: optional i32 sort,
    5: optional i16 is_valid,
    6: optional Timestamp created_at,
    7: optional string attributes,
    8: optional i16 need_az_group,
}

struct TCEntryDirector {
    1: optional list<i32> city_ids,
    2: optional list<i32> region_group_ids,
    3: optional list<i32> region_ids,
}

struct TFreeGiftActivity {
    1: required i32 id,
    2: required string name,
    3: required string desc,
    4: required string attribute_name,
    5: required string image_hash,
    6: required string icon_hash,
    7: required string gift_name,
    8: required string unit_name,
    9: required i16 category_id,
    10: required i32 entity_category_id,
    11: required i32 entity_id,
    12: required i16 is_valid,
    13: required bool show_in_filter,
    14: required bool has_gift,
    15: required string icon_name,
}

struct TActivity {
    1: required i32 id,
    2: required string sn,
    3: required string description,
    4: required string image,
    5: required string image_hash,
    6: required string link,
    7: required i32 sort,
    8: required Timestamp created_at,
    9: required string start_date,
    10: required string end_date,
    11: required bool is_valid,
    12: required string selected_cities,
    13: required string selected_regions,
    14: required string selected_region_groups,
    16: required i16 type,
    17: required string weekday,
    18: required string act_intro,
    19: required string act_how,
    20: required string act_scope,
    21: required string act_time,
    22: required string act_notice,
    23: required string act_image,
    24: required string act_image_hash,
    25: required i32 has_info,
    26: required bool is_default,
    27: required string mobile_image_hash,
    28: required string mobile_intro,
    29: required string mobile_link,
}

struct TLogo {
    1: required i32 id,
    2: required string name,
    3: required string start_date,
    4: required string end_date,
    5: required string small_logo,
    6: required string small_logo_hash,
    7: required string big_logo,
    8: required string big_logo_hash,
    9: required bool is_valid,
}

struct TRestaurantComment {
    1: required i32 id,
    2: required i32 user_id,
    3: required i32 restaurant_id,
    4: required string username,
    5: required Timestamp created_at,
    6: required string content,
    7: required i16 is_valid,
    8: required i32 feedback_id,
    9: required string avatar,
}

struct TRestaurantCommentReply {
    1: required i32 id,
    2: required i32 comment_id,
    3: required i32 user_id,
    4: required Timestamp created_at,
    5: required string content,
    6: required i32 type,
    7: required i16 is_valid,
}

struct TWalleCommentReplyQuery {
    1: optional i16 is_valid,
    2: optional string search,
    3: optional i32 offset,
    4: optional i32 limit,
}

struct TCWalleCommentReply {
    1: required i32 id,
    2: required i32 comment_id,
    3: required i32 user_id,
    4: required Timestamp created_at,
    5: required string content,
    6: required i32 type,
    7: required i16 is_valid,
    8: required string username,
    9: required string comment_content,
}

struct TCWalleRestaurantChangeRecord {
    1: required i32 id,
    2: required i32 restaurant_id,
    3: required string restaurant_name,
    4: required string status_name,
    5: required i32 from_status,
    6: required i32 to_status,
    7: required string remark,
    8: required i32 user_id,
    9: required Timestamp created_at,

    10: required string description,
    11: required string username,
}

struct TDockCorp {
    1: required i32 id,
    2: required i32 app_id,
    3: required string name,
    4: required string phone,
    5: required string description,
    6: required i16 corp_type,
}

struct TDockCorpRestaurant {
    1: required i32 id,
    2: required i32 corp_id,
    3: required i32 restaurant_id,
}

struct TDockCorpQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional string keyword,
    4: optional i16 corp_type,
}

struct TFoodActivity {
    1: required i32 id,
    2: required string name,
    3: required string icon_name,
    4: required i16 is_valid,
    5: required string icon_hash,
    6: required string image_hash,
    7: required string description,
    8: required string begin_date,
    9: required string end_date,
    10: required string city_id,
    11: required i16 can_always_buy,
    12: optional string weekday,
    13: optional string begin_time,
    14: optional string end_time,
    15: required i16 quantity_condition,
    16: required i16 sum_condition,
    17: required double discount,
    18: required double nth_discount,
    19: required i16 reduce_amount,
    20: optional string gift_name,
    21: required Timestamp created_at,
    22: required i16 max_quantity,
}

struct TFoodActivityQuery {
    1: optional list<i32> restaurant_ids,
    2: optional list<i32> city_ids,
    3: optional string begin_date,
    4: optional string end_date,
    5: optional bool is_valid,
    6: optional string keyword,
    7: optional list<i32> weekday,
    8: optional i32 limit,
    9: optional i32 offset,
}

struct TRestaurantOpenApply {
    1: required i32 id,
    2: required i32 user_id,
    3: required string applicant,
    4: required string telephone,
    5: required string mobilephone,
    6: required string qq,
    7: required i16 city_id,
    8: required i64 geohash,
    9: required i32 entry_id,
    10: required string restaurant_name,
    11: required string restaurant_address,
    12: required string restaurant_description,
    13: required string restaurant_url,
    14: required i16 status,
    15: required Timestamp created_at,
}

struct TRestaurantPromotion {
    1: required i32 id,
    2: required i32 restaurant_id,
    3: required string content,
    4: required i16 is_valid,
    5: required Timestamp created_at,
    6: required Timestamp deadline,
}

struct TSeoSmCityIndex {
    1: optional i32 id,
    2: optional i32 city_id,
    3: optional i32 category_id,
    4: optional string all_indexes,
}

struct TSeoSmIndex {
    1: optional i32 id,
    2: optional string name,
    3: optional i32 sort_weight,
}

struct TRestaurantOpenApplyQuery {
    1: optional i32 user_id,
    2: optional list<i16> city_ids,
    3: optional i16 status,
    4: optional Timestamp created_at_start,
    5: optional Timestamp created_at_end,
    6: optional string applicant,
    7: optional string telephone,
    8: optional string mobilephone,
    9: optional string restaurant_name,
    10:optional i32 offset,
    11:optional i32 limit,
}

struct TSeoSmPlace {
    1: optional i32 id,
    2: optional i32 index_id,
    3: optional i32 city_id,
    4: optional string name,
    5: optional string address,
    6: optional i64 place_id,
    7: optional string sn,
}

struct TSeoSmRestaurant {
    1: optional i32 id,
    2: optional i32 index_id,
    3: optional i32 city_id,
    4: optional string name,
    5: optional string address,
    6: optional string name_for_url,
}

struct TRestaurantCommentQuery {
    1: optional Timestamp from_datetime,
    2: optional Timestamp to_datetime,
    3: optional list<i32> exc_restaurant_ids,
    4: optional list<i32> restaurant_ids,
    5: optional i32 offset,
    6: optional i32 limit,
    7: optional i32 comment_id,
    8: optional i16 is_valid,
    9: optional i32 user_id,
}

struct TCWalleRestaurantComment {
    1: required i32 id,
    2: required i32 user_id,
    3: required i32 restaurant_id,
    4: required string username,
    5: required Timestamp created_at,
    6: required string content,
    7: required i16 is_valid,
    8: required i16 is_replied,
    9: required string restaurant_name,
}

struct TWalleRestaurantCommentQuery {
    1: optional i16 is_valid,
    2: optional i16 is_replied,
    3: optional string search,

    4: optional i32 offset,
    5: optional i32 limit,
}

struct TFreeGiftActivityQuery {
    1: optional i32 category_id,
    2: optional bool is_valid,
    3: optional i32 offset,
    4: optional i32 limit,
}

struct TActivityQuery {
    1: optional bool is_valid,
    2: optional bool is_default,
    3: optional string type,
    4: optional string sort,
    5: optional string start_date,
    6: optional string end_date,
    7: optional i32 offset,
    8: optional i32 limit,
    9: optional string keyword,

    10: optional i32 has_info,
    11: optional string weekday,
    12: optional Geohash geohash,
}

struct TCityQuery {
    1: optional bool is_valid,
    2: optional i32 offset,
    3: optional i32 limit,
}

struct TLogoQuery {
    1: optional bool is_valid,
    2: optional i32 offset,
    3: optional i32 limit,
    4: optional string keyword,
}

struct TSeoSmCityIndexQuery {
    1: optional i32 city_id,
    2: optional i32 category_id,
}

struct TSeoSmQuery {
    1: optional i32 index_id,
    2: optional i32 city_id,
    3: optional i32 offset,
    4: optional i32 limit,
}

typedef list<string> QueryFields
typedef list<TRestaurant> TRestaurantList

struct TFoodQuery {
    1: optional i32 restaurant_id,
    2: optional i32 category_id,
    3: optional bool is_valid,
    4: optional i32 limit,
    5: optional i32 offset,
    6: optional string keyword,
}

# deprecated, use mset_food_stock_by_category instead
struct TFoodStock {
    1: optional i32 restaurant_id,
    2: optional i32 category_id,
    3: optional bool is_max,
}

struct TFoodCategoryQuery {
    1: optional i32 restaurant_id,
    2: optional bool is_valid,
    3: optional i32 limit,
    4: optional i32 offset,
}

struct TFoodGarnishCategoryQuery {
    1: optional i32 food_id,
    2: optional i32 garnish_category_id,
    3: optional i32 limit,
    4: optional i32 offset,
}

struct TGarnishQuery {
    1: optional i32 category_id,
    2: optional bool is_valid,
    3: optional i32 limit,
    4: optional i32 offset,
}

struct TGarnishCategoryQuery {
    1: optional i32 restaurant_id,
    2: optional TGarnishCategoryKind kind,
    3: optional bool is_valid,
    4: optional i32 limit,
    5: optional i32 offset,
}

struct TRestaurantQuery {
    1: optional string address,
    2: optional string mobile,
    3: optional string name,
    4: optional string phone,
    5: optional i16 busy_level,
    6: optional i16 order_mode,
    7: optional bool allow_ol_payment,
    8: optional bool has_deliver_area,
    9: optional bool has_food_img,
    10: optional bool has_image_hash,
    11: optional bool is_coupon,
    12: optional bool is_recommend,
    13: optional bool is_premium,
    14: optional bool is_valid,
    15: list<i32> city_ids,
    16: list<i32> region_ids,
    17: list<i32> managed_city_ids,
    18: list<i32> managed_region_ids,
    19: optional i32 offset,
    20: optional i32 limit,
    21: optional string keyword,
    22: optional i32 come_from,
}

struct TEntryQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional i16 is_valid
    4: optional i32 zone_id,
}

struct TWalleEntryQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional i16 is_valid
    4: optional i32 zone_id,
    5: optional string search,
    6: optional string name,
    7: optional string address,
}

struct TDistrictQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional i16 is_valid
    4: optional i32 city_id,
}

struct TZoneQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional i16 is_valid
    4: optional i32 district_id,
}

struct TWalleFilter {
    1: optional list<i32> region_ids,
    2: optional list<i32> region_group_ids,
    3: optional list<i32> city_ids,
    4: optional string date_end,
}

struct TWalleKPIFilter {
    1: optional list<i32> region_ids,
    2: optional list<i32> region_group_ids,
    3: optional list<i32> city_ids,
    5: optional i16 year,
    6: optional i16 month,
}

struct TSaasStatus {
    1: optional i32 restaurant_id,
    2: optional i32 status,
    3: optional i32 remains,
    4: optional string ranking_end,
    5: optional string last_minus,
    6: optional bool is_pay,
    7: optional i32 rank_remains,
    8: optional string temp_free_end,
}

struct TCSaasStatus {
    1: optional i32 restaurant_id,
    2: optional i32 status,
    3: optional i32 remains,
    4: optional string ranking_end,
    5: optional string last_minus,
    6: optional bool is_pay,
    7: optional i32 rank_remains,
    8: optional string temp_free_end,
    9: optional string restaurant_name,
}

struct TSaasStatusQuery {
    1: optional list<i32> restaurant_ids,
    2: optional list<i32> statuses,
    3: optional i32 from_remains,
    4: optional i32 to_remains,
    5: optional i32 from_rank_remains,
    6: optional i32 to_rank_remains,
    7: optional string from_last_minus,
    8: optional string to_last_minus,
    9: optional bool is_pay,
    10: optional string from_temp_free_end,
    11: optional string to_temp_free_end,
    12: optional list<i32> city_ids,
    13: optional list<i32> region_ids,
    14: optional bool is_valid,
    15: optional i32 offset,
    16: optional i32 limit,
    17: optional string from_ranking_end,
    18: optional string to_ranking_end,
}

struct TSaasStatusChange {
    1: optional i32 id,
    2: optional i32 restaurant_id,
    3: optional i32 change_attr,
    4: optional i32 change_type,
    5: optional i32 change_amount,
    6: optional string remark,
    7: optional string contract_record_sn,
    8: optional i32 user_id,
    9: optional Timestamp created_at,
}

struct TSaasStatusChangeQuery {
    1: optional i32 restaurant_id,
    2: optional i32 change_attr,
    3: optional i32 change_type,
    4: optional Timestamp created_at_start,
    5: optional Timestamp created_at_end,
    6: optional i32 offset,
    7: optional i32 limit,
}

struct TSaasContractPlanQuery {
    1: optional bool is_valid,
    2: optional bool client,
    3: optional i16 plan_type,
    4: optional i16 select_level,
    5: optional i32 offset,
    6: optional i32 limit,
}

struct TSaasContractPlan {
    1: optional i32 id,
    2: optional bool is_valid,
    3: optional i16 plan_type,
    4: optional string name,
    5: optional i32 duration,
    6: optional bool client,
    7: optional i32 price,
    8: optional string bonus,
    9: optional i16 select_level,
}

struct TSaasContractRecordQuery {
    1: optional i32 restaurant_id,
    2: optional list<i16> statuses,
    3: optional list<i16> plan_types,
    4: optional list<i16> contract_types,
    5: optional i16 income_status,
    6: optional bool is_bonus_sent,
    7: optional string from_signed_date,
    8: optional string to_signed_date,
    9: optional string from_income_rec_date,
    10: optional string to_income_rec_date,
    11: optional Timestamp from_created_at,
    12: optional Timestamp to_created_at,
    13: optional i32 offset,
    14: optional i32 limit,
    15: optional list<i32> region_ids,
    16: optional list<i32> city_ids,
    17: optional i32 processor_id,
    18: optional string search,
    19: optional list<i16> payment_types,
}

struct TSaasContractRecord {
    1: optional i32 id,
    2: optional string sn,
    3: optional string relevant_sn,
    4: optional i32 status,
    5: optional string remark,
    6: optional string modification,
    7: optional i32 restaurant_id,
    8: optional string restaurant_name,
    9: optional i16 contract_type,
    10: optional i16 payment_type,
    11: optional i16 plan_type,
    12: optional string plan_name,
    13: optional i32 plan_duration,
    14: optional i32 plan_duration_real,
    15: optional i16 plan_client,
    16: optional double plan_price,
    17: optional double plan_price_real,
    18: optional string plan_bonus,
    19: optional bool is_bonus_sent,
    20: optional string plan_remark,
    21: optional string a_name,
    22: optional string a_address,
    23: optional string a_phone,
    24: optional string a_contact_person,
    25: optional string a_contact_phone,
    26: optional string a_code,
    27: optional string b_name,
    28: optional string b_address,
    29: optional string b_phone,
    30: optional string b_contact_person,
    31: optional string b_contact_phone,
    32: optional string b_approver,
    33: optional string b_signed_date,
    34: optional i32 processor_id,
    35: optional i32 income_rec_user_id,
    36: optional string income_rec_date,
    37: optional string income_rec_remark,
    38: optional i16 income_status,
    39: optional string reference_date,
    40: optional Timestamp created_at,
    41: optional bool is_upgraded,
}

struct TSaasContractComboQuery {
    1: optional i32 restaurant_id,
    2: optional list<i16> statuses,
    3: optional list<i16> combo_types,
    4: optional list<i16> income_statuses,
    5: optional string from_signed_date,
    6: optional string to_signed_date,
    7: optional Timestamp from_created_at,
    8: optional Timestamp to_created_at,
    9: optional list<i32> region_ids,
    10: optional list<i32> city_ids,
    11: optional i32 processor_id,
    12: optional string search,
    13: optional i32 offset,
    14: optional i32 limit,
}

struct TSaasContractCombo {
    1: optional i32 id,
    2: optional string sn,
    3: optional i32 status,
    4: optional string modification,
    5: optional i32 restaurant_id,
    6: optional string restaurant_name,
    7: optional i16 combo_type,
    8: optional i16 saas_duration,
    9: optional double saas_price,
    10: optional string ranking_description,
    11: optional double ranking_price,
    12: optional i16 ranking_duration,
    13: optional string signed_date,
    14: optional i16 income_status,
    15: optional string income_date_1,
    16: optional string income_date_2,
    17: optional string income_date_3,
    18: optional string saas_subcontract_1,
    19: optional string saas_subcontract_2,
    20: optional string saas_subcontract_3,
    21: optional string ranking_subcontract_1,
    22: optional string ranking_subcontract_2,
    23: optional string ranking_subcontract_3,
    24: optional i32 processor_id,
    25: optional Timestamp created_at,
    26: optional string a_name,
    27: optional string a_address,
    28: optional string a_phone,
    29: optional string a_contact_person,
    30: optional string b_name,
    31: optional string b_address,
    32: optional string b_phone,
    33: optional string b_contact_person,
    34: optional string b_approver,
    35: optional string relevant_sn,
    36: optional double saas_price_real,
    37: optional double saas_paid,
    38: optional double ranking_price_real,
    39: optional double ranking_paid,
    40: optional i16 saas_recharged,
    41: optional i16 ranking_recharged,
}

struct TRegionQuery {
    1: required list<i32> region_ids,
    2: required string search,
    3: required list<i16> type_codes,
    4: required list<i32> city_ids,
}

struct TRegionGroupQuery {
    1: optional list<i32> region_group_ids,
    2: optional string search,
    3: optional list<i32> city_ids,
    4: optional i32 offset,
    5: optional i32 limit,
}

struct TRestaurantInRegionQuery{
    1: required list<i32> region_ids,
    2: required bool is_valid,
    3: required string search,
    4: required i32 offset,
    5: required i32 limit,
}

struct TCRestaurantSaasStats {
    1: optional i16 group,
    2: optional i32 napos_num,
    3: optional double napos_rate,
    4: optional i32 trial_num,
    5: optional double trial_rate,
    6: optional i32 pay_num,
    7: optional double pay_rate,
    8: optional i32 temp_free_num,
    9: optional double temp_free_rate,
    10: optional i32 napos_mobile_num,
    11: optional double napos_mobile_rate,
    12: optional i32 has_food_img_num,
    13: optional double has_food_img_rate,
    14: optional i32 online_payment_num,
    15: optional double online_payment_rate,
    16: optional i32 has_food_activity_num,
    17: optional double has_food_activity_rate,
    18: optional i32 total_num,
}

struct TCCommentWithReplies {
    1: required TRestaurantComment comment,
    2: required list<TRestaurantCommentReply> comment_replies,
}

struct TCFoodActivityWithRestaurantIds{
    1: required TFoodActivity food_activity,
    2: required list<i32> restaurant_ids,
}

struct TOperationRemindQuery {
    1: optional i16 status,
    2: optional bool remind_time_out,
    3: optional i32 by_user_id,
    4: optional string restaurant_name,
    5: optional i32 offset,
    6: optional i32 limit,
}

struct TCOperationRemind {
    1: required i32 id,
    2: required i32 restaurant_id,
    3: required string restaurant_name,
    4: required string description,
    5: required i32 by_user_id,
    6: required i16 status,
    7: required Timestamp remind_time,
    8: required Timestamp created_at,
}

struct TCFavoredUser {
    1: optional i32 id,
    2: optional string username,
    3: optional Timestamp favored_time,
}

struct TNaposCommentQuery {
    1: optional i32 restaurant_id,
    2: optional string type,
    3: optional i32 offset,
    4: optional i32 limit,
}

struct TRestaurantMessage {
    1: optional i32 id,
    2: optional i32 restaurant_id,
    3: optional string content,
    4: optional bool is_read,
    5: optional string link,
    6: optional string link_text,
    7: optional Timestamp created_at,
    8: optional i32 type_code,
}


struct TCWalleKPIStats {
    1: optional i32 num,
    2: optional i32 pay_num,
    3: optional i32 trial_num,
    4: optional i32 new_num,
    5: optional i32 client_num,
    6: optional i32 food_img_num,
    7: optional i32 time_ensure_num,
    8: optional i32 coupon_enabled_num,
}

struct TOnlinePaymentApplyQuery{
    1:optional i16 status,
    2:optional string search,
    3:optional list<i32> region_ids,

    4:optional i32 offset,
    5:optional i32 limit,
}

struct TCWalleOnlinePaymentApply {
    1:required i32 id,
    2:required i16 status,
    3:required i32 restaurant_id,
    4:required string restaurant_name,
    5:required Timestamp created_at,

    6:required i32 user_id,
    7:required string username,
    8:required string card_id,
    9:required string cardholder_name,
    10:required i32 bank_id,
    11:required string bank_name,
}

struct TWhitelist {
    1: optional list<i32> city_ids,
    2: optional list<i32> region_group_ids,
    3: optional list<i32> region_ids,
    4: optional list<i32> restaurant_ids,
}

/**
 * Exceptions
 */
enum ERSErrorCode {
    UNKNOWN_ERROR,

    // User Errors
    ACTIVITY_NOT_FOUND,
    APP_URL_NOT_FOUND,
    AREA_NOT_FOUND,
    BANKCARD_NOT_FOUND,
    CITY_NOT_FOUND,
    COMMENT_NOT_FOUND,
    COMMENT_REPLY_NOT_FOUND,
    COUPON_ALREADY_USED,
    COUPON_NOT_FOUND,
    COUPON_OUT_OF_DATE,
    DEVICE_RESTAURANT_NOT_FOUND,
    DIRECTOR_NOT_FOUND,
    DISTRICT_NOT_FOUND,
    DOCK_CORP_NOT_FOUND,
    DOCK_CORP_RESTAURANT_NOT_FOUND,
    DUPLICATED_DEVICE_RESTAURANT,
    ENTRY_NOT_FOUND,
    ENTRY_RESTAURANT_NOT_FOUND,
    FOOD_ALREADY_HAS_FOOD_ACTIVITY,
    FOOD_ACTIVITY_NOT_FOUND,
    FOOD_GROUP_RESTAURANT_DIVERSED,
    FOOD_NOT_FOUND,
    FOOD_HAS_NO_CATEGORY_ID,
    FOOD_NAME_CANNOT_CHANGE,
    FOOD_PRICE_CHANGED_TOO_OFTEN,
    FOOD_PRICE_CHANGED_TOO_MUCH,
    FOOD_CATEGORY_NOT_FOUND,
    FOOD_REQUIRED_GARNISH_CONFLICT,
    FOOD_UGC_IMAGE_NOT_FOUND,
    FOOD_UGC_IMAGE_PR_NOT_FOUND,
    FRIEND_LINK_NOT_FOUND,
    GARNISH_NOT_FOUND,
    GARNISH_CATEGORY_NOT_FOUND,
    GEOHASH_NAME_NOT_FOUND,
    GEOHASH_RESTAURANT_NOT_FOUND,
    INVALID_DATE_RANGE,
    INVALID_ENTRY,
    INVALID_RESTAURANT,
    INVALID_RESTAURANT_AREA,
    INVALID_TIME_RANGE,
    LOGO_NOT_FOUND,
    MISSING_DEVICE_RESTAURANT_ATTRIBUTE,
    PERMISSION_DENIED,
    QUICK_MESSAGE_NOT_FOUND,
    REGION_AREA_TOO_LARGE,
    REGION_NOT_FOUND,
    REGION_GROUP_NOT_FOUND,
    RESTAURANT_ADMIN_NOT_FOUND,
    RESTAURANT_AREA_TOO_LARGE,
    RESTAURANT_CHANGE_RECORD_NOT_FOUND,
    RESTAURANT_EVALUATION_NOT_FOUND,
    RESTAURANT_MESSAGE_NOT_FOUND,
    RESTAURANT_NOT_FOUND,
    RESTAURANT_OPEN_APPLY_NOT_FOUND,
    RESTAURANT_OPEN_APPLY_STATUS_INVALID,
    RESTAURANT_PROMOTION_NOT_FOUND,
    SAAS_CHANGE_RECORD_NOT_FOUND,
    SAAS_CONTRACT_RECORD_NOT_FOUND,
    SAAS_CONTRACT_RECORD_STATUS_ERROR,
    SAAS_STATUS_ERROR,
    SAAS_STATUS_NOT_FOUND,
    SAAS_PAY_CANT_TO_FREE,
    SAAS_TRIAL_DAYS_OVER_LIMIT,
    SAAS_SUSPENDED_RESTAURANT_CLOSED_ONLY,
    SAAS_CONTRACT_PLAN_NOT_FOUND,
    SAAS_CONTRACT_UPGRADE_OVERDUE,
    SAAS_CONTRACT_RELEVANT_RECORD_NOT_FOUND,
    SAAS_CONTRACT_RELEVANT_RECORD_ALREADY_UPGRADED,
    SAAS_CONTRACT_RELEVANT_RECORD_NOT_NORMAL,
    SAAS_CONTRACT_UPGRADE_PLAN_ERROR,
    SAAS_CONTRACT_UPGRADE_RESTAURANT_ERROR,
    SAAS_CONTRACT_RECORD_ABANDONED,
    SAAS_CONTRACT_ONLY_ONE_NEW,
    SAAS_CONTRACT_COMBO_NOT_FOUND,
    SAAS_CONTRACT_COMBO_ONE_FOR_RESTAURNT,
    SAAS_CONTRACT_COMBO_NOT_PAYABLE,
    SAAS_CONTRACT_COMBO_USER_LACK_OF_BALANCE,
    SAAS_CONTRACT_COMBO_CONFIRM_OVERLOAD,
    SEO_SM_INDEX_NOT_FOUND,
    STOCK_NOT_ENOUGH,
    TOO_MANY_FOOD_UGC_IMAGES,
    USER_AUTH_FAIL,
    CL_NOT_FOUND,
    DL_NOT_FOUND,
    AREA_OUT_OF_CITY,
    ZONE_NOT_FOUND,
    INVALID_NAME_FOR_URL,
    FOOD_CATEGORY_ONE_ATRR_ONLY,
    ONLINE_PAYMENT_APPLY_NOT_FOUND,
    ONLINE_PAYMENT_APPLY_ALREADY_PROCESSED,
    DELIVER_AREA_MUST_IN_UPDATE,
    INVALID_RESTAURANT_DELIVER_PRICE,
    INVALID_MOBILE,
    DUPLICATED_FOOD_UGC_IMAGE,
    APP_CAMPAIGN_NOT_FOUND,

    EOS_CLIENT_ERROR,
    EUS_CLIENT_ERROR,
    GEOS_CLIENT_ERROR,
    EES_CLIENT_ERROR,
    DMS_CLIENT_ERROR,
    SMS_CLIENT_ERROR,
    OAS_CLIENT_ERROR,
    TDS_CLIENT_ERROR,

    // System Errors
    DATABASE_ERROR,
    INVALID_FIELD_VALUE,
}

exception ERSUserException {
    1: required ERSErrorCode error_code,
    2: required string error_name,
    3: optional string message,
}

exception ERSSystemException {
    1: required ERSErrorCode error_code,
    2: required string error_name,
    3: optional string message,
}

exception ERSUnknownException {
    1: required ERSErrorCode error_code,
    2: required string error_name,
    3: required string message,
}


/**
 * Services
 */
service ElemeRestaurantService {
    /**
     * Base APIs
     */

    bool ping()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void clear_cache(1:string api_name,
                     2:list<string> params)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unkown_exception),

    bool check_favored(1: i32 user_id,
                       2: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void add_favored(1: i32 user_id,
                     2: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_favored(1: i32 user_id,
                        2: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_favored(1: i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    map<i32, i32> mcount_restaurant_by_entry_id(1: list<i32> entry_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    bool check_favor_food(1: i32 user_id,
                          2: i32 food_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void add_favor_food(1: i32 user_id,
                        2: i32 food_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_favor_food(1: i32 user_id,
                           2: i32 food_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void add_comment(1: i32 user_id,
                     2: string username,
                     3: i32 restaurant_id,
                     4: string content)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_comment(1: TRestaurantCommentQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void add_comment_reply(1: i32 comment_id,
                           2: i32 user_id,
                           3: string content,
                           4: i32 type)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i16 get_deliver_amount_by_entry(1: i32 restaurant_id,
                                    2: i32 entry_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    FoodStockMap get_foods_stock(1: list<i32> food_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void incr_foods_stock(1: FoodStockMap food_stock_map)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void decr_foods_stock(1: FoodStockMap food_stock_map)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void set_food_stock(1: i32 food_id,
                        2: i32 stock)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void refresh_food_stock(1: i32 food_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void use_coupon(1: i32 coupon_id,
                    2: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 get_region_id(1:i32 entry_id,
                      2:Geohash geohash,
                      3:i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    map<i32, i32> get_region_region_group_map(1:list<i32> region_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    map<i32, i32> get_restaurant_region_map(1:list<i32> restaurant_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void add_restaurant_message(1:i32 restaurant_id,
                                2:i16 message_type,
                                3:map<string, string> info)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TCoupon generate_coupon(1:string batch_sn,
                            2:i32 remain,
                            3:Timestamp deadline,
                            4:string remarks)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void mset_activity_valid(1:list<i32> activity_ids,
                             2:bool is_valid)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void mset_activity_default(1:list<i32> activity_ids,
                               2:bool is_default)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void set_entry_director(1:i32 user_id,
                            2:TCEntryDirector update_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_activity(1:i32 activity_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    # deprecated, use save_activity instead
    i32 update_activity(1:TActivity update_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 save_activity(1: i32 activity_id,
                      2: TActivity save_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 save_dock_corp(1: i32 dock_corp_id,
                       2: TDockCorp save_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 set_restaurant_dock_corp(1: i32 restaurant_id,
                                 2: i32 corp_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void delete_dock_corp_restaurant_by_restaurant_id(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    # deprecated, use mset_food_stock_by_category instead
    void mset_food_stock(1:TFoodStock mset_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void mset_food_stock_by_category(1:i32 category_id, 2:bool is_max)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    # deprecated, use save_food / napos_save_food instead
    i32 update_food(1:TFood update_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 save_food(1: i32 food_id,
                  2: TFood t_food)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 napos_save_food(1: i32 food_id,
                        2: TFood t_food)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_food(1: i32 food_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    # deprecated use save_food_category instead
    i32 update_food_category(1:TFoodCategory update_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 save_food_category(1: i32 category_id,
                           2: TFoodCategory t_category)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_food_category(1:i32 food_category_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void set_food_category_position(1:i32 category_id,
                                    2:i32 position)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void add_food_category_attr(1:i32 category_id,
                                2:string attr)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_food_category_attr(1:i32 category_id,
                                   2:string attr)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_food_garnish_category(1:i32 food_garnish_category_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 update_food_garnish_category(1:TFoodGarnishCategory update_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<string> food_ugc_image_upload(1: i32 order_item_id,
                                       2: list<string> image_hash_list)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void process_food_ugc_image(1: i32 food_ugc_image_id,
                                2: i16 to_status,
                                3: i32 user_id,
                                4: string remark)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_garnish(1:i32 garnish_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 update_garnish(1:TGarnish update_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_garnish_category(1:i32 garnish_category_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 update_garnish_category(1:TGarnishCategory update_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 update_logo(1:TLogo update_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 new_restaurant(1:TRestaurant new_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void update_restaurant_geohash(1:i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void update_restaurant_region(1:i32 restaurant_id,
                                  2:i32 region_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void set_restaurant_status(1:i32 restaurant_id,
                               2:string status,
                               3:i32 value,
                               4:i32 user_id,
                               5:string remark,
                               6:Timestamp remind_time,
                               7:i32 corp_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void mset_restaurant_status_direct(1:list<i32> restaurant_ids,
                                       2:string status,
                                       3:i32 value,
                                       4:i32 user_id,
                                       5:string remark)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void send_restaurant_change_notice(1:i32 record_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void send_saas_change_notice(1:i32 record_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string get_free_gift_icon_by_category(1:i32 entity_category_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void add_restaurant_open_apply(1: i32 user_id,
                                   2: string applicant,
                                   3: string telephone,
                                   4: string mobilephone,
                                   5: string qq,
                                   6: i16 city_id,
                                   7: i32 entry_id,
                                   8: i64 geohash,
                                   9: string restaurant_name,
                                   10: string restaurant_address,
                                   11: string restaurant_description,
                                   12: string restaurant_url)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    bool is_reserved_restaurant_url(1: string restaurant_url)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string get_restaurant_menu_json(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string get_restaurant_menu_json_new(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void add_food_activity(1: i32 food_activity_id, 2: list<i32> food_ids, 3: list<i32> weekdays)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void clear_food_activity(1: list<i32> food_ids, 2: list<i32> weekdays)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void dismiss_food_activity(1: i32 food_activity_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string get_app_url_by_type(1: i16 type)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_seo_sm_place(1: TSeoSmQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void update_restaurant(1: i32 restaurant_id,
                           2: i32 user_id,
                           3: TRestaurant t_rst)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void overload_close_restaurant(1: list<i16> order_modes,
                                   2: list<i16> saas_statuses,
                                   3: list<i32> sms_services,
                                   4: list<i32> exculde_city_ids,
                                   5: list<i32> exculde_region_group_ids,
                                   6: list<i32> exculde_region_ids,
                                   7: list<i32> exculde_restaurant_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 get_restaurant_deliver_time(1:i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void all_restaurant_back_alive(1: Timestamp from_datetime
                                   2: list<i16> order_modes,
                                   3: list<i16> saas_statuses,
                                   4: list<i32> sms_services,
                                   5: list<i32> city_ids,
                                   6: list<i32> region_group_ids,
                                   7: list<i32> region_ids,
                                   8: list<i32> restaurant_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),


    /**
     * Apps APIs
     */
    void archive_restaurant_status()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void do_archive_restaurant_status(1:list<i32> restaurant_ids,
                                        2:Timestamp record_time)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string get_area_structure(1:i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string filter_area(1:i32 user_id,
                       2:string struct_json)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    bool saas_status_touch(1:i32 restaurant_id,
                           2:i16 change_type,
                           3:i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_recharge_custom(1:i32 restaurant_id,
                              2:i16 change_attr,
                              3:i16 change_amount,
                              4:i32 user_id,
                              5:string remark)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_set_status_custom(1:i32 restaurant_id,
                                2:i16 status_new,
                                3:string remark,
                                4:i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_set_trial(1:i32 restaurant_id,
                        2:i16 bonus,
                        3:i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_set_temp_free(1:i32 restaurant_id,
                            2:string end_date,
                            3:string remark,
                            4:i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_abandon_contract(1:string sn,
                               2:i32 user_id,
                               3:string remark)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_archive_contract(1:string sn,
                               2:i32 user_id,
                               3:string remark)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_set_contract_bonus_sent(1:string sn,
                                      2:i32 user_id,
                                      3:string remark)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_confirm_income(1:string sn,
                             2:i16 payment_type,
                             3:i32 user_id,
                             4:Timestamp rec_date,
                             5:string remark)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_check_trials(1: list<i32> restaurant_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_check_remains()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_check_temp_frees()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_check_abandons()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_check_ranking_ends()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void saas_daily_report()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 save_saas_contract_plan(1:i32 plan_id,
                                2:TSaasContractPlan t_saas_contract_plan)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_saas_contract_plan(1:TSaasContractPlanQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TSaasContractPlan> query_saas_contract_plan(
        1:TSaasContractPlanQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TSaasContractPlan get_saas_contract_plan(1:i32 plan_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string new_saas_contract_record(1:TSaasContractRecord t_record)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_saas_contract_record(1:TSaasContractRecordQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TSaasContractRecord> query_saas_contract_record(
        1:TSaasContractRecordQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCSaasStatus> query_saas_status(
        1:TSaasStatusQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_saas_status(
        1:TSaasStatusQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TSaasStatusChange> query_saas_status_change(
        1: TSaasStatusChangeQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_saas_status_change(
        1: TSaasStatusChangeQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TSaasContractRecord get_saas_contract_record(1:string sn)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TSaasContractRecord> mget_saas_contract_record(1:list<string> sns)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TSaasContractCombo get_saas_contract_combo(1:string sn)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TSaasContractCombo> mget_saas_contract_combo(1:list<string> sns)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TSaasContractCombo> query_saas_contract_combo(
        1:TSaasContractComboQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_saas_contract_combo(
        1:TSaasContractComboQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string new_saas_contract_combo(1:TSaasContractCombo t_combo)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void confirm_saas_combo_income(1:string sn,
                             2:i16 payment_type,
                             3:i32 user_id,
                             4:Timestamp rec_date,
                             5:string remark,
                             6:i32 saas_duration,
                             7:double saas_price,
                             8:i32 ranking_duration,
                             9:double ranking_price)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void stop_saas_contract_combo(1:string sn,
                                  2:i32 user_id,
                                  3:string remark)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void abandon_saas_contract_combo(1:string sn,
                                     2:i32 user_id,
                                     3:string remark)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void op_quit(1:i32 restaurant_id,
                 2:i32 admin_user_id,
                 3:string password)

    i32 new_food_activity(1:TFoodActivity new_activity)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void update_food_activity(1:i32 food_activity_id, 2:TFoodActivity activity_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 save_city(1:i32 city_id, 2:TCity t_city)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 save_area(1:i32 area_id, 2:TArea t_area)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void delete_area(1:i32 area_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 save_region(1:i32 region_id, 2:TRegion t_region)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_region(1:i32 region_id,
                       2:i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRegion> query_region(1:TRegionQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurant> query_restaurant_in_region(1:TRestaurantInRegionQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 save_entry(1:i32 entry_id,
                   2: TEntry t_entry)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 walle_count_entry(1:TWalleEntryQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TEntry> walle_query_entry(1: TWalleEntryQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TCWalleKPIStats walle_get_kpi_stats(1: TWalleKPIFilter filter_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 walle_count_online_payment_apply(
        1: TOnlinePaymentApplyQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCWalleOnlinePaymentApply> walle_query_online_payment_apply(
        1: TOnlinePaymentApplyQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 walle_new_online_payment_apply(1: i32 user_bankcard_id,
                                       2: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void walle_online_payment_approve(1: i32 record_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void walle_online_payment_overrule(1: i32 record_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),


    i32 save_district(1:i32 district_id,
                      2: TDistrict t_district)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 save_zone(1:i32 zone_id,
                  2: TZone t_zone)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_restaurant_in_region(1:TRestaurantInRegionQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TDeviceRestaurant> query_device_restaurant(1: TDeviceRestaurantQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 new_device_restaurant(1: i32 restaurant_id,
                              2: string device_id,
                              3: i16 device_type,
                              4: string eleme_guid,
                              5: string version)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_device_restaurant(1: i32 id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),


    i32 walle_get_saas_stats_count(1: TWalleFilter filter_struct,
                                   2: string group_by)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TLeanRestaurant> walle_query_restaurant(1: TRestaurantQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCRestaurantSaasStats> walle_get_saas_stats(1: TWalleFilter filter_struct,
                                                     2: string group_by,
                                                     3: string sort_key,
                                                     4: i16 sort_type,
                                                     5: i32 offset,
                                                     6: i32 limit)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string walle_get_activity_list(1: TActivityQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string walle_get_activity_list_by_ids(1: list<i32> activity_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string walle_get_logo_list(1: TLogoQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string walle_get_restaurant_list(1: TRestaurantQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCWalleRestaurantChangeRecord> walle_get_restaurant_change_records(1:i32 restaurant_id,
                                                                            2:i16 limit)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    /**
     * op is short for online_payment,
     * this api is only for eus.walle_query_online_payment_apply
     * return map<restaurant_id, restaurant_name>
     */
    map<i32, string> walle_get_op_apply_restaurants(1: list<i32> restaurant_ids,
                                                    2: list<i32> regions_ids,
                                                    3: string keyword)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    string walle_get_restaurant_list_by_ids(1: list<i32> restaurant_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 walle_save_friend_link(1:i32 friend_link_id, 2:TFriendLink t_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void walle_remove_friend_link(1:i32 friend_link_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 walle_count_friend_link(1:TFriendLinkQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFriendLink> walle_query_friend_link(1:TFriendLinkQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 walle_save_quick_message(1:i32 quick_message_id, 2:TQuickMessage t_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void walle_remove_quick_message(1:i32 quick_message_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 walle_count_quick_message(1:TQuickMessageQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TQuickMessage> walle_query_quick_message(1:TQuickMessageQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 walle_count_comment_reply(
        1:TWalleCommentReplyQuery query_struct
    )
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCWalleCommentReply> walle_query_comment_reply(
        1:TWalleCommentReplyQuery query_struct
    )
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void walle_set_comment_reply_valid(1:i32 reply_id,
                                       2:i16 is_valid)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 walle_count_restaurant_comment(
        1:TWalleRestaurantCommentQuery query_struct
    )
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCWalleRestaurantComment> walle_query_restaurant_comment(
        1:TWalleRestaurantCommentQuery query_struct
    )
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void walle_set_restaurant_comment_valid(1:i32 comment_id,
                                            2:i16 is_valid)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void walle_reply_restaurant_comment(1:i32 comment_id,
                                        2:i32 user_id,
                                        3:string content)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void mset_restaurant_open_apply_status(1: list<i32> ids, 2: i16 status)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void napos_restaurant_promotion_save(1: i32 promotion_id,
                                         2: TRestaurantPromotion t_promotion)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 napos_count_comments(1: TNaposCommentQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCCommentWithReplies> napos_query_comments(
        1: TNaposCommentQuery query_struct
        )
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRestaurantMessage napos_get_message(1: i32 message_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurantMessage> napos_mget_message(1: i32 restaurant_id,
                                                2: i32 offset,
                                                3: i32 limit)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 napos_count_unread_message(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurantMessage> napos_mget_unread_message(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void napos_read_message(1: i32 message_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void mset_operation_remind_status(1: list<i32> or_ids, 2: i16 status)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    /**
     * Inner APIs
     */
    void revert_use_coupon(1: i32 coupon_id,
                           2: i32 restaurant_id,
                           3: i64 order_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void revert_decr_foods_stock(1: i64 order_id,
                                 2: FoodStockMap food_stock_map)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void process_saas_status_touch(1: i64 order_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),


    void process_post_bankcard_bind_approve(1: i32 restaurant_id,
                                            2: Timestamp timestamp)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void mset_tuesday_half_price_food_stock(1: bool is_max)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void reset_half_price_food_stock_by_category(1: string unique_week,
                                                 2: i32 category_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void process_remove_market_staff(1:i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void refresh_flavors_by_restaurant(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void refresh_all_restaurants_geohash_name_payment()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    # the calculation of popularity and rating is based on food.recent_popularity and food.num_rating_(1-5)
    # so this task should be croned after eos.check_or_update_food_popularity_rating
    void check_or_update_restaurant_popularity_rating(1:i32 restaurant_id,
                                                      2:i32 recent_popularity,
                                                      3:list<i32> recent_num_ratings)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void set_delete_region_task_status(1: i64 dl_region_id,
                                       2: i16 status)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void set_update_region_task_status(1: i64 cl_region_id,
                                       2: i16 status)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TDeletelogRegion> get_delete_region_post_geos_task()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TChangelogRegion> get_update_region_post_geos_task()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void send_update_restaurant_evaluation_task()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void refresh_system_ranking_weight(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void daily_clear_restaurant_menu_cache()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void semi_send_update_restaurant_evaluation_task(1: i32 offset,
                                                     2: i32 limit)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void update_restaurant_evaluation(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void notify_napos_mobile_to_sync(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    /**
     * Query APIs
     */
    TRestaurant get(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    # TODO change to map
    list<TRestaurant> mget(1: list<i32> restaurant_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRestaurant master_get(1: i32 id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRestaurant get_by_wireless_printer_esn(1: string esn)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TAppCampaign get_app_campaign_by_sn(1: string sn)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRestaurantBankcard get_bankcard(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurantBankcard> mget_bankcard(1: list<i32> restaurant_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 update_bankcard(1: TRestaurantBankcard update_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_bankcard(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRestaurant get_by_mobile(1: string mobile)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRestaurant get_by_admin(1: i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    # deprecated, use query_open_apply instead
    TRestaurantOpenApply get_open_apply_by_admin(1: i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRestaurantOpenApply get_open_apply(1: i32 id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurantOpenApply> query_restaurant_open_apply(1: TRestaurantOpenApplyQuery t_open_apply)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_restaurant_open_apply(1: TRestaurantOpenApplyQuery t_open_apply)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRestaurant get_by_name_for_url(1: string name_for_url)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TEntry get_entry(1: i32 entry_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TEntry> mget_entry(1: list<i32> ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TEntry get_entry_by_sn(1: string sn)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TEntry> query_entry(1: TEntryQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TDistrict get_district(1: i32 district_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TDistrict> query_district(1: TDistrictQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TZone get_zone(1: i32 zone_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TZone> query_zone(1: TZoneQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TCEntryDirector get_entry_director(1:i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRegion get_region(1: i32 region_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRegion master_get_region(1: i32 region_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    map<i32, TRegion> mget_region(1: list<i32> region_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRegion get_region_by_entry(1: i32 entry_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRegion get_region_by_restaurant(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRegionGroup get_region_group(1: i32 region_group_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    map<i32, TRegionGroup> mget_region_group(1: list<i32> region_group_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRegionGroup get_region_group_by_region(1: i32 region_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_region_group(1: TRegionGroupQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRegionGroup> query_region_group(1: TRegionGroupQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 save_region_group(1: i32 region_group_id,
                          2: TRegionGroup region_group)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void remove_region_group(1: i32 region_group_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void update_region_group_region(1: i32 region_group_id,
                                    2: i32 region_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRegion> get_regions_by_region_group_ids(1: list<i32> region_group_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TActivity get_activity(1: i32 activity_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TActivity> mget_activity(1: list<i32> activity_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TCity get_city(1: i32 city_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    map<i32, TCity> mget_city(1: list<i32> city_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TCity get_city_by_region(1: i32 region_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TCity get_city_by_region_group(1: i32 region_group_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TCity get_city_by_code(1: i32 district_code)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCity> query_city(1: TCityQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TFood get_food(1: i32 food_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TFood get_food_by_sn(1: string sn)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TFood master_get_food(1: i32 food_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFood> mget_food(1: list<i32> food_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TFoodCategory get_food_category(1: i32 food_category_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TFoodCategory master_get_food_category(1: i32 food_category_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFoodCategory> mget_food_category(1: list<i32> food_category_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TFoodUgcImage get_food_ugc_image(1: i32 food_ugc_image_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TFoodUgcImage get_food_ugc_image_by_sn(1: string sn)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TFoodUgcImage get_food_ugc_image_by_order_item_id(1: i32 order_item_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    # date: %Y-%m-%d
    list<TFoodUgcImage> query_food_ugc_image_by_user_id(1: i32 user_id,
                                                        2: string date,
                                                        3: i32 max_day)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_food_ugc_image(1: TFoodUgcImageQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFoodUgcImage> query_food_ugc_image(1: TFoodUgcImageQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_food_ugc_image_cover(1: TFoodUgcImageCoverQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFoodUgcImageCover> query_food_ugc_image_cover(1: TFoodUgcImageCoverQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TGarnish> mget_garnish(1: list<i32> garnish_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TGarnish> mget_garnish_by_food(1: i32 food_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFoodFlavor> mget_food_flavor_by_food_ids(1: list<i32> food_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TGarnishCategory get_garnish_category(1: i32 garnish_category_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TGarnishCategory> mget_garnish_category(1: list<i32> garnish_category_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TGarnishCategory> mget_garnish_category_by_food(1: i32 food_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TActivity> query_activity(1: TActivityQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TActivity get_activity_by_sn(1: string sn)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<i32> get_activity_ids_by_geohash(1: Geohash geohash)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TDockCorp get_dock_corp(1: i32 id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TDockCorp get_dock_corp_by_restaurant(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TDockCorp> mget_dock_corp(1: list<i32> ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_dock_corp(1: TDockCorpQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TDockCorp> query_dock_corp(1: TDockCorpQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TDockCorp query_dock_corp_by_restaurant_id(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TDockCorpRestaurant get_dock_corp_restaurant(1: i32 id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TDockCorpRestaurant> mget_dock_corp_restaurant(1: i32 ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TDockCorpRestaurant> query_dock_corp_restaurant(
        1: list<i32> corp_ids,
        2: list<i32> restaurant_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TLogo get_logo(1: i32 logo_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TLogo> mget_logo(1: list<i32> logo_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TLogo> get_current_logo()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<i32> get_location_by_restaurant(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<i32> get_location_by_region(1: i32 region_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TCoupon get_coupon_by_sn(1:string sn)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TFreeGiftActivity get_free_gift_activity(1: i32 free_gift_activity_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFreeGiftActivity> mget_free_gift_activity(1: list<i32> free_gift_activity_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFreeGiftActivity> mget_free_gift_activity_list()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFreeGiftActivity> mget_free_gift_activity_by_attributes(1:list<string> attrs)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurant> query_by_entry(1: i32 entry_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurant> query_premium_by_entry(1: i32 entry_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TLeanRestaurant> query_premium_by_geohash2(1: Geohash geohash, 2: i32 offset, 3: i32 limit)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_premium_by_geohash(1: Geohash geohash)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurant> query_bookable_by_entry(1: i32 entry_id,
                                              2: string deliver_time)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurant> query_favor_by_geohash(1: i32 user_id,
                                             2: Geohash geohash)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurant> query_favor_by_entry(1: i32 user_id,
                                           2: i32 entry_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<i32> query_favor_ids(1: i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurant> query_favor(1: i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurant> query_by_geohash(1: Geohash geohash, 2: i32 offset, 3: i32 limit)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TLeanRestaurant> query_by_geohash2(1: Geohash geohash, 2: i32 offset, 3: i32 limit)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurant> query_bookable_by_geohash2(1: Geohash geohash,
                                                2: string deliver_time)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<i32> query_favor_food_ids_by_restaurant(1: i32 user_id,
                                                 2: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<i32> query_favor_food_ids_by_user(1: i32 user_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFood> query_favor_food_by_user(1: i32 user_id,
                                         2: i32 offset,
                                         3: i32 limit)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFood> query_food(1: TFoodQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFood> query_food_by_restaurant(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFoodCategory> query_food_category(1: TFoodCategoryQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFoodGarnishCategory> query_food_garnish_category(
        1: TFoodGarnishCategoryQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFoodCategory> query_food_category_by_restaurant(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TGarnish> query_garnish(1: TGarnishQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TGarnishCategory> query_garnish_category(1: TGarnishCategoryQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRestaurantComment get_comment(1: i32 comment_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TEntry> query_entry_by_restaurant(1:i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFood> query_hot_food_by_entry(1:i32 entry_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFood> query_hot_food_by_geohash(1:Geohash geohash)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFood> query_hot_food_by_restaurant(1: i32 restaurant_id, 2: i32 limit)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCCommentWithReplies> query_comment_with_replies(
        1:TRestaurantCommentQuery query_struct
        )
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurantComment> query_all_comment(
        1:TRestaurantCommentQuery query_struct
        )
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 get_director_id(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurantFlavor> query_restaurant_flavor_by_restaurant_id(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFreeGiftActivity> query_free_gift_activity(1:TFreeGiftActivityQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFoodActivity> query_food_activity(1:TFoodActivityQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_food_activity(1:TFoodActivityQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TFoodActivity get_food_activity(1:i32 food_activity_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFoodActivity> mget_food_activity(1:list<i32> food_activity_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    map<i32, i32> get_food_activity_id_map(1:list<i32> food_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    map<i32, map<i32, i32>> get_weekday_food_activity_id_map(1: list<i32> food_ids, 2: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCFoodActivityWithRestaurantIds> get_food_activity_with_restaurant_ids(1:list<i32> restaurant_ids, 2:list<i32> weekdays)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TAmendedPoi> query_amended_poi(1: i32 city_id, 2: string keyword)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<string> get_free_gift_activity_attribute_name_by_category(1:i32 category_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCFoodCategoryWithFoods> query_food_category_with_foods(1:i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TCoupon get_coupon(1: i32 coupon_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFood> query_gum_food_by_restaurant(1:i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRestaurantPromotion get_restaurant_promotion(1:i32 promotion_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurantPromotion> query_restaurant_promotion(1:i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TChangelogRestaurant master_get_changelog_restaurant(1: i32 cl_rst_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TChangelogRegion master_get_changelog_region(1: i32 cl_region_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TDeletelogRegion master_get_deletelog_region(1: i32 dl_region_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TSeoSmPlace> query_seo_sm_place(1: TSeoSmQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TSeoSmRestaurant> query_seo_sm_restaurant(1: TSeoSmQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TSeoSmCityIndex> query_seo_sm_city_index(1: TSeoSmCityIndexQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TSeoSmIndex get_seo_sm_index_by_name(1: string name)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TSaasStatus get_saas_status(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_operation_remind(1: TOperationRemindQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCOperationRemind> query_operation_remind(1: TOperationRemindQuery query_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TQuickMessage get_quick_message(1: i32 quick_message_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TFriendLink get_friend_link(1: i32 friend_link_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TFriendLink> query_friend_link()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    i32 count_favored_user(1:i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TCFavoredUser> mget_favored_user(1:i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TArea> query_area_by_square(
        1: double lt_latitude,
        2: double lt_longitude,
        3: double rb_latitude,
        4: double rb_longitude
    )
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    TRestaurantEvaluation get_evaluation(1: i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    list<TRestaurant> query_by_mobile(1: Mobile mobile)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),


    TWhitelist query_close_restaurant_whitelist()
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void save_close_restaurant_whitelist(1: TWhitelist whitelist_struct)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),


    i32 get_restaurant_setup_step(1:i32 restaurant_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void set_restaurant_setup_step(1:i32 restaurant_id,
                                   2:i32 step)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),


    #####
    # Signal APIs
    #####

    void signal_post_make_order(1: i64 order_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void signal_post_process_order(1: i32 order_process_record_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void signal_update_restaurant(1: list<i32> restaurant_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void signal_menu_clear_cache(1: list<i32> restaurant_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void signal_update_food_activity(1: list<i32> food_activity_ids)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),

    void signal_post_process_food_ugc_image(1: i32 process_food_ugc_image_pr_id)
        throws (1: ERSUserException user_exception,
                2: ERSSystemException system_exception,
                3: ERSUnknownException unknown_exception),
}
