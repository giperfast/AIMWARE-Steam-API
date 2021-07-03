ffi.cdef[[
	typedef struct {
		void* steam_client;
		void* steam_user;
		void* steam_friends;
		void* steam_utils;
		void* steam_matchmaking;
		void* steam_user_stats;
		void* steam_apps;
		void* steam_matchmakingservers;
		void* steam_networking;
		void* steam_remotestorage;
		void* steam_screenshots;
		void* steam_http;
        void* steam_unidentifiedmessages;
        void* steam_controller;
        void* steam_ugc;
        void* steam_applist;
        void* steam_music;
        void* steam_musicremote;
        void* steam_htmlsurface;
        void* steam_inventory;
        void* steam_video;
    } steam_api_ctx_t;
    typedef unsigned char uint8;
    typedef uint16_t uint16;
    typedef uint32_t uint32;
    typedef uint64_t uint64;
    typedef signed char int8;
    typedef int16_t int16;
    typedef int32_t int32;
    typedef int64_t int64;
	typedef int EUniverse;
	typedef int ENotificationPosition;
	typedef int ESteamAPICallFailure;
	typedef int EGamepadTextInputMode;
	typedef int EGamepadTextInputLineMode;
	typedef int ELobbyComparison;
	typedef int ELobbyDistanceFilter;
	typedef int ELobbyType;
	typedef int EAccountType;
	typedef int EChatEntryType;
	typedef int EVoiceResult;
	typedef int EBeginAuthSessionResult;
	typedef int EUserHasLicenseForAppResult;
	typedef int ELeaderboardSortMethod;
	typedef int ELeaderboardDisplayType;
	typedef int ELeaderboardDataRequest;
	typedef int ELeaderboardUploadScoreMethod;
	typedef int EPersonaState;
	typedef int EFriendRelationship;
	typedef int EActivateGameOverlayToWebPageMode;
	typedef int EOverlayToStoreFlag;
	typedef int EP2PSend;
	typedef int ESNetSocketConnectionType;
	typedef int ERemoteStoragePlatform;
	typedef int EUGCReadAction;
	typedef int ERemoteStoragePublishedFileVisibility;
	typedef int EWorkshopFileType;
	typedef int EWorkshopVideoProvider;
	typedef int EWorkshopFileAction;
	typedef int EWorkshopEnumerationType;
	typedef int EVRScreenshotType;
	typedef int EHTTPMethod;
	typedef int EControllerActionOrigin;
	typedef int ESteamControllerPad;
	typedef int ESteamInputType;
	typedef int EXboxOrigin;
	typedef int EUserUGCList;
	typedef int EUGCMatchingUGCType;
	typedef int EUserUGCListSortOrder;
	typedef int EUGCQuery;
	typedef int EResult;
	typedef int EItemStatistic;
	typedef int EItemPreviewType;
	typedef int EItemUpdateStatus;
	typedef int AudioPlayback_Status;
	typedef int EHTMLMouseButton;
	typedef int EHTMLKeyModifiers;
	typedef int HServerQuery;
	typedef int16 FriendsGroupID_t;
	typedef int32 SteamInventoryResult_t;
	typedef int32 SteamItemDef_t;
	typedef uint32 HSteamPipe;
	typedef uint32 HSteamUser;
	typedef uint32 HAuthTicket;
	typedef uint32 HHTMLBrowser;
	typedef uint32 DepotId_t;
	typedef uint32 AccountID_t;
	typedef uint32 RTime32;
	typedef uint32 AppId_t;
	typedef uint32 SNetSocket_t;
	typedef uint32 SNetListenSocket_t;
	typedef uint32 ScreenshotHandle;
	typedef uint32 HTTPRequestHandle;
	typedef uint32 HTTPCookieContainerHandle;
	typedef uint64 SteamAPICall_t;
	typedef uint64 SteamLeaderboard_t;
	typedef uint64 SteamLeaderboardEntries_t;
	typedef uint64 UGCHandle_t;
	typedef uint64 UGCQueryHandle_t;
	typedef uint64 UGCUpdateHandle_t;
	typedef uint64 UGCFileWriteStreamHandle_t;
	typedef uint64 PublishedFileUpdateHandle_t;
	typedef uint64 PublishedFileId_t;
	typedef uint64 ControllerHandle_t;
	typedef uint64 ControllerActionSetHandle_t;
	typedef uint64 ControllerDigitalActionHandle_t;
	typedef uint64 ControllerAnalogActionHandle_t;
	typedef uint64 SteamItemInstanceID_t;
	typedef uint64 SteamInventoryUpdateHandle_t;
	typedef uint64 CSteamID;
	typedef uint64 CGameID;
	typedef void* HServerListRequest;
	typedef void* ISteamMatchmakingServerListResponse;
	typedef void* ISteamMatchmakingPingResponse;
	typedef void* ISteamMatchmakingPlayersResponse;
	typedef void* ISteamMatchmakingRulesResponse;
	typedef void* gameserveritem_t;
	typedef void* ISteamUser;
	typedef void* ISteamGameServer;
	typedef void* ISteamFriends;
	typedef void* ISteamUtils;
	typedef void* ISteamMatchmaking;
	typedef void* ISteamMatchmakingServers;
	typedef void* ISteamUserStats;
	typedef void* ISteamGameServerStats;
	typedef void* ISteamApps;
	typedef void* ISteamNetworking;
	typedef void* ISteamRemoteStorage;
	typedef void* ISteamScreenshots;
	typedef void* ISteamGameSearch;
	typedef void* ISteamHTTP;
	typedef void* ISteamController;
	typedef void* ISteamUGC;
	typedef void* ISteamAppList;
	typedef void* ISteamMusic;
	typedef void* ISteamMusicRemote;
	typedef void* ISteamHTMLSurface;
	typedef void* ISteamInventory;
	typedef void* ISteamVideo;
	typedef void* ISteamParentalSettings;
	typedef void* ISteamInput;
	typedef void* ISteamParties;
    typedef void (__cdecl *SteamAPIWarningMessageHook_t)(int, const char *);
    typedef struct _MatchMakingKeyValuePair_t {
        char m_szKey[ 256 ];
        char m_szValue[ 256 ];
    } MatchMakingKeyValuePair_t;
    typedef struct _FriendGameInfo_t {
    	CGameID m_gameID;
    	uint32 m_unGameIP;
    	uint16 m_usGamePort;
    	uint16 m_usQueryPort;
    	CSteamID m_steamIDLobby;
    } FriendGameInfo_t;
    typedef struct _P2PSessionState_t {
    	uint8 m_bConnectionActive;		
    	uint8 m_bConnecting;			
    	uint8 m_eP2PSessionError;		
    	uint8 m_bUsingRelay;			
    	int32 m_nBytesQueuedForSend;
    	int32 m_nPacketsQueuedForSend;
    	uint32 m_nRemoteIP;				
    	uint16 m_nRemotePort;			
    } P2PSessionState_t;
    typedef struct _SteamParamStringArray_t {
        const char ** m_ppStrings;
        int32 m_nNumStrings;
    } SteamParamStringArray_t;
    typedef struct _InputMotionData_t {
    	float rotQuatX;
    	float rotQuatY;
    	float rotQuatZ;
    	float rotQuatW;
    	float posAccelX;
    	float posAccelY;
    	float posAccelZ;
    	float rotVelX;
    	float rotVelY;
    	float rotVelZ;
    } InputMotionData_t;
    typedef InputMotionData_t ControllerMotionData_t;
    typedef struct _SteamUGCDetails_t {
        PublishedFileId_t m_nPublishedFileId;
        EResult m_eResult;
        EWorkshopFileType m_eFileType;
        AppId_t m_nCreatorAppID;
        AppId_t m_nConsumerAppID;
        char m_rgchTitle[129];
        char m_rgchDescription[8000];
        uint64 m_ulSteamIDOwner;
        uint32 m_rtimeCreated;
        uint32 m_rtimeUpdated;
        uint32 m_rtimeAddedToUserList;
        ERemoteStoragePublishedFileVisibility m_eVisibility;
        bool m_bBanned;
        bool m_bAcceptedForUse;
        bool m_bTagsTruncated;
        char m_rgchTags[1025];
        UGCHandle_t m_hFile;
        UGCHandle_t m_hPreviewFile;
        char m_pchFileName[260];
        int32 m_nFileSize;
        int32 m_nPreviewFileSize;
        char m_rgchURL[256];
        uint32 m_unVotesUp;
        uint32 m_unVotesDown;
        float m_flScore;
        uint32 m_unNumChildren;
	} SteamUGCDetails_t;
	typedef struct _LeaderboardEntry_t {
		CSteamID m_steamIDUser;
		int m_nGlobalRank;
		int m_nScore;
		int m_cDetails;
		UGCHandle_t m_hUGC;
	} LeaderboardEntry_t;
	typedef struct _ControllerDigitalActionData_t {
		unsigned char bState;
		unsigned char bActive;
	} ControllerDigitalActionData_t;
	typedef struct _ControllerAnalogActionData_t {
		unsigned char bActive;
		int eMode;
		float x;
		float y;
	} ControllerAnalogActionData_t;
]]
local helper = {}
local interface = {}
local seen = {}
local iface_ptr = ffi.typeof('void***')
local char_ptr = ffi.typeof('char*')
local nullptr = ffi.new('void*')
local function iFaceCast(raw)
    return ffi.cast(iface_ptr, raw)
end
local function IsValidPtr(p)
    return p ~= nullptr and p or nil
end
local function GetAdressOf(raw)
    return ffi.cast('int*', raw)[0]
end
local function functionCast(thisptr, index, typedef, tdef)
    local vtblptr = thisptr[0]
    if IsValidPtr(vtblptr) then
        local fnptr = vtblptr[index]
        if IsValidPtr(fnptr) then
            local ret = ffi.cast(typedef, fnptr)
            if IsValidPtr(ret) then
                return ret
            end
            error('functionCast: couldn\'t cast function typedef: ' ..tdef)
        end
        error('functionCast: function pointer is invalid, index might be wrong typedef: ' .. tdef)
    end
    error("functionCast: virtual table pointer is invalid, thisptr might be invalid typedef: " .. tdef)
end
local function CheckOrCreateTypedef(tdef)
    if seen[tdef] then
        return seen[tdef]
    end
    local success, typedef = pcall(ffi.typeof, tdef)
    if not success then
        error("error while creating typedef for " ..  tdef .. "\n\t\t\terror: " .. typedef)
    end
    seen[tdef] = typedef
    return typedef
end
function interface.GetVFunction(self, index, tdef)
    local thisptr = self[1]
    if IsValidPtr(thisptr) then
        local typedef = CheckOrCreateTypedef(tdef)
        local fn = functionCast(thisptr, index, typedef, tdef)
        if not IsValidPtr(fn) then
            error("GetVFunction: couldnt cast function (" .. index .. ")")
        end
        return function(...)
            return fn(thisptr, ...)
        end
    end
    error('GetVFunction: thisptr is invalid')
end
function helper.GetClass(raw, module)
    if IsValidPtr(raw) then 
        local ptr = iFaceCast(raw)
        if IsValidPtr(ptr) then 
            return setmetatable({ptr, module}, {__index = interface})
        else
            error("GetClass: class pointer is invalid")
        end
    end
    error("GetClass: argument is nullptr")
end
function helper.FindPattern(module, pattern, tdef, offset)
    local match = mem.FindPattern(module, pattern)
    if IsValidPtr(match) then 
        if offset then 
            match = ffi.cast("char*", match) + offset
            if not IsValidPtr(match) then
                error("FindPattern: adding offset ("..offset..") returned nullptr", 2)
            end
        end
        local typedef = CheckOrCreateTypedef(tdef)
        local fn = ffi.cast(typedef, match)
        if IsValidPtr(fn) then
            return fn
        end
        error("FindPattern: couldnt cast function ("..tdef..")")
    end
    error("FindPattern: couldnt find pattern ("..pattern..")")
end
local steam_api = helper.FindPattern("client.dll", "FF 15 ?? ?? ?? ?? B9 ?? ?? ?? ?? E8 ?? ?? ?? ?? 6A", "steam_api_ctx_t**", 7)[0]

