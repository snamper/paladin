# define oas service
namespace php OAS
namespace py oas

/**
 * Const
 */
const i16 DEFAULT_LIST_SIZE = 20
const i16 MAX_LIST_SIZE = 200

/**
 * Enums
 */
enum AppVersionConst {
    TYPE_ANDROID = 1,
    TYPE_IOS = 2,
    TYPE_NAPOS_ANDROID = 3,
}

/**
 * Types and Structs
 */
typedef i64 Timestamp
typedef string Json

struct TApplication {
    1: required i32 id,
    2: required i32 limits,
    3: required string consumer_key,
    4: required string consumer_secret,
    # TODO sort params later
    5: required i32 developer_id,
    6: required string name,
    7: required string description,
    8: required i32 group_id,
}

struct TApiGroup {
    1: required i32 id,
    2: required string name,
    3: required string description,
}

struct TApiPermission {
    1: required i32 id,
    2: required string name,
    3: required string description,
}

struct TApiGroupPermission {
    1: required i32 id,
    2: required i32 group_id,
    3: required i32 permission_id,
}

struct TAppVersion {
    1: required i32 id,
    2: required i16 version,
    3: required string version_name,
    4: required double size,
    5: required string time,
    6: required i16 type,
    7: required string url,
    8: required string description,
    9: required i16 level,
}

struct TApiAppBind {
    1: required i32 id,
    2: required i32 app_id,
    3: required i32 bind_id,
    4: required string bind_type,
}

struct TApiAppBindQuery {
    1: optional i32 limit,
    2: optional i32 offset,
    3: optional i32 app_id,
    4: optional i32 bind_id,
    5: optional string bind_type,
}

/**
 * Exceptions
 */
enum OASErrorCode {
    UNKNOWN_ERROR,

    // User Errors
    APPLICATION_NOT_FOUND,
    API_GROUP_NOT_FOUND,
    API_PERMISSION_NOT_FOUND,

    // System Errors
    DATABASE_ERROR,
}

exception OASUserException {
    1: required OASErrorCode error_code,
    2: required string error_name,
    3: optional string message,
}

exception OASSystemException {
    1: required OASErrorCode error_code,
    2: required string error_name,
    3: optional string message,
}

exception OASUnknownException {
    1: required OASErrorCode error_code,
    2: required string error_name,
    3: required string message,
}


/**
 * Services
 */
service OpenAPIService {
    /**
     * Base APIs
     */

    bool ping()
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    void clear_cache(1:string api_name,
                     2:list<string> params)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    i32 save_api_app_bind(1:i32 api_app_bind_id,
                          2:TApiAppBind save_struct)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    void delete_api_app_bind(1:i32 api_app_bind_id)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    /**
     * Apps APIs
     */

    # deprecated
    Json mobile_get_app_permissions()
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    # deprecated
    Json mobile_get_app_binds()
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    TAppVersion mobile_get_latest_app(1:i16 app_type)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    /**
     * Inner APIs
     */

    /**
     * Query APIs
     */

    TApplication get(1: i32 app_id)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    TApplication get_application(1: string consumer_key)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    list<TApplication> query_all_application()
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    list<TApiGroupPermission> query_all_api_group_permission()
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    TApiGroup get_api_group(1: i32 api_group_id)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    list<TApiGroup> mget_api_group(1: list<i32> api_group_ids)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    TApiPermission get_api_permission(1: i32 api_permission_id)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    list<TApiPermission> mget_api_permission(1: list<i32> api_permission_ids)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    bool check_api_permission(1: string consumer_key,
                              2: string permission_name)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    list<i32> query_app_bind_ids(1: i32 app_id,
                                 2: string bind_type)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    i32 count_api_app_bind(1:TApiAppBindQuery query_struct)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

    list<TApiAppBind> query_api_app_bind(1:TApiAppBindQuery query_struct)
        throws (1: OASUserException user_exception,
                2: OASSystemException system_exception,
                3: OASUnknownException unkown_exception),

}
