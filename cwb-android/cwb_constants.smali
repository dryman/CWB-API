.class public Lorg/cwb/cwb_constants;
.super Ljava/lang/Object;
.source "cwb_constants.java"


# static fields
.field public static final ACTION_CWB_CHANGE_ACTIVITY:Ljava/lang/String; = "cwb.CHANGE_ACTIVITY"

.field public static final ACTION_CWB_PERIOD_CHECK:Ljava/lang/String; = "cwb.PERIOD_CHECK"

.field public static final ACTION_CWB_REMOVESELF:Ljava/lang/String; = "cwb.REMOVE_SELF"

.field public static final ACTION_CWB_SET_WARN:Ljava/lang/String; = "cwb.SET_WARNICON"

.field public static final ACTIVITYNAME:Ljava/lang/String; = "activity name"

.field public static final CLASSNAME:Ljava/lang/String; = "class_name"

.field public static final CURRENTTABINDEX:Ljava/lang/String; = "current_tab"

.field public static final CWB_FEED2_LINK_ALLCITY:Ljava/lang/String; = "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac$s&type=1"

.field public static final CWB_FISH:Ljava/lang/String; = "cwb_fish"

.field public static final CWB_FISH_AREA:Ljava/lang/String; = "area"

.field public static final CWB_FORECAST_AREA:Ljava/lang/String; = "area"

.field public static final CWB_FORECAST_COUNTYNAMEINDEX:Ljava/lang/String; = "countyNameIndex"

.field public static final CWB_FORECAST_FROMLISTPAGE:Ljava/lang/String; = "forecast_from_listpage"

.field public static final CWB_FORECAST_TRAVEL:Ljava/lang/String; = "travel"

.field public static final CWB_FORECAST_TWONSHIPINDEX:Ljava/lang/String; = "townShipIndex"

.field public static final CWB_FORECAST_UPDATEINTENT:Ljava/lang/String; = "forecast_update_unitdata"

.field public static final CWB_GRAPHIC_CITYID:Ljava/lang/String; = "graphic_cityid"

.field public static final CWB_GRAPHIC_CITYNAME:Ljava/lang/String; = "graphic_cityname"

.field public static final CWB_LIFE_CITYID:Ljava/lang/String; = "city_id"

.field public static final CWB_NOW_STATION:Ljava/lang/String; = "station"

.field public static final CWB_NOW_WARN:Ljava/lang/String; = "warn"

.field public static final CWB_URL:Ljava/lang/String; = "CWB_URL"

.field public static final DEBUG:Z = false

.field public static final FISH_GROUP_INDEX:I = 0x4

.field public static final FORECAST_GROUP_INDEX:I = 0x3

.field public static final GRAPHIC_GROUP_INDEX:I = 0x0

.field public static final GROUPINDEX:Ljava/lang/String; = "group_index"

.field public static final LAST_INTENT_KEY_NAME:Ljava/lang/String; = "NAME"

.field public static final MORE_GROUP_INDEX:I = 0x1

.field public static final NOW_GROUP_INDEX:I = 0x2

.field public static final PACKAGENAME:Ljava/lang/String; = "package_name"

.field public static final PARSER_MYLOCATION_SUCCESS:I = 0x1

.field public static final PARSER_WARNING_SUCCESS:I = 0x0

.field public static final PREFERENCE_CURRENT_STATION:Ljava/lang/String; = "station"

.field public static final PREFERENCE_DEFAULTSTATION:Ljava/lang/String; = "\u53f0\u5317"

.field public static final PREFERENCE_FAVAOR_STATION_LIST:Ljava/lang/String; = "favor_station_list"

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "cwb_preference"

.field public static final PREFERENCE_TEMP_UNIT:Ljava/lang/String; = "temp_unit"

.field public static final PREFERENCE_WIND_VALUE:Ljava/lang/String; = "wind_value"

.field public static final SEARCH_INTENT_KEY_NAME:Ljava/lang/String; = "NAME"

.field public static final SEARCH_INTENT_KEY_STATIONLIST:Ljava/lang/String; = "stationlist"

.field public static final TYPE_MYLOCATION:I = 0x2

.field public static final TYPE_WARN:I = 0x1

.field public static final VIEWLAYER1:I = 0x1

.field public static final VIEWLAYER2:I = 0x2

.field public static final VIEWLAYER3:I = 0x3

.field public static final VIEWLAYER4:I = 0x4

.field public static final VIEWLAYERID:Ljava/lang/String; = "view_layer_id"

.field public static final WARNDATA_CONTENT:Ljava/lang/String; = "warmDataContent"

.field public static final WARNDATA_TIME:Ljava/lang/String; = "warmDataTime"

.field public static final WARNDATA_TITLE:Ljava/lang/String; = "warmDataTitle"

.field public static bNeedChangeDefaultWeatherBackground:Z = false

.field public static bNeedReloadFavoList:Z = false

.field public static canFlip:Z = false

.field public static cityList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static context:Landroid/content/Context; = null

.field public static countyID:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static countyNameArray:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static defaultTownID:Ljava/lang/String; = null

.field public static defaultTownTitle:Ljava/lang/String; = null

.field public static defaultWeatherBackground:Ljava/lang/String; = null

.field public static fishDetailGroup:Landroid/app/ActivityGroup; = null

.field public static flipperView:Landroid/view/View; = null

.field public static forecast_group:Landroid/app/Activity; = null

.field public static lifeFirstTimeInitial:Z = false

.field public static mLocationManager:Landroid/location/LocationManager; = null

.field public static nowFirstTimeInitial:Z = false

.field public static observeStationName:Ljava/lang/String; = null

.field public static selectedStid:Ljava/lang/String; = null

.field public static stidList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static townCityMapList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static townShipID:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final userID:Ljava/lang/String; = "aiad"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cwb/cwb_constants;->countyNameArray:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cwb/cwb_constants;->countyID:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cwb/cwb_constants;->townShipID:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cwb/cwb_constants;->cityList:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cwb/cwb_constants;->stidList:Ljava/util/ArrayList;

    .line 91
    const-string v0, ""

    sput-object v0, Lorg/cwb/cwb_constants;->selectedStid:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    .line 93
    const-string v0, "1000209"

    sput-object v0, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    .line 94
    const-string v0, "\u5b9c\u862d\u7e23"

    sput-object v0, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    .line 95
    const-string v0, "w1_d1"

    sput-object v0, Lorg/cwb/cwb_constants;->defaultWeatherBackground:Ljava/lang/String;

    .line 96
    sput-boolean v2, Lorg/cwb/cwb_constants;->bNeedChangeDefaultWeatherBackground:Z

    .line 97
    sput-boolean v2, Lorg/cwb/cwb_constants;->bNeedReloadFavoList:Z

    .line 98
    const-string v0, ""

    sput-object v0, Lorg/cwb/cwb_constants;->observeStationName:Ljava/lang/String;

    .line 100
    sput-boolean v1, Lorg/cwb/cwb_constants;->canFlip:Z

    .line 104
    sput-boolean v1, Lorg/cwb/cwb_constants;->lifeFirstTimeInitial:Z

    .line 105
    sput-boolean v1, Lorg/cwb/cwb_constants;->nowFirstTimeInitial:Z

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