local class = {
    steam_client = helper.GetClass(steam_api.steam_client),
    steam_utils = helper.GetClass(steam_api.steam_utils),
    steam_matchmaking = helper.GetClass(steam_api.steam_matchmaking),
    steam_user = helper.GetClass(steam_api.steam_user),
    steam_user_stats = helper.GetClass(steam_api.steam_user_stats),
    steam_friends = helper.GetClass(steam_api.steam_friends),
    steam_apps = helper.GetClass(steam_api.steam_apps),
    steam_matchmakingservers = helper.GetClass(steam_api.steam_matchmakingservers),
    steam_networking = helper.GetClass(steam_api.steam_networking),
    steam_remotestorage = helper.GetClass(steam_api.steam_remotestorage),
    steam_screenshots = helper.GetClass(steam_api.steam_screenshots),
    steam_http = helper.GetClass(steam_api.steam_http),
    steam_controller = helper.GetClass(steam_api.steam_controller),
    steam_ugc = helper.GetClass(steam_api.steam_ugc),
    steam_applist = helper.GetClass(steam_api.steam_applist),
    steam_music = helper.GetClass(steam_api.steam_music),
    steam_musicremote = helper.GetClass(steam_api.steam_musicremote),
    steam_htmlsurface = helper.GetClass(steam_api.steam_htmlsurface),
    steam_inventory = helper.GetClass(steam_api.steam_inventory),
    steam_video = helper.GetClass(steam_api.steam_video),
}
ISteamClient =  {
    CreateSteamPipe = class.steam_client:GetVFunction(0, "HSteamPipe(__thiscall*)(void*)"),
    BReleaseSteamPipe = class.steam_client:GetVFunction(1, "bool(__thiscall*)(void*, HSteamPipe)"),
    ConnectToGlobalUser = class.steam_client:GetVFunction(2, "HSteamUser(__thiscall*)(void*, HSteamPipe)"),
    CreateLocalUser = class.steam_client:GetVFunction(3, "HSteamUser(__thiscall*)(void*, HSteamPipe*, EAccountType)"),
    ReleaseUser = class.steam_client:GetVFunction(4, "void(__thiscall*)(void*, HSteamPipe, HSteamUser)"),
    GetISteamUser = class.steam_client:GetVFunction(5, "ISteamUser*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamGameServer = class.steam_client:GetVFunction(6, "ISteamGameServer*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    SetLocalIPBinding = class.steam_client:GetVFunction(7, "void(__thiscall*)(void*, uint32, uint16)"),
	GetISteamFriends = class.steam_client:GetVFunction(8, "ISteamFriends*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
	GetISteamUtils = class.steam_client:GetVFunction(9, "ISteamUtils*(__thiscall*)(void*, HSteamPipe, const char*)"),
    GetISteamMatchmaking = class.steam_client:GetVFunction(10, "ISteamMatchmaking*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamMatchmakingServers = class.steam_client:GetVFunction(11, "ISteamMatchmakingServers*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamGenericInterface = class.steam_client:GetVFunction(12, "void*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamUserStats = class.steam_client:GetVFunction(13, "ISteamUserStats*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamGameServerStats = class.steam_client:GetVFunction(14, "ISteamGameServerStats*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamApps = class.steam_client:GetVFunction(15, "ISteamApps*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamNetworking = class.steam_client:GetVFunction(16, "ISteamNetworking*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamRemoteStorage = class.steam_client:GetVFunction(17, "ISteamRemoteStorage*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamScreenshots = class.steam_client:GetVFunction(18, "ISteamScreenshots*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamGameSearch = class.steam_client:GetVFunction(19, "ISteamGameSearch*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetIPCCallCount = class.steam_client:GetVFunction(20, "uint32(__thiscall*)(void*)"),
    SetWarningMessageHook = class.steam_client:GetVFunction(21, "void(__thiscall*)(void*, SteamAPIWarningMessageHook_t)"),
    BShutdownIfAllPipesClosed = class.steam_client:GetVFunction(22, "bool(__thiscall*)(void*)"),
    GetISteamHTTP = class.steam_client:GetVFunction(23, "ISteamHTTP*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamController = class.steam_client:GetVFunction(24, "ISteamController*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamUGC = class.steam_client:GetVFunction(25, "ISteamUGC*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamAppList = class.steam_client:GetVFunction(26, "ISteamAppList*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
	GetISteamMusic = class.steam_client:GetVFunction(27, "ISteamMusic*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamMusicRemote = class.steam_client:GetVFunction(28, "ISteamMusicRemote*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamHTMLSurface = class.steam_client:GetVFunction(29, "ISteamHTMLSurface*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
	GetISteamInventory = class.steam_client:GetVFunction(30, "ISteamInventory*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
	GetISteamVideo = class.steam_client:GetVFunction(31, "ISteamVideo*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
    GetISteamParentalSettings = class.steam_client:GetVFunction(32, "ISteamParentalSettings*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
	GetISteamInput = class.steam_client:GetVFunction(33, "ISteamInput*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
	GetISteamParties = class.steam_client:GetVFunction(34, "ISteamParties*(__thiscall*)(void*, HSteamUser, HSteamPipe, const char*)"),
}
ISteamUtils = {
	GetSecondsSinceAppActive = class.steam_utils:GetVFunction(0, 'uint32(__thiscall*)(void*)'),
	GetSecondsSinceComputerActive = class.steam_utils:GetVFunction(1, 'uint32(__thiscall*)(void*)'),
	GetConnectedUniverse = class.steam_utils:GetVFunction(2, 'EUniverse(__thiscall*)(void*)'),
	GetServerRealTime = class.steam_utils:GetVFunction(3, 'uint32(__thiscall*)(void*)'),
	GetIPCountry = class.steam_utils:GetVFunction(4, 'const char*(__thiscall*)(void*)'),
	GetImageSize = class.steam_utils:GetVFunction(5, 'bool(__thiscall*)(void*, int, uint32*, uint32*)'),
	GetImageRGBA = class.steam_utils:GetVFunction(6, 'bool(__thiscall*)(void*, int, uint8*, int)'),
	GetCSERIPPort = class.steam_utils:GetVFunction(7, 'bool(__thiscall*)(void*, uint32*, uint16*)'),
	GetCurrentBatteryPower = class.steam_utils:GetVFunction(8, 'uint8(__thiscall*)(void*)'),
	GetAppID = class.steam_utils:GetVFunction(9, 'uint32(__thiscall*)(void*)'),
	SetOverlayNotificationPosition = class.steam_utils:GetVFunction(10, 'void(__thiscall*)(void*, ENotificationPosition)'),
	IsAPICallCompleted = class.steam_utils:GetVFunction(11, 'bool(__thiscall*)(void*, SteamAPICall_t, bool*)'),
	GetAPICallFailureReason = class.steam_utils:GetVFunction(12, 'ESteamAPICallFailure(__thiscall*)(void*, SteamAPICall_t)'),
	GetAPICallResult = class.steam_utils:GetVFunction(13, 'bool(__thiscall*)(void*, SteamAPICall_t, void*, int, int, bool*)'),
	GetIPCCallCount = class.steam_utils:GetVFunction(15, 'uint32(__thiscall*)(void*)'),
	SetWarningMessageHook = class.steam_utils:GetVFunction(16, 'void(__thiscall*)(void*, SteamAPIWarningMessageHook_t)'),
	IsOverlayEnabled = class.steam_utils:GetVFunction(17, 'bool(__thiscall*)(void*)'),
	BOverlayNeedsPresent = class.steam_utils:GetVFunction(18, 'bool(__thiscall*)(void*)'),
	CheckFileSignature = class.steam_utils:GetVFunction(19, 'SteamAPICall_t(__thiscall*)(void*, const char*)'),
	ShowGamepadTextInput = class.steam_utils:GetVFunction(20, 'bool(__thiscall*)(void*, EGamepadTextInputMode, EGamepadTextInputLineMode, const char*, uint32, const char*)'),
	GetEnteredGamepadTextLength = class.steam_utils:GetVFunction(21, 'uint32(__thiscall*)(void*)'),
	GetEnteredGamepadTextInput = class.steam_utils:GetVFunction(22, 'bool(__thiscall*)(void*, char*, uint32)'),
	GetSteamUILanguage = class.steam_utils:GetVFunction(23, 'const char*(__thiscall*)(void*)'),
	IsSteamRunningInVR = class.steam_utils:GetVFunction(24, 'bool(__thiscall*)(void*)'),
	SetOverlayNotificationInset = class.steam_utils:GetVFunction(25, 'void(__thiscall*)(void*, int, int)'),
	IsSteamInBigPictureMode = class.steam_utils:GetVFunction(26, 'bool(__thiscall*)(void*)'),
	StartVRDashboard = class.steam_utils:GetVFunction(27, 'void(__thiscall*)(void*)'),
	IsVRHeadsetStreamingEnabled = class.steam_utils:GetVFunction(28, 'bool(__thiscall*)(void*)'),
	SetVRHeadsetStreamingEnabled = class.steam_utils:GetVFunction(29, 'void(__thiscall*)(void*, bool)'),
}
ISteamMatchmaking = {
	GetFavoriteGame = class.steam_matchmaking:GetVFunction(0, 'bool(__thiscall*)(void*, int, AppId_t*, uint32*, uint16*, uint16*, uint32*, uint32*)'),
	AddFavoriteGame = class.steam_matchmaking:GetVFunction(1, 'int(__thiscall*)(void*, AppId_t, uint32, uint16, uint16, uint32, uint32)'),
	RemoveFavoriteGame = class.steam_matchmaking:GetVFunction(2, 'bool(__thiscall*)(void*, AppId_t, uint32, uint16, uint16, uint32)'),
	RequestLobbyList = class.steam_matchmaking:GetVFunction(3, 'SteamAPICall_t(__thiscall*)(void*)'),
	AddRequestLobbyListStringFilter = class.steam_matchmaking:GetVFunction(4, 'void(__thiscall*)(void*, const char*, const char*, ELobbyComparison)'),
	AddRequestLobbyListNumericalFilter = class.steam_matchmaking:GetVFunction(5, 'void(__thiscall*)(void*, const char*, int, ELobbyComparison)'),
	AddRequestLobbyListNearValueFilter = class.steam_matchmaking:GetVFunction(6, 'void(__thiscall*)(void*, const char*, int)'),
	AddRequestLobbyListFilterSlotsAvailable = class.steam_matchmaking:GetVFunction(7, 'void(__thiscall*)(void*, int)'),
	AddRequestLobbyListDistanceFilter = class.steam_matchmaking:GetVFunction(8, 'void(__thiscall*)(void*, ELobbyDistanceFilter)'),
	AddRequestLobbyListResultCountFilter = class.steam_matchmaking:GetVFunction(9, 'void(__thiscall*)(void*, int)'),
	AddRequestLobbyListCompatibleMembersFilter = class.steam_matchmaking:GetVFunction(10, 'void(__thiscall*)(void*, CSteamID)'),
	GetLobbyByIndex = class.steam_matchmaking:GetVFunction(11, 'CSteamID(__thiscall*)(void*, int)'),
	CreateLobby = class.steam_matchmaking:GetVFunction(12, 'SteamAPICall_t(__thiscall*)(void*, ELobbyType, int)'),
	JoinLobby = class.steam_matchmaking:GetVFunction(13, 'SteamAPICall_t(__thiscall*)(void*, CSteamID)'),
	LeaveLobby = class.steam_matchmaking:GetVFunction(14, 'void(__thiscall*)(void*, CSteamID)'),
	InviteUserToLobby = class.steam_matchmaking:GetVFunction(15, 'bool(__thiscall*)(void*, CSteamID, CSteamID)'),
	GetNumLobbyMembers = class.steam_matchmaking:GetVFunction(16, 'int(__thiscall*)(void*, CSteamID)'),
	GetLobbyMemberByIndex = class.steam_matchmaking:GetVFunction(17, 'CSteamID(__thiscall*)(void*, CSteamID, int)'),
	GetLobbyData = class.steam_matchmaking:GetVFunction(18, 'const char*(__thiscall*)(void*, CSteamID, const char*)'),
	SetLobbyData = class.steam_matchmaking:GetVFunction(19, 'bool(__thiscall*)(void*, CSteamID, const char*, const char*)'),
	GetLobbyDataCount = class.steam_matchmaking:GetVFunction(20, 'int(__thiscall*)(void*, CSteamID)'),
	GetLobbyDataByIndex = class.steam_matchmaking:GetVFunction(21, 'bool(__thiscall*)(void*, CSteamID, int, char*, int, char*, int)'),
	DeleteLobbyData = class.steam_matchmaking:GetVFunction(22, 'bool(__thiscall*)(void*, CSteamID, const char*)'),
	GetLobbyMemberData = class.steam_matchmaking:GetVFunction(23, 'const char*(__thiscall*)(void*, CSteamID, CSteamID, const char*)'),
	SetLobbyMemberData = class.steam_matchmaking:GetVFunction(24, 'void(__thiscall*)(void*, CSteamID, const char*, const char*)'),
	SendLobbyChatMsg = class.steam_matchmaking:GetVFunction(25, 'bool(__thiscall*)(void*, CSteamID, const void*, int)'),
	GetLobbyChatEntry = class.steam_matchmaking:GetVFunction(26, 'int(__thiscall*)(void*, CSteamID, int, CSteamID*, void*, int, EChatEntryType*)'),
	RequestLobbyData = class.steam_matchmaking:GetVFunction(27, 'bool(__thiscall*)(void*, CSteamID)'),
	SetLobbyGameServer = class.steam_matchmaking:GetVFunction(28, 'void(__thiscall*)(void*, CSteamID, uint32, uint16, CSteamID)'),
	GetLobbyGameServer = class.steam_matchmaking:GetVFunction(29, 'bool(__thiscall*)(void*, CSteamID, uint32*, uint16*, CSteamID*)'),
	SetLobbyMemberLimit = class.steam_matchmaking:GetVFunction(30, 'bool(__thiscall*)(void*, CSteamID, int)'),
	GetLobbyMemberLimit = class.steam_matchmaking:GetVFunction(31, 'int(__thiscall*)(void*, CSteamID)'),
	SetLobbyType = class.steam_matchmaking:GetVFunction(32, 'bool(__thiscall*)(void*, CSteamID, ELobbyType)'),
	SetLobbyJoinable = class.steam_matchmaking:GetVFunction(33, 'bool(__thiscall*)(void*, CSteamID, bool)'),
	GetLobbyOwner = class.steam_matchmaking:GetVFunction(34, 'CSteamID(__thiscall*)(void*, CSteamID)'),
	SetLobbyOwner = class.steam_matchmaking:GetVFunction(35, 'bool(__thiscall*)(void*, CSteamID, CSteamID)'),
	SetLinkedLobby = class.steam_matchmaking:GetVFunction(36, 'bool(__thiscall*)(void*, CSteamID, CSteamID)'),
}
ISteamUser = {
	GetHSteamUser = class.steam_user:GetVFunction(0, 'HSteamUser(__thiscall*)(void*)'),
	BLoggedOn = class.steam_user:GetVFunction(1, 'bool(__thiscall*)(void*)'),
	GetSteamID = class.steam_user:GetVFunction(2, 'CSteamID(__thiscall*)(void*)'),
	InitiateGameConnection = class.steam_user:GetVFunction(3, 'int(__thiscall*)(void*, void*, int, CSteamID, uint32, uint16, bool)'),
	TerminateGameConnection = class.steam_user:GetVFunction(4, 'void(__thiscall*)(void*, uint32, uint16)'),
	TrackAppUsageEvent = class.steam_user:GetVFunction(5, 'void(__thiscall*)(void*, CGameID, int, const char*)'),
	GetUserDataFolder = class.steam_user:GetVFunction(6, 'bool(__thiscall*)(void*, char*, int)'),
	StartVoiceRecording = class.steam_user:GetVFunction(7, 'void(__thiscall*)(void*)'),
	StopVoiceRecording = class.steam_user:GetVFunction(8, 'void(__thiscall*)(void*)'),
	GetAvailableVoice = class.steam_user:GetVFunction(9, 'EVoiceResult(__thiscall*)(void*, uint32*, uint32*, uint32)'),
	GetVoice = class.steam_user:GetVFunction(10, 'EVoiceResult(__thiscall*)(void*, bool, void*, uint32, uint32*, bool, void*, uint32, uint32*, uint32)'),
	DecompressVoice = class.steam_user:GetVFunction(11, 'EVoiceResult(__thiscall*)(void*, const void*, uint32, void*, uint32, uint32*, uint32)'),
	GetVoiceOptimalSampleRate = class.steam_user:GetVFunction(12, 'uint32(__thiscall*)(void*)'),
	GetAuthSessionTicket = class.steam_user:GetVFunction(13, 'HAuthTicket(__thiscall*)(void*, void*, int, uint32*)'),
	BeginAuthSession = class.steam_user:GetVFunction(14, 'EBeginAuthSessionResult(__thiscall*)(void*, const void*, int, CSteamID)'),
	EndAuthSession = class.steam_user:GetVFunction(15, 'void(__thiscall*)(void*, CSteamID)'),
	CancelAuthTicket = class.steam_user:GetVFunction(16, 'void(__thiscall*)(void*, HAuthTicket)'),
	UserHasLicenseForApp = class.steam_user:GetVFunction(17, 'EUserHasLicenseForAppResult(__thiscall*)(void*, CSteamID, AppId_t)'),
	BIsBehindNAT = class.steam_user:GetVFunction(18, 'bool(__thiscall*)(void*)'),
	AdvertiseGame = class.steam_user:GetVFunction(19, 'void(__thiscall*)(void*, CSteamID, uint32, uint16)'),
	RequestEncryptedAppTicket = class.steam_user:GetVFunction(20, 'SteamAPICall_t(__thiscall*)(void*, void*, int)'),
	GetEncryptedAppTicket = class.steam_user:GetVFunction(21, 'bool(__thiscall*)(void*, void*, int, uint32*)'),
	GetGameBadgeLevel = class.steam_user:GetVFunction(22, 'int(__thiscall*)(void*, int, bool)'),
	GetPlayerSteamLevel = class.steam_user:GetVFunction(23, 'int(__thiscall*)(void*)'),
	RequestStoreAuthURL = class.steam_user:GetVFunction(24, 'SteamAPICall_t(__thiscall*)(void*, const char*)'),
	BIsPhoneVerified = class.steam_user:GetVFunction(25, 'bool(__thiscall*)(void*)'),
	BIsTwoFactorEnabled = class.steam_user:GetVFunction(26, 'bool(__thiscall*)(void*)'),
	BIsPhoneIdentifying = class.steam_user:GetVFunction(27, 'bool(__thiscall*)(void*)'),
	BIsPhoneRequiringVerification = class.steam_user:GetVFunction(28, 'bool(__thiscall*)(void*)'),
	GetMarketEligibility = class.steam_user:GetVFunction(29, 'SteamAPICall_t(__thiscall*)(void*)'),
}
ISteamUserStats = {
	RequestCurrentStats = class.steam_user_stats:GetVFunction(0, 'bool(__thiscall*)(void*)'),
	GetStatFloat = class.steam_user_stats:GetVFunction(1, 'bool(__thiscall*)(void*, const char*, float*)'),
	GetStatInt = class.steam_user_stats:GetVFunction(2, 'bool(__thiscall*)(void*, const char*, int32*)'),
	SetStatFloat = class.steam_user_stats:GetVFunction(3, 'bool(__thiscall*)(void*, const char*, float)'),
	SetStatInt = class.steam_user_stats:GetVFunction(4, 'bool(__thiscall*)(void*, const char*, int32)'),
	UpdateAvgRateStat = class.steam_user_stats:GetVFunction(5, 'bool(__thiscall*)(void*, const char*, float, double)'),
	GetAchievement = class.steam_user_stats:GetVFunction(6, 'bool(__thiscall*)(void*, const char*, bool*)'),
	SetAchievement = class.steam_user_stats:GetVFunction(7, 'bool(__thiscall*)(void*, const char*)'),
	ClearAchievement = class.steam_user_stats:GetVFunction(8, 'bool(__thiscall*)(void*, const char*)'),
	GetAchievementAndUnlockTime = class.steam_user_stats:GetVFunction(9, 'bool(__thiscall*)(void*, const char*, bool*, uint32*)'),
	StoreStats = class.steam_user_stats:GetVFunction(10, 'bool(__thiscall*)(void*)'),
	GetAchievementIcon = class.steam_user_stats:GetVFunction(11, 'int(__thiscall*)(void*, const char*)'),
	GetAchievementDisplayAttribute = class.steam_user_stats:GetVFunction(12, 'const char*(__thiscall*)(void*, const char*, const char*)'),
	IndicateAchievementProgress = class.steam_user_stats:GetVFunction(13, 'bool(__thiscall*)(void*, const char*, uint32, uint32)'),
	GetNumAchievements = class.steam_user_stats:GetVFunction(14, 'uint32(__thiscall*)(void*)'),
	GetAchievementName = class.steam_user_stats:GetVFunction(15, 'const char*(__thiscall*)(void*, uint32)'),
	RequestUserStats = class.steam_user_stats:GetVFunction(16, 'SteamAPICall_t(__thiscall*)(void*, CSteamID)'),
	GetUserStatFloat = class.steam_user_stats:GetVFunction(17, 'bool(__thiscall*)(void*, CSteamID, const char*, float*)'),
	GetUserStatInt = class.steam_user_stats:GetVFunction(18, 'bool(__thiscall*)(void*, CSteamID, const char*, int32*)'),
	GetUserAchievement = class.steam_user_stats:GetVFunction(19, 'bool(__thiscall*)(void*, CSteamID, const char*, bool*)'),
	GetUserAchievementAndUnlockTime = class.steam_user_stats:GetVFunction(20, 'bool(__thiscall*)(void*, CSteamID, const char*, bool*, uint32*)'),
	ResetAllStats = class.steam_user_stats:GetVFunction(21, 'bool(__thiscall*)(void*, bool)'),
	FindOrCreateLeaderboard = class.steam_user_stats:GetVFunction(22, 'SteamAPICall_t(__thiscall*)(void*, const char*, ELeaderboardSortMethod, ELeaderboardDisplayType)'),
	FindLeaderboard = class.steam_user_stats:GetVFunction(23, 'SteamAPICall_t(__thiscall*)(void*, const char*)'),
	GetLeaderboardName = class.steam_user_stats:GetVFunction(24, 'const char*(__thiscall*)(void*, SteamLeaderboard_t)'),
	GetLeaderboardEntryCount = class.steam_user_stats:GetVFunction(25, 'int(__thiscall*)(void*, SteamLeaderboard_t)'),
	GetLeaderboardSortMethod = class.steam_user_stats:GetVFunction(26, 'ELeaderboardSortMethod(__thiscall*)(void*, SteamLeaderboard_t)'),
	GetLeaderboardDisplayType = class.steam_user_stats:GetVFunction(27, 'ELeaderboardDisplayType(__thiscall*)(void*, SteamLeaderboard_t)'),
	DownloadLeaderboardEntries = class.steam_user_stats:GetVFunction(28, 'SteamAPICall_t(__thiscall*)(void*, SteamLeaderboard_t, ELeaderboardDataRequest, int, int)'),
	DownloadLeaderboardEntriesForUsers = class.steam_user_stats:GetVFunction(29, 'SteamAPICall_t(__thiscall*)(void*, SteamLeaderboard_t)'),
	GetDownloadedLeaderboardEntry = class.steam_user_stats:GetVFunction(30, 'bool(__thiscall*)(void*, SteamLeaderboardEntries_t, int, LeaderboardEntry_t*, int32*, int)'),
	UploadLeaderboardScore = class.steam_user_stats:GetVFunction(31, 'SteamAPICall_t(__thiscall*)(void*, SteamLeaderboard_t, ELeaderboardUploadScoreMethod, int32, const int32*, int)'),
	AttachLeaderboardUGC = class.steam_user_stats:GetVFunction(32, 'SteamAPICall_t(__thiscall*)(void*, SteamLeaderboard_t, UGCHandle_t)'),
	GetNumberOfCurrentPlayers = class.steam_user_stats:GetVFunction(33, 'SteamAPICall_t(__thiscall*)(void*)'),
	RequestGlobalAchievementPercentages = class.steam_user_stats:GetVFunction(34, 'SteamAPICall_t(__thiscall*)(void*)'),
	GetMostAchievedAchievementInfo = class.steam_user_stats:GetVFunction(35, 'int(__thiscall*)(void*, char*, uint32, float*, bool*)'),
	GetNextMostAchievedAchievementInfo = class.steam_user_stats:GetVFunction(36, 'int(__thiscall*)(void*, int, char*, uint32, float*, bool*)'),
	GetAchievementAchievedPercent = class.steam_user_stats:GetVFunction(37, 'bool(__thiscall*)(void*, const char*, float*)'),
	RequestGlobalStats = class.steam_user_stats:GetVFunction(38, 'SteamAPICall_t(__thiscall*)(void*, int)'),
	GetGlobalStatDouble = class.steam_user_stats:GetVFunction(39, 'bool(__thiscall*)(void*, const char*, double*)'),
	GetGlobalStatInt64 = class.steam_user_stats:GetVFunction(40, 'bool(__thiscall*)(void*, const char*, int64*)'),
	GetGlobalStatHistoryDouble = class.steam_user_stats:GetVFunction(41, 'int32(__thiscall*)(void*, const char*, double*, uint32)'),
	GetGlobalStatHistoryInt64 = class.steam_user_stats:GetVFunction(42, 'int32(__thiscall*)(void*, const char*, int64*, uint32)'),
}
ISteamFriends = {
	GetPersonaName = class.steam_friends:GetVFunction(0, 'const char*(__thiscall*)(void*)'),
	SetPersonaName = class.steam_friends:GetVFunction(1, 'SteamAPICall_t(__thiscall*)(void*, const char*)'),
	GetPersonaState = class.steam_friends:GetVFunction(2, 'EPersonaState(__thiscall*)(void*)'),
	GetFriendCount = class.steam_friends:GetVFunction(3, 'int(__thiscall*)(void*, int)'),
	GetFriendByIndex = class.steam_friends:GetVFunction(4, 'CSteamID(__thiscall*)(void*, int, int)'),
	GetFriendRelationship = class.steam_friends:GetVFunction(5, 'EFriendRelationship(__thiscall*)(void*, CSteamID)'),
	GetFriendPersonaState = class.steam_friends:GetVFunction(6, 'EPersonaState(__thiscall*)(void*, CSteamID)'),
	GetFriendPersonaName = class.steam_friends:GetVFunction(7, 'const char*(__thiscall*)(void*, CSteamID)'),
	GetFriendGamePlayed = class.steam_friends:GetVFunction(8, 'bool(__thiscall*)(void*, CSteamID, FriendGameInfo_t*)'),
	GetFriendPersonaNameHistory = class.steam_friends:GetVFunction(9, 'const char*(__thiscall*)(void*, CSteamID, int)'),
	GetFriendSteamLevel = class.steam_friends:GetVFunction(10, 'int(__thiscall*)(void*, CSteamID)'),
	GetPlayerNickname = class.steam_friends:GetVFunction(11, 'const char*(__thiscall*)(void*, CSteamID)'),
	GetFriendsGroupCount = class.steam_friends:GetVFunction(12, 'int(__thiscall*)(void*)'),
	GetFriendsGroupIDByIndex = class.steam_friends:GetVFunction(13, 'FriendsGroupID_t(__thiscall*)(void*, int)'),
	GetFriendsGroupName = class.steam_friends:GetVFunction(14, 'const char*(__thiscall*)(void*, FriendsGroupID_t)'),
	GetFriendsGroupMembersCount = class.steam_friends:GetVFunction(15, 'int(__thiscall*)(void*, FriendsGroupID_t)'),
	GetFriendsGroupMembersList = class.steam_friends:GetVFunction(16, 'void(__thiscall*)(void*, FriendsGroupID_t, CSteamID*, int)'),
	HasFriend = class.steam_friends:GetVFunction(17, 'bool(__thiscall*)(void*, CSteamID, int)'),
	GetClanCount = class.steam_friends:GetVFunction(18, 'int(__thiscall*)(void*)'),
	GetClanByIndex = class.steam_friends:GetVFunction(19, 'CSteamID(__thiscall*)(void*, int)'),
	GetClanName = class.steam_friends:GetVFunction(20, 'const char*(__thiscall*)(void*, CSteamID)'),
	GetClanTag = class.steam_friends:GetVFunction(21, 'const char*(__thiscall*)(void*, CSteamID)'),
	GetClanActivityCounts = class.steam_friends:GetVFunction(22, 'bool(__thiscall*)(void*, CSteamID, int*, int*, int*)'),
	DownloadClanActivityCounts = class.steam_friends:GetVFunction(23, 'SteamAPICall_t(__thiscall*)(void*, CSteamID*, int)'),
	GetFriendCountFromSource = class.steam_friends:GetVFunction(24, 'int(__thiscall*)(void*, CSteamID)'),
	GetFriendFromSourceByIndex = class.steam_friends:GetVFunction(25, 'CSteamID(__thiscall*)(void*, CSteamID, int)'),
	IsUserInSource = class.steam_friends:GetVFunction(26, 'bool(__thiscall*)(void*, CSteamID, CSteamID)'),
	SetInGameVoiceSpeaking = class.steam_friends:GetVFunction(27, 'void(__thiscall*)(void*, CSteamID, bool)'),
	ActivateGameOverlay = class.steam_friends:GetVFunction(28, 'void(__thiscall*)(void*, const char*)'),
	ActivateGameOverlayToUser = class.steam_friends:GetVFunction(29, 'void(__thiscall*)(void*, const char*, CSteamID)'),
	ActivateGameOverlayToWebPage = class.steam_friends:GetVFunction(30, 'void(__thiscall*)(void*, const char*, EActivateGameOverlayToWebPageMode)'),
	ActivateGameOverlayToStore = class.steam_friends:GetVFunction(31, 'void(__thiscall*)(void*, AppId_t, EOverlayToStoreFlag)'),
	SetPlayedWith = class.steam_friends:GetVFunction(32, 'void(__thiscall*)(void*, CSteamID)'),
	ActivateGameOverlayInviteDialog = class.steam_friends:GetVFunction(33, 'void(__thiscall*)(void*, CSteamID)'),
	GetSmallFriendAvatar = class.steam_friends:GetVFunction(34, 'int(__thiscall*)(void*, CSteamID)'),
	GetMediumFriendAvatar = class.steam_friends:GetVFunction(35, 'int(__thiscall*)(void*, CSteamID)'),
	GetLargeFriendAvatar = class.steam_friends:GetVFunction(36, 'int(__thiscall*)(void*, CSteamID)'),
	RequestUserInformation = class.steam_friends:GetVFunction(37, 'bool(__thiscall*)(void*, CSteamID, bool)'),
	RequestClanOfficerList = class.steam_friends:GetVFunction(38, 'SteamAPICall_t(__thiscall*)(void*, CSteamID)'),
	GetClanOwner = class.steam_friends:GetVFunction(39, 'CSteamID(__thiscall*)(void*, CSteamID)'),
	GetClanOfficerCount = class.steam_friends:GetVFunction(40, 'int(__thiscall*)(void*, CSteamID)'),
	GetClanOfficerByIndex = class.steam_friends:GetVFunction(41, 'CSteamID(__thiscall*)(void*, CSteamID, int)'),
	GetUserRestrictions = class.steam_friends:GetVFunction(42, 'uint32(__thiscall*)(void*)'),
	SetRichPresence = class.steam_friends:GetVFunction(43, 'bool(__thiscall*)(void*, const char*, const char*)'),
	ClearRichPresence = class.steam_friends:GetVFunction(44, 'void(__thiscall*)(void*)'),
	GetFriendRichPresence = class.steam_friends:GetVFunction(45, 'const char*(__thiscall*)(void*, CSteamID, const char*)'),
	GetFriendRichPresenceKeyCount = class.steam_friends:GetVFunction(46, 'int(__thiscall*)(void*, CSteamID)'),
	GetFriendRichPresenceKeyByIndex = class.steam_friends:GetVFunction(47, 'const char*(__thiscall*)(void*, CSteamID, int)'),
	RequestFriendRichPresence = class.steam_friends:GetVFunction(48, 'void(__thiscall*)(void*, CSteamID)'),
	InviteUserToGame = class.steam_friends:GetVFunction(49, 'bool(__thiscall*)(void*, CSteamID, const char*)'),
	GetCoplayFriendCount = class.steam_friends:GetVFunction(50, 'int(__thiscall*)(void*)'),
	GetCoplayFriend = class.steam_friends:GetVFunction(51, 'CSteamID(__thiscall*)(void*, int)'),
	GetFriendCoplayTime = class.steam_friends:GetVFunction(52, 'int(__thiscall*)(void*, CSteamID)'),
	GetFriendCoplayGame = class.steam_friends:GetVFunction(53, 'AppId_t(__thiscall*)(void*, CSteamID)'),
	JoinClanChatRoom = class.steam_friends:GetVFunction(54, 'SteamAPICall_t(__thiscall*)(void*, CSteamID)'),
	LeaveClanChatRoom = class.steam_friends:GetVFunction(55, 'bool(__thiscall*)(void*, CSteamID)'),
	GetClanChatMemberCount = class.steam_friends:GetVFunction(56, 'int(__thiscall*)(void*, CSteamID)'),
	GetChatMemberByIndex = class.steam_friends:GetVFunction(57, 'CSteamID(__thiscall*)(void*, CSteamID, int)'),
	SendClanChatMessage = class.steam_friends:GetVFunction(58, 'bool(__thiscall*)(void*, CSteamID, const char*)'),
	GetClanChatMessage = class.steam_friends:GetVFunction(59, 'int(__thiscall*)(void*, CSteamID, int, void*, int, EChatEntryType*, CSteamID*)'),
	IsClanChatAdmin = class.steam_friends:GetVFunction(60, 'bool(__thiscall*)(void*, CSteamID, CSteamID)'),
	IsClanChatWindowOpenInSteam = class.steam_friends:GetVFunction(61, 'bool(__thiscall*)(void*, CSteamID)'),
	OpenClanChatWindowInSteam = class.steam_friends:GetVFunction(62, 'bool(__thiscall*)(void*, CSteamID)'),
	CloseClanChatWindowInSteam = class.steam_friends:GetVFunction(63, 'bool(__thiscall*)(void*, CSteamID)'),
	SetListenForFriendsMessages = class.steam_friends:GetVFunction(64, 'bool(__thiscall*)(void*, bool)'),
	ReplyToFriendMessage = class.steam_friends:GetVFunction(65, 'bool(__thiscall*)(void*, CSteamID, const char*)'),
	GetFriendMessage = class.steam_friends:GetVFunction(66, 'int(__thiscall*)(void*, CSteamID, int, void*, int, EChatEntryType*)'),
	GetFollowerCount = class.steam_friends:GetVFunction(67, 'SteamAPICall_t(__thiscall*)(void*, CSteamID)'),
	IsFollowing = class.steam_friends:GetVFunction(68, 'SteamAPICall_t(__thiscall*)(void*, CSteamID)'),
	EnumerateFollowingList = class.steam_friends:GetVFunction(69, 'SteamAPICall_t(__thiscall*)(void*, uint32)'),
	IsClanPublic = class.steam_friends:GetVFunction(70, 'bool(__thiscall*)(void*, CSteamID)'),
	IsClanOfficialGameGroup = class.steam_friends:GetVFunction(71, 'bool(__thiscall*)(void*, CSteamID)'),
	GetNumChatsWithUnreadPriorityMessages = class.steam_friends:GetVFunction(72, 'int(__thiscall*)(void*)'),
}
ISteamApps = {
	BIsSubscribed = class.steam_apps:GetVFunction(0, 'bool(__thiscall*)(void*)'),
	BIsLowViolence = class.steam_apps:GetVFunction(1, 'bool(__thiscall*)(void*)'),
	BIsCybercafe = class.steam_apps:GetVFunction(2, 'bool(__thiscall*)(void*)'),
	BIsVACBanned = class.steam_apps:GetVFunction(3, 'bool(__thiscall*)(void*)'),
	GetCurrentGameLanguage = class.steam_apps:GetVFunction(4, 'const char*(__thiscall*)(void*)'),
	GetAvailableGameLanguages = class.steam_apps:GetVFunction(5, 'const char*(__thiscall*)(void*)'),
	BIsSubscribedApp = class.steam_apps:GetVFunction(6, 'bool(__thiscall*)(void*, AppId_t)'),
	BIsDlcInstalled = class.steam_apps:GetVFunction(7, 'bool(__thiscall*)(void*, AppId_t)'),
	GetEarliestPurchaseUnixTime = class.steam_apps:GetVFunction(8, 'uint32(__thiscall*)(void*, AppId_t)'),
	BIsSubscribedFromFreeWeekend = class.steam_apps:GetVFunction(9, 'bool(__thiscall*)(void*)'),
	GetDLCCount = class.steam_apps:GetVFunction(10, 'int(__thiscall*)(void*)'),
	BGetDLCDataByIndex = class.steam_apps:GetVFunction(11, 'bool(__thiscall*)(void*, int, AppId_t*, bool*, char*, int)'),
	InstallDLC = class.steam_apps:GetVFunction(12, 'void(__thiscall*)(void*, AppId_t)'),
	UninstallDLC = class.steam_apps:GetVFunction(13, 'void(__thiscall*)(void*, AppId_t)'),
	RequestAppProofOfPurchaseKey = class.steam_apps:GetVFunction(14, 'void(__thiscall*)(void*, AppId_t)'),
	GetCurrentBetaName = class.steam_apps:GetVFunction(15, 'bool(__thiscall*)(void*, char*, int)'),
	MarkContentCorrupt = class.steam_apps:GetVFunction(16, 'bool(__thiscall*)(void*, bool)'),
	GetInstalledDepots = class.steam_apps:GetVFunction(17, 'uint32(__thiscall*)(void*, AppId_t, DepotId_t*, uint32)'),
	GetAppInstallDir = class.steam_apps:GetVFunction(18, 'uint32(__thiscall*)(void*, AppId_t, char*, uint32)'),
	BIsAppInstalled = class.steam_apps:GetVFunction(19, 'bool(__thiscall*)(void*, AppId_t)'),
	GetAppOwner = class.steam_apps:GetVFunction(20, 'CSteamID(__thiscall*)(void*)'),
	GetLaunchQueryParam = class.steam_apps:GetVFunction(21, 'const char*(__thiscall*)(void*, const char*)'),
	GetDlcDownloadProgress = class.steam_apps:GetVFunction(22, 'bool(__thiscall*)(void*, AppId_t, uint64*, uint64*)'),
	GetAppBuildId = class.steam_apps:GetVFunction(23, 'int(__thiscall*)(void*)'),
	RequestAllProofOfPurchaseKeys = class.steam_apps:GetVFunction(24, 'void(__thiscall*)(void*)'),
	GetFileDetails = class.steam_apps:GetVFunction(25, 'SteamAPICall_t(__thiscall*)(void*, const char*)'),
	GetLaunchCommandLine = class.steam_apps:GetVFunction(26, 'int(__thiscall*)(void*, char*, int)'),
	BIsSubscribedFromFamilySharing = class.steam_apps:GetVFunction(27, 'bool(__thiscall*)(void*)'),
}
ISteamMatchmakingServers = {
	RequestInternetServerList = class.steam_matchmakingservers:GetVFunction(0, 'HServerListRequest(__thiscall*)(void*, AppId_t, MatchMakingKeyValuePair_t*, uint32, ISteamMatchmakingServerListResponse*)'),
	RequestLANServerList = class.steam_matchmakingservers:GetVFunction(1, 'HServerListRequest(__thiscall*)(void*, AppId_t, ISteamMatchmakingServerListResponse*)'),
	RequestFriendsServerList = class.steam_matchmakingservers:GetVFunction(2, 'HServerListRequest(__thiscall*)(void*, AppId_t, MatchMakingKeyValuePair_t*, uint32, ISteamMatchmakingServerListResponse*)'),
	RequestFavoritesServerList = class.steam_matchmakingservers:GetVFunction(3, 'HServerListRequest(__thiscall*)(void*, AppId_t, MatchMakingKeyValuePair_t*, uint32, ISteamMatchmakingServerListResponse*)'),
	RequestHistoryServerList = class.steam_matchmakingservers:GetVFunction(4, 'HServerListRequest(__thiscall*)(void*, AppId_t, MatchMakingKeyValuePair_t*, uint32, ISteamMatchmakingServerListResponse*)'),
	RequestSpectatorServerList = class.steam_matchmakingservers:GetVFunction(5, 'HServerListRequest(__thiscall*)(void*, AppId_t, MatchMakingKeyValuePair_t*, uint32, ISteamMatchmakingServerListResponse*)'),
	ReleaseRequest = class.steam_matchmakingservers:GetVFunction(6, 'void(__thiscall*)(void*, HServerListRequest)'),
	GetServerDetails = class.steam_matchmakingservers:GetVFunction(7, 'gameserveritem_t*(__thiscall*)(void*, HServerListRequest, int)'),
	CancelQuery = class.steam_matchmakingservers:GetVFunction(8, 'void(__thiscall*)(void*, HServerListRequest)'),
	RefreshQuery = class.steam_matchmakingservers:GetVFunction(9, 'void(__thiscall*)(void*, HServerListRequest)'),
	IsRefreshing = class.steam_matchmakingservers:GetVFunction(10, 'bool(__thiscall*)(void*, HServerListRequest)'),
	GetServerCount = class.steam_matchmakingservers:GetVFunction(11, 'int(__thiscall*)(void*, HServerListRequest)'),
	RefreshServer = class.steam_matchmakingservers:GetVFunction(12, 'void(__thiscall*)(void*, HServerListRequest, int)'),
	PingServer = class.steam_matchmakingservers:GetVFunction(13, 'HServerQuery(__thiscall*)(void*, uint32, uint16, ISteamMatchmakingPingResponse*)'),
	PlayerDetails = class.steam_matchmakingservers:GetVFunction(14, 'HServerQuery(__thiscall*)(void*, uint32, uint16, ISteamMatchmakingPlayersResponse*)'),
	ServerRules = class.steam_matchmakingservers:GetVFunction(15, 'HServerQuery(__thiscall*)(void*, uint32, uint16, ISteamMatchmakingRulesResponse*)'),
	CancelServerQuery = class.steam_matchmakingservers:GetVFunction(16, 'void(__thiscall*)(void*, HServerQuery)'),
}
ISteamNetworking = {
	SendP2PPacket = class.steam_networking:GetVFunction(0, 'bool(__thiscall*)(void*, CSteamID, const void*, uint32, EP2PSend, int)'),
	IsP2PPacketAvailable = class.steam_networking:GetVFunction(1, 'bool(__thiscall*)(void*, uint32*, int)'),
	ReadP2PPacket = class.steam_networking:GetVFunction(2, 'bool(__thiscall*)(void*, void*, uint32, uint32*, CSteamID*, int)'),
	AcceptP2PSessionWithUser = class.steam_networking:GetVFunction(3, 'bool(__thiscall*)(void*, CSteamID)'),
	CloseP2PSessionWithUser = class.steam_networking:GetVFunction(4, 'bool(__thiscall*)(void*, CSteamID)'),
	CloseP2PChannelWithUser = class.steam_networking:GetVFunction(5, 'bool(__thiscall*)(void*, CSteamID, int)'),
	GetP2PSessionState = class.steam_networking:GetVFunction(6, 'bool(__thiscall*)(void*, CSteamID, P2PSessionState_t*)'),
	AllowP2PPacketRelay = class.steam_networking:GetVFunction(7, 'bool(__thiscall*)(void*, bool)'),
	CreateListenSocket = class.steam_networking:GetVFunction(8, 'SNetListenSocket_t(__thiscall*)(void*, int, uint32, uint16, bool)'),
	CreateP2PConnectionSocket = class.steam_networking:GetVFunction(9, 'SNetSocket_t(__thiscall*)(void*, CSteamID, int, int, bool)'),
	CreateConnectionSocket = class.steam_networking:GetVFunction(10, 'SNetSocket_t(__thiscall*)(void*, uint32, uint16, int)'),
	DestroySocket = class.steam_networking:GetVFunction(11, 'bool(__thiscall*)(void*, SNetSocket_t, bool)'),
	DestroyListenSocket = class.steam_networking:GetVFunction(12, 'bool(__thiscall*)(void*, SNetListenSocket_t, bool)'),
	SendDataOnSocket = class.steam_networking:GetVFunction(13, 'bool(__thiscall*)(void*, SNetSocket_t, void*, uint32, bool)'),
	IsDataAvailableOnSocket = class.steam_networking:GetVFunction(14, 'bool(__thiscall*)(void*, SNetSocket_t, uint32*)'),
	RetrieveDataFromSocket = class.steam_networking:GetVFunction(15, 'bool(__thiscall*)(void*, SNetSocket_t, void*, uint32, uint32*)'),
	IsDataAvailable = class.steam_networking:GetVFunction(16, 'bool(__thiscall*)(void*, SNetListenSocket_t, uint32*, SNetSocket_t*)'),
	RetrieveData = class.steam_networking:GetVFunction(17, 'bool(__thiscall*)(void*, SNetListenSocket_t, void*, uint32, uint32*, SNetSocket_t*)'),
	GetSocketInfo = class.steam_networking:GetVFunction(18, 'bool(__thiscall*)(void*, SNetSocket_t, CSteamID*, int*, uint32*, uint16*)'),
	GetListenSocketInfo = class.steam_networking:GetVFunction(19, 'bool(__thiscall*)(void*, SNetListenSocket_t, uint32*, uint16*)'),
	GetSocketConnectionType = class.steam_networking:GetVFunction(20, 'ESNetSocketConnectionType(__thiscall*)(void*, SNetSocket_t)'),
	GetMaxPacketSize = class.steam_networking:GetVFunction(21, 'int(__thiscall*)(void*, SNetSocket_t)'),
}
ISteamRemoteStorage = {
	FileWrite = class.steam_remotestorage:GetVFunction(0, 'bool(__thiscall*)(void*, const char*, const void*, int32)'),
	FileRead = class.steam_remotestorage:GetVFunction(1, 'int32(__thiscall*)(void*, const char*, void*, int32)'),
	FileWriteAsync = class.steam_remotestorage:GetVFunction(2, 'SteamAPICall_t(__thiscall*)(void*, const char*, const void*, uint32)'),
	FileReadAsync = class.steam_remotestorage:GetVFunction(3, 'SteamAPICall_t(__thiscall*)(void*, const char*, uint32, uint32)'),
	FileReadAsyncComplete = class.steam_remotestorage:GetVFunction(4, 'bool(__thiscall*)(void*, SteamAPICall_t, void*, uint32)'),
	FileForget = class.steam_remotestorage:GetVFunction(5, 'bool(__thiscall*)(void*, const char*)'),
	FileDelete = class.steam_remotestorage:GetVFunction(6, 'bool(__thiscall*)(void*, const char*)'),
	FileShare = class.steam_remotestorage:GetVFunction(7, 'SteamAPICall_t(__thiscall*)(void*, const char*)'),
	SetSyncPlatforms = class.steam_remotestorage:GetVFunction(8, 'bool(__thiscall*)(void*, const char*, ERemoteStoragePlatform)'),
	FileWriteStreamOpen = class.steam_remotestorage:GetVFunction(9, 'UGCFileWriteStreamHandle_t(__thiscall*)(void*, const char*)'),
	FileWriteStreamWriteChunk = class.steam_remotestorage:GetVFunction(10, 'bool(__thiscall*)(void*, UGCFileWriteStreamHandle_t, const void*, int32)'),
	FileWriteStreamClose = class.steam_remotestorage:GetVFunction(11, 'bool(__thiscall*)(void*, UGCFileWriteStreamHandle_t)'),
	FileWriteStreamCancel = class.steam_remotestorage:GetVFunction(12, 'bool(__thiscall*)(void*, UGCFileWriteStreamHandle_t)'),
	FileExists = class.steam_remotestorage:GetVFunction(13, 'bool(__thiscall*)(void*, const char*)'),
	FilePersisted = class.steam_remotestorage:GetVFunction(14, 'bool(__thiscall*)(void*, const char*)'),
	GetFileSize = class.steam_remotestorage:GetVFunction(15, 'int32(__thiscall*)(void*, const char*)'),
	GetFileTimestamp = class.steam_remotestorage:GetVFunction(16, 'int64(__thiscall*)(void*, const char*)'),
	GetSyncPlatforms = class.steam_remotestorage:GetVFunction(17, 'ERemoteStoragePlatform(__thiscall*)(void*, const char*)'),
	GetFileCount = class.steam_remotestorage:GetVFunction(18, 'int32(__thiscall*)(void*)'),
	GetFileNameAndSize = class.steam_remotestorage:GetVFunction(19, 'const char*(__thiscall*)(void*, int, int32*)'),
	GetQuota = class.steam_remotestorage:GetVFunction(20, 'bool(__thiscall*)(void*, uint64*, uint64*)'),
	IsCloudEnabledForAccount = class.steam_remotestorage:GetVFunction(21, 'bool(__thiscall*)(void*)'),
	IsCloudEnabledForApp = class.steam_remotestorage:GetVFunction(22, 'bool(__thiscall*)(void*)'),
	SetCloudEnabledForApp = class.steam_remotestorage:GetVFunction(23, 'void(__thiscall*)(void*, bool)'),
	UGCDownload = class.steam_remotestorage:GetVFunction(24, 'SteamAPICall_t(__thiscall*)(void*, UGCHandle_t, uint32)'),
	GetUGCDownloadProgress = class.steam_remotestorage:GetVFunction(25, 'bool(__thiscall*)(void*, UGCHandle_t, int32*, int32*)'),
	GetUGCDetails = class.steam_remotestorage:GetVFunction(26, 'bool(__thiscall*)(void*, UGCHandle_t, AppId_t*, char*, int32*, CSteamID*)'),
	UGCRead = class.steam_remotestorage:GetVFunction(27, 'int32(__thiscall*)(void*, UGCHandle_t, void*, int32, uint32, EUGCReadAction)'),
	GetCachedUGCCount = class.steam_remotestorage:GetVFunction(28, 'int32(__thiscall*)(void*)'),
	GetCachedUGCHandle = class.steam_remotestorage:GetVFunction(29, 'UGCHandle_t(__thiscall*)(void*, int32)'),
	PublishWorkshopFile = class.steam_remotestorage:GetVFunction(30, 'SteamAPICall_t(__thiscall*)(void*, const char*, const char*, AppId_t, const char*, const char*, ERemoteStoragePublishedFileVisibility, SteamParamStringArray_t*, EWorkshopFileType)'),
	CreatePublishedFileUpdateRequest = class.steam_remotestorage:GetVFunction(31, 'PublishedFileUpdateHandle_t(__thiscall*)(void*, PublishedFileId_t)'),
	UpdatePublishedFileFile = class.steam_remotestorage:GetVFunction(32, 'bool(__thiscall*)(void*, PublishedFileUpdateHandle_t, const char*)'),
	UpdatePublishedFilePreviewFile = class.steam_remotestorage:GetVFunction(33, 'bool(__thiscall*)(void*, PublishedFileUpdateHandle_t, const char*)'),
	UpdatePublishedFileTitle = class.steam_remotestorage:GetVFunction(34, 'bool(__thiscall*)(void*, PublishedFileUpdateHandle_t, const char*)'),
	UpdatePublishedFileDescription = class.steam_remotestorage:GetVFunction(35, 'bool(__thiscall*)(void*, PublishedFileUpdateHandle_t, const char*)'),
	UpdatePublishedFileVisibility = class.steam_remotestorage:GetVFunction(36, 'bool(__thiscall*)(void*, PublishedFileUpdateHandle_t, ERemoteStoragePublishedFileVisibility)'),
	UpdatePublishedFileTags = class.steam_remotestorage:GetVFunction(37, 'bool(__thiscall*)(void*, PublishedFileUpdateHandle_t, SteamParamStringArray_t*)'),
	CommitPublishedFileUpdate = class.steam_remotestorage:GetVFunction(38, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileUpdateHandle_t)'),
	GetPublishedFileDetails = class.steam_remotestorage:GetVFunction(39, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t, uint32)'),
	DeletePublishedFile = class.steam_remotestorage:GetVFunction(40, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t)'),
	EnumerateUserPublishedFiles = class.steam_remotestorage:GetVFunction(41, 'SteamAPICall_t(__thiscall*)(void*, uint32)'),
	SubscribePublishedFile = class.steam_remotestorage:GetVFunction(42, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t)'),
	EnumerateUserSubscribedFiles = class.steam_remotestorage:GetVFunction(43, 'SteamAPICall_t(__thiscall*)(void*, uint32)'),
	UnsubscribePublishedFile = class.steam_remotestorage:GetVFunction(44, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t)'),
	UpdatePublishedFileSetChangeDescription = class.steam_remotestorage:GetVFunction(45, 'bool(__thiscall*)(void*, PublishedFileUpdateHandle_t, const char*)'),
	GetPublishedItemVoteDetails = class.steam_remotestorage:GetVFunction(46, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t)'),
	UpdateUserPublishedItemVote = class.steam_remotestorage:GetVFunction(47, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t, bool)'),
	GetUserPublishedItemVoteDetails = class.steam_remotestorage:GetVFunction(48, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t)'),
	EnumerateUserSharedWorkshopFiles = class.steam_remotestorage:GetVFunction(49, 'SteamAPICall_t(__thiscall*)(void*, CSteamID, uint32, SteamParamStringArray_t*, SteamParamStringArray_t*)'),
	PublishVideo = class.steam_remotestorage:GetVFunction(50, 'SteamAPICall_t(__thiscall*)(void*, EWorkshopVideoProvider, const char*, const char*, const char*, AppId_t, const char*, const char*, ERemoteStoragePublishedFileVisibility, SteamParamStringArray_t*)'),
	SetUserPublishedFileAction = class.steam_remotestorage:GetVFunction(51, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t, EWorkshopFileAction)'),
	EnumeratePublishedFilesByUserAction = class.steam_remotestorage:GetVFunction(52, 'SteamAPICall_t(__thiscall*)(void*, EWorkshopFileAction, uint32)'),
	EnumeratePublishedWorkshopFiles = class.steam_remotestorage:GetVFunction(53, 'SteamAPICall_t(__thiscall*)(void*, EWorkshopEnumerationType, uint32, uint32, uint32, SteamParamStringArray_t*, SteamParamStringArray_t*)'),
	UGCDownloadToLocation = class.steam_remotestorage:GetVFunction(54, 'SteamAPICall_t(__thiscall*)(void*, UGCHandle_t, const char*, uint32)'),
}
ISteamScreenshots = {
	WriteScreenshot = class.steam_screenshots:GetVFunction(0, 'ScreenshotHandle(__thiscall*)(void*, void*, uint32, int, int)'),
	AddScreenshotToLibrary = class.steam_screenshots:GetVFunction(1, 'ScreenshotHandle(__thiscall*)(void*, const char*, const char*, int, int)'),
	TriggerScreenshot = class.steam_screenshots:GetVFunction(2, 'void(__thiscall*)(void*)'),
	HookScreenshots = class.steam_screenshots:GetVFunction(3, 'void(__thiscall*)(void*, bool)'),
	SetLocation = class.steam_screenshots:GetVFunction(4, 'bool(__thiscall*)(void*, ScreenshotHandle, const char*)'),
	TagUser = class.steam_screenshots:GetVFunction(5, 'bool(__thiscall*)(void*, ScreenshotHandle, CSteamID)'),
	TagPublishedFile = class.steam_screenshots:GetVFunction(6, 'bool(__thiscall*)(void*, ScreenshotHandle, PublishedFileId_t)'),
	IsScreenshotsHooked = class.steam_screenshots:GetVFunction(7, 'bool(__thiscall*)(void*)'),
	AddVRScreenshotToLibrary = class.steam_screenshots:GetVFunction(8, 'ScreenshotHandle(__thiscall*)(void*, EVRScreenshotType, const char*, const char*)'),
}
ISteamHTTP = {
	CreateHTTPRequest = class.steam_http:GetVFunction(0, 'HTTPRequestHandle(__thiscall*)(void*, EHTTPMethod, const char*)'),
	SetHTTPRequestContextValue = class.steam_http:GetVFunction(1, 'bool(__thiscall*)(void*, HTTPRequestHandle, uint64)'),
	SetHTTPRequestNetworkActivityTimeout = class.steam_http:GetVFunction(2, 'bool(__thiscall*)(void*, HTTPRequestHandle, uint32)'),
	SetHTTPRequestHeaderValue = class.steam_http:GetVFunction(3, 'bool(__thiscall*)(void*, HTTPRequestHandle, const char*, const char*)'),
	SetHTTPRequestGetOrPostParameter = class.steam_http:GetVFunction(4, 'bool(__thiscall*)(void*, HTTPRequestHandle, const char*, const char*)'),
	SendHTTPRequest = class.steam_http:GetVFunction(5, 'bool(__thiscall*)(void*, HTTPRequestHandle, SteamAPICall_t*)'),
	SendHTTPRequestAndStreamResponse = class.steam_http:GetVFunction(6, 'bool(__thiscall*)(void*, HTTPRequestHandle, SteamAPICall_t*)'),
	DeferHTTPRequest = class.steam_http:GetVFunction(7, 'bool(__thiscall*)(void*, HTTPRequestHandle)'),
	PrioritizeHTTPRequest = class.steam_http:GetVFunction(8, 'bool(__thiscall*)(void*, HTTPRequestHandle)'),
	GetHTTPResponseHeaderSize = class.steam_http:GetVFunction(9, 'bool(__thiscall*)(void*, HTTPRequestHandle, const char*, uint32*)'),
	GetHTTPResponseHeaderValue = class.steam_http:GetVFunction(10, 'bool(__thiscall*)(void*, HTTPRequestHandle, const char*, uint8*, uint32)'),
	GetHTTPResponseBodySize = class.steam_http:GetVFunction(11, 'bool(__thiscall*)(void*, HTTPRequestHandle, uint32*)'),
	GetHTTPResponseBodyData = class.steam_http:GetVFunction(12, 'bool(__thiscall*)(void*, HTTPRequestHandle, uint8*, uint32)'),
	GetHTTPStreamingResponseBodyData = class.steam_http:GetVFunction(13, 'bool(__thiscall*)(void*, HTTPRequestHandle, uint32, uint8*, uint32)'),
	ReleaseHTTPRequest = class.steam_http:GetVFunction(14, 'bool(__thiscall*)(void*, HTTPRequestHandle)'),
	GetHTTPDownloadProgressPct = class.steam_http:GetVFunction(15, 'bool(__thiscall*)(void*, HTTPRequestHandle, float*)'),
	SetHTTPRequestRawPostBody = class.steam_http:GetVFunction(16, 'bool(__thiscall*)(void*, HTTPRequestHandle, const char*, uint8*, uint32)'),
	CreateCookieContainer = class.steam_http:GetVFunction(17, 'HTTPCookieContainerHandle(__thiscall*)(void*, bool)'),
	ReleaseCookieContainer = class.steam_http:GetVFunction(18, 'bool(__thiscall*)(void*, HTTPCookieContainerHandle)'),
	SetCookie = class.steam_http:GetVFunction(19, 'bool(__thiscall*)(void*, HTTPCookieContainerHandle, const char*, const char*, const char*)'),
	SetHTTPRequestCookieContainer = class.steam_http:GetVFunction(20, 'bool(__thiscall*)(void*, HTTPRequestHandle, HTTPCookieContainerHandle)'),
	SetHTTPRequestUserAgentInfo = class.steam_http:GetVFunction(21, 'bool(__thiscall*)(void*, HTTPRequestHandle, const char*)'),
	SetHTTPRequestRequiresVerifiedCertificate = class.steam_http:GetVFunction(22, 'bool(__thiscall*)(void*, HTTPRequestHandle, bool)'),
	SetHTTPRequestAbsoluteTimeoutMS = class.steam_http:GetVFunction(23, 'bool(__thiscall*)(void*, HTTPRequestHandle, uint32)'),
	GetHTTPRequestWasTimedOut = class.steam_http:GetVFunction(24, 'bool(__thiscall*)(void*, HTTPRequestHandle, bool*)'),
}
ISteamController = {
	Init = class.steam_controller:GetVFunction(0, 'bool(__thiscall*)(void*)'),
	Shutdown = class.steam_controller:GetVFunction(1, 'bool(__thiscall*)(void*)'),
	RunFrame = class.steam_controller:GetVFunction(2, 'void(__thiscall*)(void*)'),
	GetConnectedControllers = class.steam_controller:GetVFunction(3, 'int(__thiscall*)(void*, ControllerHandle_t*)'),
	GetActionSetHandle = class.steam_controller:GetVFunction(4, 'ControllerActionSetHandle_t(__thiscall*)(void*, const char*)'),
	ActivateActionSet = class.steam_controller:GetVFunction(5, 'void(__thiscall*)(void*, ControllerHandle_t, ControllerActionSetHandle_t)'),
	GetCurrentActionSet = class.steam_controller:GetVFunction(6, 'ControllerActionSetHandle_t(__thiscall*)(void*, ControllerHandle_t)'),
	ActivateActionSetLayer = class.steam_controller:GetVFunction(7, 'void(__thiscall*)(void*, ControllerHandle_t, ControllerActionSetHandle_t)'),
	DeactivateActionSetLayer = class.steam_controller:GetVFunction(8, 'void(__thiscall*)(void*, ControllerHandle_t, ControllerActionSetHandle_t)'),
	DeactivateAllActionSetLayers = class.steam_controller:GetVFunction(9, 'void(__thiscall*)(void*, ControllerHandle_t)'),
	GetActiveActionSetLayers = class.steam_controller:GetVFunction(10, 'int(__thiscall*)(void*, ControllerHandle_t, ControllerActionSetHandle_t*)'),
	GetDigitalActionHandle = class.steam_controller:GetVFunction(11, 'ControllerDigitalActionHandle_t(__thiscall*)(void*, const char*)'),
	GetDigitalActionData = class.steam_controller:GetVFunction(12, 'ControllerDigitalActionData_t(__thiscall*)(void*, ControllerHandle_t, ControllerDigitalActionHandle_t)'),
	GetDigitalActionOrigins = class.steam_controller:GetVFunction(13, 'int(__thiscall*)(void*, ControllerHandle_t, ControllerActionSetHandle_t, ControllerDigitalActionHandle_t, EControllerActionOrigin*)'),
	GetAnalogActionHandle = class.steam_controller:GetVFunction(14, 'ControllerAnalogActionHandle_t(__thiscall*)(void*, const char*)'),
	GetAnalogActionData = class.steam_controller:GetVFunction(15, 'ControllerAnalogActionData_t(__thiscall*)(void*, ControllerHandle_t, ControllerAnalogActionHandle_t)'),
	GetAnalogActionOrigins = class.steam_controller:GetVFunction(16, 'int(__thiscall*)(void*, ControllerHandle_t, ControllerActionSetHandle_t, ControllerAnalogActionHandle_t, EControllerActionOrigin*)'),
	GetGlyphForActionOrigin = class.steam_controller:GetVFunction(17, 'const char*(__thiscall*)(void*, EControllerActionOrigin)'),
	GetStringForActionOrigin = class.steam_controller:GetVFunction(18, 'const char*(__thiscall*)(void*, EControllerActionOrigin)'),
	StopAnalogActionMomentum = class.steam_controller:GetVFunction(19, 'void(__thiscall*)(void*, ControllerHandle_t, ControllerAnalogActionHandle_t)'),
	GetMotionData = class.steam_controller:GetVFunction(20, 'ControllerMotionData_t(__thiscall*)(void*, ControllerHandle_t)'),
	TriggerHapticPulse = class.steam_controller:GetVFunction(21, 'void(__thiscall*)(void*, ControllerHandle_t, ESteamControllerPad, unsigned short)'),
	TriggerRepeatedHapticPulse = class.steam_controller:GetVFunction(22, 'void(__thiscall*)(void*, ControllerHandle_t, ESteamControllerPad, unsigned short, unsigned short, unsigned short, unsigned int)'),
	TriggerVibration = class.steam_controller:GetVFunction(23, 'void(__thiscall*)(void*, ControllerHandle_t, unsigned short, unsigned short)'),
	SetLEDColor = class.steam_controller:GetVFunction(24, 'void(__thiscall*)(void*, ControllerHandle_t, uint8, uint8, uint8, unsigned int)'),
	ShowBindingPanel = class.steam_controller:GetVFunction(25, 'bool(__thiscall*)(void*, ControllerHandle_t)'),
	GetControllerForGamepadIndex = class.steam_controller:GetVFunction(27, 'ControllerHandle_t(__thiscall*)(void*, int)'),
	GetGamepadIndexForController = class.steam_controller:GetVFunction(28, 'int(__thiscall*)(void*, ControllerHandle_t)'),
	GetStringForXboxOrigin = class.steam_controller:GetVFunction(29, 'const char*(__thiscall*)(void*, EXboxOrigin)'),
	GetGlyphForXboxOrigin = class.steam_controller:GetVFunction(30, 'const char*(__thiscall*)(void*, EXboxOrigin)'),
	GetActionOriginFromXboxOrigin = class.steam_controller:GetVFunction(31, 'EControllerActionOrigin(__thiscall*)(void*, ControllerHandle_t, EXboxOrigin)'),
	TranslateActionOrigin = class.steam_controller:GetVFunction(32, 'EControllerActionOrigin(__thiscall*)(void*, ESteamInputType, EControllerActionOrigin)'),
}
ISteamUGC = {
	CreateQueryUserUGCRequest = class.steam_ugc:GetVFunction(0, 'UGCQueryHandle_t(__thiscall*)(void*, AccountID_t, EUserUGCList, EUGCMatchingUGCType, EUserUGCListSortOrder, AppId_t, AppId_t, uint32)'),
	CreateQueryAllUGCRequest = class.steam_ugc:GetVFunction(1, 'UGCQueryHandle_t(__thiscall*)(void*, EUGCQuery, EUGCMatchingUGCType, AppId_t, AppId_t, uint32)'),
	CreateQueryAllUGCRequest = class.steam_ugc:GetVFunction(2, 'UGCQueryHandle_t(__thiscall*)(void*, EUGCQuery, EUGCMatchingUGCType, AppId_t, AppId_t, const char*)'),
	CreateQueryUGCDetailsRequest = class.steam_ugc:GetVFunction(3, 'UGCQueryHandle_t(__thiscall*)(void*, PublishedFileId_t*, uint32)'),
	SendQueryUGCRequest = class.steam_ugc:GetVFunction(4, 'SteamAPICall_t(__thiscall*)(void*, UGCQueryHandle_t)'),
	GetQueryUGCResult = class.steam_ugc:GetVFunction(5, 'bool(__thiscall*)(void*, UGCQueryHandle_t, uint32, SteamUGCDetails_t*)'),
	GetQueryUGCPreviewURL = class.steam_ugc:GetVFunction(6, 'bool(__thiscall*)(void*, UGCQueryHandle_t, uint32, char*, uint32)'),
	GetQueryUGCMetadata = class.steam_ugc:GetVFunction(7, 'bool(__thiscall*)(void*, UGCQueryHandle_t, uint32, char*, uint32)'),
	GetQueryUGCChildren = class.steam_ugc:GetVFunction(8, 'bool(__thiscall*)(void*, UGCQueryHandle_t, uint32, PublishedFileId_t*, uint32)'),
	GetQueryUGCStatistic = class.steam_ugc:GetVFunction(9, 'bool(__thiscall*)(void*, UGCQueryHandle_t, uint32, EItemStatistic, uint64*)'),
	GetQueryUGCNumAdditionalPreviews = class.steam_ugc:GetVFunction(10, 'uint32(__thiscall*)(void*, UGCQueryHandle_t, uint32)'),
	GetQueryUGCAdditionalPreview = class.steam_ugc:GetVFunction(11, 'bool(__thiscall*)(void*, UGCQueryHandle_t, uint32, uint32, char*, uint32, char*, uint32, EItemPreviewType*)'),
	GetQueryUGCNumKeyValueTags = class.steam_ugc:GetVFunction(12, 'uint32(__thiscall*)(void*, UGCQueryHandle_t, uint32)'),
	GetQueryUGCKeyValueTag = class.steam_ugc:GetVFunction(13, 'bool(__thiscall*)(void*, UGCQueryHandle_t, uint32, uint32, char*, uint32, char*, uint32)'),
	ReleaseQueryUGCRequest = class.steam_ugc:GetVFunction(14, 'bool(__thiscall*)(void*, UGCQueryHandle_t)'),
	AddRequiredTag = class.steam_ugc:GetVFunction(15, 'bool(__thiscall*)(void*, UGCQueryHandle_t, const char*)'),
	AddExcludedTag = class.steam_ugc:GetVFunction(16, 'bool(__thiscall*)(void*, UGCQueryHandle_t, const char*)'),
	SetReturnOnlyIDs = class.steam_ugc:GetVFunction(17, 'bool(__thiscall*)(void*, UGCQueryHandle_t, bool)'),
	SetReturnKeyValueTags = class.steam_ugc:GetVFunction(18, 'bool(__thiscall*)(void*, UGCQueryHandle_t, bool)'),
	SetReturnLongDescription = class.steam_ugc:GetVFunction(19, 'bool(__thiscall*)(void*, UGCQueryHandle_t, bool)'),
	SetReturnMetadata = class.steam_ugc:GetVFunction(20, 'bool(__thiscall*)(void*, UGCQueryHandle_t, bool)'),
	SetReturnChildren = class.steam_ugc:GetVFunction(21, 'bool(__thiscall*)(void*, UGCQueryHandle_t, bool)'),
	SetReturnAdditionalPreviews = class.steam_ugc:GetVFunction(22, 'bool(__thiscall*)(void*, UGCQueryHandle_t, bool)'),
	SetReturnTotalOnly = class.steam_ugc:GetVFunction(23, 'bool(__thiscall*)(void*, UGCQueryHandle_t, bool)'),
	SetReturnPlaytimeStats = class.steam_ugc:GetVFunction(24, 'bool(__thiscall*)(void*, UGCQueryHandle_t, uint32)'),
	SetLanguage = class.steam_ugc:GetVFunction(25, 'bool(__thiscall*)(void*, UGCQueryHandle_t, const char*)'),
	SetAllowCachedResponse = class.steam_ugc:GetVFunction(26, 'bool(__thiscall*)(void*, UGCQueryHandle_t, uint32)'),
	SetCloudFileNameFilter = class.steam_ugc:GetVFunction(27, 'bool(__thiscall*)(void*, UGCQueryHandle_t, const char*)'),
	SetMatchAnyTag = class.steam_ugc:GetVFunction(28, 'bool(__thiscall*)(void*, UGCQueryHandle_t, bool)'),
	SetSearchText = class.steam_ugc:GetVFunction(29, 'bool(__thiscall*)(void*, UGCQueryHandle_t, const char*)'),
	SetRankedByTrendDays = class.steam_ugc:GetVFunction(30, 'bool(__thiscall*)(void*, UGCQueryHandle_t, uint32)'),
	AddRequiredKeyValueTag = class.steam_ugc:GetVFunction(31, 'bool(__thiscall*)(void*, UGCQueryHandle_t, const char*, const char*)'),
	RequestUGCDetails = class.steam_ugc:GetVFunction(32, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t, uint32)'),
	CreateItem = class.steam_ugc:GetVFunction(33, 'SteamAPICall_t(__thiscall*)(void*, AppId_t, EWorkshopFileType)'),
	StartItemUpdate = class.steam_ugc:GetVFunction(34, 'UGCUpdateHandle_t(__thiscall*)(void*, AppId_t, PublishedFileId_t)'),
	SetItemTitle = class.steam_ugc:GetVFunction(35, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, const char*)'),
	SetItemDescription = class.steam_ugc:GetVFunction(36, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, const char*)'),
	SetItemUpdateLanguage = class.steam_ugc:GetVFunction(37, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, const char*)'),
	SetItemMetadata = class.steam_ugc:GetVFunction(38, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, const char*)'),
	SetItemVisibility = class.steam_ugc:GetVFunction(39, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, ERemoteStoragePublishedFileVisibility)'),
	SetItemTags = class.steam_ugc:GetVFunction(40, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, const SteamParamStringArray_t*)'),
	SetItemContent = class.steam_ugc:GetVFunction(41, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, const char*)'),
	SetItemPreview = class.steam_ugc:GetVFunction(42, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, const char*)'),
	SetAllowLegacyUpload = class.steam_ugc:GetVFunction(43, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, bool)'),
	RemoveItemKeyValueTags = class.steam_ugc:GetVFunction(44, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, const char*)'),
	AddItemKeyValueTag = class.steam_ugc:GetVFunction(45, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, const char*, const char*)'),
	AddItemPreviewFile = class.steam_ugc:GetVFunction(46, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, const char*, EItemPreviewType)'),
	AddItemPreviewVideo = class.steam_ugc:GetVFunction(47, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, const char*)'),
	UpdateItemPreviewFile = class.steam_ugc:GetVFunction(48, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, uint32, const char*)'),
	UpdateItemPreviewVideo = class.steam_ugc:GetVFunction(49, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, uint32, const char*)'),
	RemoveItemPreview = class.steam_ugc:GetVFunction(50, 'bool(__thiscall*)(void*, UGCUpdateHandle_t, uint32)'),
	SubmitItemUpdate = class.steam_ugc:GetVFunction(51, 'SteamAPICall_t(__thiscall*)(void*, UGCUpdateHandle_t, const char*)'),
	GetItemUpdateProgress = class.steam_ugc:GetVFunction(52, 'EItemUpdateStatus(__thiscall*)(void*, UGCUpdateHandle_t, uint64*, uint64*)'),
	SetUserItemVote = class.steam_ugc:GetVFunction(53, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t, bool)'),
	GetUserItemVote = class.steam_ugc:GetVFunction(54, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t)'),
	AddItemToFavorites = class.steam_ugc:GetVFunction(55, 'SteamAPICall_t(__thiscall*)(void*, AppId_t, PublishedFileId_t)'),
	RemoveItemFromFavorites = class.steam_ugc:GetVFunction(56, 'SteamAPICall_t(__thiscall*)(void*, AppId_t, PublishedFileId_t)'),
	SubscribeItem = class.steam_ugc:GetVFunction(57, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t)'),
	UnsubscribeItem = class.steam_ugc:GetVFunction(58, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t)'),
	GetNumSubscribedItems = class.steam_ugc:GetVFunction(59, 'uint32(__thiscall*)(void*)'),
	GetSubscribedItems = class.steam_ugc:GetVFunction(60, 'uint32(__thiscall*)(void*, PublishedFileId_t*, uint32)'),
	GetItemState = class.steam_ugc:GetVFunction(61, 'uint32(__thiscall*)(void*, PublishedFileId_t)'),
	GetItemInstallInfo = class.steam_ugc:GetVFunction(62, 'bool(__thiscall*)(void*, PublishedFileId_t, uint64*, char*, uint32, uint32*)'),
	GetItemDownloadInfo = class.steam_ugc:GetVFunction(63, 'bool(__thiscall*)(void*, PublishedFileId_t, uint64*, uint64*)'),
	DownloadItem = class.steam_ugc:GetVFunction(64, 'bool(__thiscall*)(void*, PublishedFileId_t, bool)'),
	BInitWorkshopForGameServer = class.steam_ugc:GetVFunction(65, 'bool(__thiscall*)(void*, DepotId_t, const char*)'),
	SuspendDownloads = class.steam_ugc:GetVFunction(66, 'void(__thiscall*)(void*, bool)'),
	StartPlaytimeTracking = class.steam_ugc:GetVFunction(67, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t*, uint32)'),
	StopPlaytimeTracking = class.steam_ugc:GetVFunction(68, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t*, uint32)'),
	StopPlaytimeTrackingForAllItems = class.steam_ugc:GetVFunction(69, 'SteamAPICall_t(__thiscall*)(void*)'),
	AddDependency = class.steam_ugc:GetVFunction(70, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t, PublishedFileId_t)'),
	RemoveDependency = class.steam_ugc:GetVFunction(71, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t, PublishedFileId_t)'),
	AddAppDependency = class.steam_ugc:GetVFunction(72, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t, AppId_t)'),
	RemoveAppDependency = class.steam_ugc:GetVFunction(73, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t, AppId_t)'),
	GetAppDependencies = class.steam_ugc:GetVFunction(74, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t)'),
	DeleteItem = class.steam_ugc:GetVFunction(75, 'SteamAPICall_t(__thiscall*)(void*, PublishedFileId_t)'),
}
ISteamAppList = {
	GetNumInstalledApps = class.steam_applist:GetVFunction(0, 'uint32(__thiscall*)(void*)'),
	GetInstalledApps = class.steam_applist:GetVFunction(1, 'uint32(__thiscall*)(void*, AppId_t*, uint32)'),
	GetAppName = class.steam_applist:GetVFunction(2, 'int(__thiscall*)(void*, AppId_t, char*, int)'),
	GetAppInstallDir = class.steam_applist:GetVFunction(3, 'int(__thiscall*)(void*, AppId_t, char*, int)'),
	GetAppBuildId = class.steam_applist:GetVFunction(4, 'int(__thiscall*)(void*, AppId_t)'),
}
ISteamMusic = {
	BIsEnabled = class.steam_music:GetVFunction(0, 'bool(__thiscall*)(void*)'),
	BIsPlaying = class.steam_music:GetVFunction(1, 'bool(__thiscall*)(void*)'),
	GetPlaybackStatus = class.steam_music:GetVFunction(2, 'AudioPlayback_Status(__thiscall*)(void*)'),
	Play = class.steam_music:GetVFunction(3, 'void(__thiscall*)(void*)'),
	Pause = class.steam_music:GetVFunction(4, 'void(__thiscall*)(void*)'),
	PlayPrevious = class.steam_music:GetVFunction(5, 'void(__thiscall*)(void*)'),
	PlayNext = class.steam_music:GetVFunction(6, 'void(__thiscall*)(void*)'),
	SetVolume = class.steam_music:GetVFunction(7, 'void(__thiscall*)(void*, float)'),
	GetVolume = class.steam_music:GetVFunction(8, 'float(__thiscall*)(void*)'),
}
ISteamMusicRemote = {
	RegisterSteamMusicRemote = class.steam_musicremote:GetVFunction(0, 'bool(__thiscall*)(void*, const char*)'),
	DeregisterSteamMusicRemote = class.steam_musicremote:GetVFunction(1, 'bool(__thiscall*)(void*)'),
	BIsCurrentMusicRemote = class.steam_musicremote:GetVFunction(2, 'bool(__thiscall*)(void*)'),
	BActivationSuccess = class.steam_musicremote:GetVFunction(3, 'bool(__thiscall*)(void*, bool)'),
	SetDisplayName = class.steam_musicremote:GetVFunction(4, 'bool(__thiscall*)(void*, const char*)'),
	SetPNGIcon_64x64 = class.steam_musicremote:GetVFunction(5, 'bool(__thiscall*)(void*, void*, uint32)'),
	EnablePlayPrevious = class.steam_musicremote:GetVFunction(6, 'bool(__thiscall*)(void*, bool)'),
	EnablePlayNext = class.steam_musicremote:GetVFunction(7, 'bool(__thiscall*)(void*, bool)'),
	EnableShuffled = class.steam_musicremote:GetVFunction(8, 'bool(__thiscall*)(void*, bool)'),
	EnableLooped = class.steam_musicremote:GetVFunction(9, 'bool(__thiscall*)(void*, bool)'),
	EnableQueue = class.steam_musicremote:GetVFunction(10, 'bool(__thiscall*)(void*, bool)'),
	EnablePlaylists = class.steam_musicremote:GetVFunction(11, 'bool(__thiscall*)(void*, bool)'),
	UpdatePlaybackStatus = class.steam_musicremote:GetVFunction(12, 'bool(__thiscall*)(void*, AudioPlayback_Status)'),
	UpdateShuffled = class.steam_musicremote:GetVFunction(13, 'bool(__thiscall*)(void*, bool)'),
	UpdateLooped = class.steam_musicremote:GetVFunction(14, 'bool(__thiscall*)(void*, bool)'),
	UpdateVolume = class.steam_musicremote:GetVFunction(15, 'bool(__thiscall*)(void*, float)'),
	CurrentEntryWillChange = class.steam_musicremote:GetVFunction(16, 'bool(__thiscall*)(void*)'),
	CurrentEntryIsAvailable = class.steam_musicremote:GetVFunction(17, 'bool(__thiscall*)(void*, bool)'),
	UpdateCurrentEntryText = class.steam_musicremote:GetVFunction(18, 'bool(__thiscall*)(void*, const char*)'),
	UpdateCurrentEntryElapsedSeconds = class.steam_musicremote:GetVFunction(19, 'bool(__thiscall*)(void*, int)'),
	UpdateCurrentEntryCoverArt = class.steam_musicremote:GetVFunction(20, 'bool(__thiscall*)(void*, void*, uint32)'),
	CurrentEntryDidChange = class.steam_musicremote:GetVFunction(21, 'bool(__thiscall*)(void*)'),
	QueueWillChange = class.steam_musicremote:GetVFunction(22, 'bool(__thiscall*)(void*)'),
	ResetQueueEntries = class.steam_musicremote:GetVFunction(23, 'bool(__thiscall*)(void*)'),
	SetQueueEntry = class.steam_musicremote:GetVFunction(24, 'bool(__thiscall*)(void*, int, int, const char*)'),
	SetCurrentQueueEntry = class.steam_musicremote:GetVFunction(25, 'bool(__thiscall*)(void*, int)'),
	QueueDidChange = class.steam_musicremote:GetVFunction(26, 'bool(__thiscall*)(void*)'),
	PlaylistWillChange = class.steam_musicremote:GetVFunction(27, 'bool(__thiscall*)(void*)'),
	ResetPlaylistEntries = class.steam_musicremote:GetVFunction(28, 'bool(__thiscall*)(void*)'),
	SetPlaylistEntry = class.steam_musicremote:GetVFunction(29, 'bool(__thiscall*)(void*, int, int, const char*)'),
	SetCurrentPlaylistEntry = class.steam_musicremote:GetVFunction(30, 'bool(__thiscall*)(void*, int)'),
	PlaylistDidChange = class.steam_musicremote:GetVFunction(31, 'bool(__thiscall*)(void*)'),
}
ISteamHTMLSurface = {
	Init = class.steam_htmlsurface:GetVFunction(1, 'bool(__thiscall*)(void*)'),
	Shutdown = class.steam_htmlsurface:GetVFunction(2, 'bool(__thiscall*)(void*)'),
	CreateBrowser = class.steam_htmlsurface:GetVFunction(3, 'SteamAPICall_t(__thiscall*)(void*, const char*, const char*)'),
	RemoveBrowser = class.steam_htmlsurface:GetVFunction(4, 'void(__thiscall*)(void*, HHTMLBrowser)'),
	LoadURL = class.steam_htmlsurface:GetVFunction(5, 'void(__thiscall*)(void*, HHTMLBrowser, const char*, const char*)'),
	SetSize = class.steam_htmlsurface:GetVFunction(6, 'void(__thiscall*)(void*, HHTMLBrowser, uint32, uint32)'),
	StopLoad = class.steam_htmlsurface:GetVFunction(7, 'void(__thiscall*)(void*, HHTMLBrowser)'),
	Reload = class.steam_htmlsurface:GetVFunction(8, 'void(__thiscall*)(void*, HHTMLBrowser)'),
	GoBack = class.steam_htmlsurface:GetVFunction(9, 'void(__thiscall*)(void*, HHTMLBrowser)'),
	GoForward = class.steam_htmlsurface:GetVFunction(10, 'void(__thiscall*)(void*, HHTMLBrowser)'),
	AddHeader = class.steam_htmlsurface:GetVFunction(11, 'void(__thiscall*)(void*, HHTMLBrowser, const char*, const char*)'),
	ExecuteJavascript = class.steam_htmlsurface:GetVFunction(12, 'void(__thiscall*)(void*, HHTMLBrowser, const char*)'),
	MouseUp = class.steam_htmlsurface:GetVFunction(13, 'void(__thiscall*)(void*, HHTMLBrowser, EHTMLMouseButton)'),
	MouseDown = class.steam_htmlsurface:GetVFunction(14, 'void(__thiscall*)(void*, HHTMLBrowser, EHTMLMouseButton)'),
	MouseDoubleClick = class.steam_htmlsurface:GetVFunction(15, 'void(__thiscall*)(void*, HHTMLBrowser, EHTMLMouseButton)'),
	MouseMove = class.steam_htmlsurface:GetVFunction(16, 'void(__thiscall*)(void*, HHTMLBrowser, int, int)'),
	MouseWheel = class.steam_htmlsurface:GetVFunction(17, 'void(__thiscall*)(void*, HHTMLBrowser, int32)'),
	KeyDown = class.steam_htmlsurface:GetVFunction(18, 'void(__thiscall*)(void*, HHTMLBrowser, uint32, EHTMLKeyModifiers, bool)'),
	KeyUp = class.steam_htmlsurface:GetVFunction(19, 'void(__thiscall*)(void*, HHTMLBrowser, uint32, EHTMLKeyModifiers)'),
	KeyChar = class.steam_htmlsurface:GetVFunction(20, 'void(__thiscall*)(void*, HHTMLBrowser, uint32, EHTMLKeyModifiers)'),
	SetHorizontalScroll = class.steam_htmlsurface:GetVFunction(21, 'void(__thiscall*)(void*, HHTMLBrowser, uint32)'),
	SetVerticalScroll = class.steam_htmlsurface:GetVFunction(22, 'void(__thiscall*)(void*, HHTMLBrowser, uint32)'),
	SetKeyFocus = class.steam_htmlsurface:GetVFunction(23, 'void(__thiscall*)(void*, HHTMLBrowser, bool)'),
	ViewSource = class.steam_htmlsurface:GetVFunction(24, 'void(__thiscall*)(void*, HHTMLBrowser)'),
	CopyToClipboard = class.steam_htmlsurface:GetVFunction(25, 'void(__thiscall*)(void*, HHTMLBrowser)'),
	PasteFromClipboard = class.steam_htmlsurface:GetVFunction(26, 'void(__thiscall*)(void*, HHTMLBrowser)'),
	Find = class.steam_htmlsurface:GetVFunction(27, 'void(__thiscall*)(void*, HHTMLBrowser, const char*, bool, bool)'),
	StopFind = class.steam_htmlsurface:GetVFunction(28, 'void(__thiscall*)(void*, HHTMLBrowser)'),
	GetLinkAtPosition = class.steam_htmlsurface:GetVFunction(29, 'void(__thiscall*)(void*, HHTMLBrowser, int, int)'),
	SetCookie = class.steam_htmlsurface:GetVFunction(30, 'void(__thiscall*)(void*, const char*, const char*, const char*, const char*, RTime32, bool, bool)'),
	SetPageScaleFactor = class.steam_htmlsurface:GetVFunction(31, 'void(__thiscall*)(void*, HHTMLBrowser, float, int, int)'),
	SetBackgroundMode = class.steam_htmlsurface:GetVFunction(32, 'void(__thiscall*)(void*, HHTMLBrowser, bool)'),
	SetDPIScalingFactor = class.steam_htmlsurface:GetVFunction(33, 'void(__thiscall*)(void*, HHTMLBrowser, float)'),
	OpenDeveloperTools = class.steam_htmlsurface:GetVFunction(34, 'void(__thiscall*)(void*, HHTMLBrowser)'),
	AllowStartRequest = class.steam_htmlsurface:GetVFunction(35, 'void(__thiscall*)(void*, HHTMLBrowser, bool)'),
	JSDialogResponse = class.steam_htmlsurface:GetVFunction(36, 'void(__thiscall*)(void*, HHTMLBrowser, bool)'),
	FileLoadDialogResponse = class.steam_htmlsurface:GetVFunction(37, 'void(__thiscall*)(void*, HHTMLBrowser, const char*)'),
}
ISteamInventory = {
	GetResultStatus = class.steam_inventory:GetVFunction(0, 'EResult(__thiscall*)(void*, SteamInventoryResult_t)'),
	GetResultItems = class.steam_inventory:GetVFunction(1, 'bool(__thiscall*)(void*, SteamInventoryResult_t)'),
	GetResultItemProperty = class.steam_inventory:GetVFunction(2, 'bool(__thiscall*)(void*, SteamInventoryResult_t)'),
	GetResultTimestamp = class.steam_inventory:GetVFunction(3, 'uint32(__thiscall*)(void*, SteamInventoryResult_t)'),
	CheckResultSteamID = class.steam_inventory:GetVFunction(4, 'bool(__thiscall*)(void*, SteamInventoryResult_t, CSteamID)'),
	DestroyResult = class.steam_inventory:GetVFunction(5, 'void(__thiscall*)(void*, SteamInventoryResult_t)'),
	GetAllItems = class.steam_inventory:GetVFunction(6, 'bool(__thiscall*)(void*, SteamInventoryResult_t*)'),
	GetItemsByID = class.steam_inventory:GetVFunction(7, 'bool(__thiscall*)(void*, SteamInventoryResult_t*, const SteamItemInstanceID_t*, uint32)'),
	SerializeResult = class.steam_inventory:GetVFunction(8, 'bool(__thiscall*)(void*, SteamInventoryResult_t, void*, uint32*)'),
	DeserializeResult = class.steam_inventory:GetVFunction(9, 'bool(__thiscall*)(void*, SteamInventoryResult_t*, const void*, uint32, bool)'),
	GenerateItems = class.steam_inventory:GetVFunction(10, 'bool(__thiscall*)(void*, SteamInventoryResult_t*, const SteamItemDef_t*, const uint32*, uint32)'),
	GrantPromoItems = class.steam_inventory:GetVFunction(11, 'bool(__thiscall*)(void*, SteamInventoryResult_t*)'),
	AddPromoItem = class.steam_inventory:GetVFunction(12, 'bool(__thiscall*)(void*, SteamInventoryResult_t*, SteamItemDef_t)'),
	AddPromoItems = class.steam_inventory:GetVFunction(13, 'bool(__thiscall*)(void*, SteamInventoryResult_t*, const SteamItemDef_t*, uint32)'),
	ConsumeItem = class.steam_inventory:GetVFunction(14, 'bool(__thiscall*)(void*, SteamInventoryResult_t*, SteamItemInstanceID_t, uint32)'),
	ExchangeItems = class.steam_inventory:GetVFunction(15, 'bool(__thiscall*)(void*, SteamInventoryResult_t*)'),
	TransferItemQuantity = class.steam_inventory:GetVFunction(16, 'bool(__thiscall*)(void*, SteamInventoryResult_t*, SteamItemInstanceID_t, uint32, SteamItemInstanceID_t)'),
	SendItemDropHeartbeat = class.steam_inventory:GetVFunction(17, 'void(__thiscall*)(void*)'),
	TriggerItemDrop = class.steam_inventory:GetVFunction(18, 'bool(__thiscall*)(void*, SteamInventoryResult_t*, SteamItemDef_t)'),
	TradeItems = class.steam_inventory:GetVFunction(19, 'bool(__thiscall*)(void*, SteamInventoryResult_t*, CSteamID)'),
	LoadItemDefinitions = class.steam_inventory:GetVFunction(20, 'bool(__thiscall*)(void*)'),
	GetItemDefinitionIDs = class.steam_inventory:GetVFunction(21, 'bool(__thiscall*)(void*)'),
	GetItemDefinitionProperty = class.steam_inventory:GetVFunction(22, 'bool(__thiscall*)(void*, SteamItemDef_t, const char*, char*, uint32*)'),
	RequestEligiblePromoItemDefinitionsIDs = class.steam_inventory:GetVFunction(23, 'SteamAPICall_t(__thiscall*)(void*, CSteamID)'),
	GetEligiblePromoItemDefinitionIDs = class.steam_inventory:GetVFunction(24, 'bool(__thiscall*)(void*, CSteamID, SteamItemDef_t*, uint32*)'),
	StartPurchase = class.steam_inventory:GetVFunction(25, 'SteamAPICall_t(__thiscall*)(void*, const SteamItemDef_t*, const uint32*, uint32)'),
	RequestPrices = class.steam_inventory:GetVFunction(26, 'SteamAPICall_t(__thiscall*)(void*)'),
	GetNumItemsWithPrices = class.steam_inventory:GetVFunction(27, 'uint32(__thiscall*)(void*)'),
	GetItemsWithPrices = class.steam_inventory:GetVFunction(28, 'bool(__thiscall*)(void*, SteamItemDef_t*, uint64*, uint64*, uint32)'),
	GetItemPrice = class.steam_inventory:GetVFunction(29, 'bool(__thiscall*)(void*, SteamItemDef_t, uint64*, uint64*)'),
	StartUpdateProperties = class.steam_inventory:GetVFunction(30, 'SteamInventoryUpdateHandle_t(__thiscall*)(void*)'),
	RemoveProperty = class.steam_inventory:GetVFunction(31, 'bool(__thiscall*)(void*, SteamInventoryUpdateHandle_t, SteamItemInstanceID_t, const char*)'),
	SetPropertyFloat = class.steam_inventory:GetVFunction(32, 'bool(__thiscall*)(void*, SteamInventoryUpdateHandle_t, SteamItemInstanceID_t, const char*, float)'),
	SetPropertyInt64 = class.steam_inventory:GetVFunction(33, 'bool(__thiscall*)(void*, SteamInventoryUpdateHandle_t, SteamItemInstanceID_t, const char*, int64)'),
	SetPropertyBool = class.steam_inventory:GetVFunction(34, 'bool(__thiscall*)(void*, SteamInventoryUpdateHandle_t, SteamItemInstanceID_t, const char*, bool)'),
	SetPropertyChar = class.steam_inventory:GetVFunction(35, 'bool(__thiscall*)(void*, SteamInventoryUpdateHandle_t, SteamItemInstanceID_t, const char*, const char*)'),
	SubmitUpdateProperties = class.steam_inventory:GetVFunction(36, 'bool(__thiscall*)(void*, SteamInventoryUpdateHandle_t, SteamInventoryResult_t*)'),
}
ISteamVideo = {
	GetVideoURL = class.steam_video:GetVFunction(0, 'void(__thiscall*)(void*, AppId_t)'),
	IsBroadcasting = class.steam_video:GetVFunction(1, 'bool(__thiscall*)(void*, int*)'),
	GetOPFSettings = class.steam_video:GetVFunction(2, 'void(__thiscall*)(void*, AppId_t)'),
	GetOPFStringForApp = class.steam_video:GetVFunction(3, 'bool(__thiscall*)(void*, AppId_t, char*, int32*)'),
}
