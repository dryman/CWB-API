.class public Lorg/cwb/cwb_forecast_2012_expandableList;
.super Lcom/google/android/maps/MapActivity;
.source "cwb_forecast_2012_expandableList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_forecast_2012_expandableList$childExpandViewHolder;,
        Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;,
        Lorg/cwb/cwb_forecast_2012_expandableList$groupExpandViewHolder;,
        Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;,
        Lorg/cwb/cwb_forecast_2012_expandableList$load3HoursWeatherCondition;,
        Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;,
        Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;,
        Lorg/cwb/cwb_forecast_2012_expandableList$myReceiver;,
        Lorg/cwb/cwb_forecast_2012_expandableList$viewState;,
        Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;
    }
.end annotation


# static fields
.field private static act:Landroid/app/Activity; = null

.field private static afterTomoDay:Ljava/lang/String; = null

.field private static afterTomoMonth:Ljava/lang/String; = null

.field private static aftertomoDataArray:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;",
            ">;"
        }
    .end annotation
.end field

.field private static bCallFromMainPage:Z = false

.field private static bCouldNotFindLocation:Z = false

.field private static bDataOK:Z = false

.field private static bPosByManual:Z = false

.field private static bUpdateFromTownSpinner:Z = false

.field private static calendar:Ljava/util/Calendar; = null

.field private static countyIndex:I = 0x0

.field private static every3HoursDataSize:I = 0x0

.field private static expandableList:Landroid/widget/ExpandableListView; = null

.field private static final getSomeDayWeather:Ljava/lang/String; = "http://app.cwb.gov.tw/ws/feed.php?userid=f9845dae54a3b9247582&type=5&townid=%1$s&day=%2$s"

.field private static final getTownURL:Ljava/lang/String; = "http://app.cwb.gov.tw/ws/feed.php?userid=f9845dae54a3b9247582&type=1&townid="

.field private static final getTownWeatherFor3HourURL:Ljava/lang/String; = "http://app.cwb.gov.tw/ws/feed.php?userid=f9845dae54a3b9247582&type=4&townid="

.field private static oldCountyIndex:I

.field private static tomoDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;",
            ">;"
        }
    .end annotation
.end field

.field private static tomoDay:Ljava/lang/String;

.field private static tomoMonth:Ljava/lang/String;

.field private static townShipIDString:Ljava/lang/String;

.field private static townShipIndex:I

.field private static withDropDownIconIndex:I


# instance fields
.field private dataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private mo:Lcom/google/android/maps/MyLocationOverlay;

.field private mv:Lcom/google/android/maps/MapView;

.field private pd:Landroid/app/ProgressDialog;

.field private receiver:Lorg/cwb/cwb_forecast_2012_expandableList$myReceiver;

.field private townNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private townShipID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->tomoDataArray:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->aftertomoDataArray:Ljava/util/ArrayList;

    .line 60
    const-string v0, ""

    sput-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIDString:Ljava/lang/String;

    .line 61
    sput v1, Lorg/cwb/cwb_forecast_2012_expandableList;->withDropDownIconIndex:I

    .line 62
    sput v1, Lorg/cwb/cwb_forecast_2012_expandableList;->every3HoursDataSize:I

    .line 63
    sput v2, Lorg/cwb/cwb_forecast_2012_expandableList;->countyIndex:I

    .line 64
    sput v2, Lorg/cwb/cwb_forecast_2012_expandableList;->oldCountyIndex:I

    .line 65
    sput v2, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIndex:I

    .line 66
    sput-boolean v1, Lorg/cwb/cwb_forecast_2012_expandableList;->bUpdateFromTownSpinner:Z

    .line 67
    sput-boolean v1, Lorg/cwb/cwb_forecast_2012_expandableList;->bCallFromMainPage:Z

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    .line 71
    const-string v0, ""

    sput-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->tomoMonth:Ljava/lang/String;

    .line 72
    const-string v0, ""

    sput-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->tomoDay:Ljava/lang/String;

    .line 73
    const-string v0, ""

    sput-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->afterTomoMonth:Ljava/lang/String;

    .line 74
    const-string v0, ""

    sput-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->afterTomoDay:Ljava/lang/String;

    .line 345
    sput-boolean v1, Lorg/cwb/cwb_forecast_2012_expandableList;->bPosByManual:Z

    .line 346
    sput-boolean v1, Lorg/cwb/cwb_forecast_2012_expandableList;->bCouldNotFindLocation:Z

    .line 752
    sput-boolean v1, Lorg/cwb/cwb_forecast_2012_expandableList;->bDataOK:Z

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->townNameList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipID:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->dataArray:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;

    .line 245
    new-instance v0, Lorg/cwb/cwb_forecast_2012_expandableList$myReceiver;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_forecast_2012_expandableList$myReceiver;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->receiver:Lorg/cwb/cwb_forecast_2012_expandableList$myReceiver;

    .line 47
    return-void
.end method

.method private HasNetwork()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1345
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_2012_expandableList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1346
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1347
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1348
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1349
    :goto_1e
    return v3

    :cond_1f
    move v3, v4

    goto :goto_1e
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->act:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1()Landroid/widget/ExpandableListView;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->expandableList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$10(Lorg/cwb/cwb_forecast_2012_expandableList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-direct {p0, p1, p2}, Lorg/cwb/cwb_forecast_2012_expandableList;->getFutrueDate(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lorg/cwb/cwb_forecast_2012_expandableList;)Z
    .registers 2
    .parameter

    .prologue
    .line 487
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->loadEvery3HoursWeatherData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lorg/cwb/cwb_forecast_2012_expandableList;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 675
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->loadTitleTownName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lorg/cwb/cwb_forecast_2012_expandableList;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->townNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$14()I
    .registers 1

    .prologue
    .line 65
    sget v0, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIndex:I

    return v0
.end method

.method static synthetic access$15()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->tomoDataArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$16()Ljava/lang/String;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIDString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17()Ljava/lang/String;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->tomoMonth:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18()Ljava/lang/String;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->tomoDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->aftertomoDataArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cwb/cwb_forecast_2012_expandableList;)Lcom/google/android/maps/MyLocationOverlay;
    .registers 2
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->mo:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$20()Ljava/lang/String;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->afterTomoMonth:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21()Ljava/lang/String;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->afterTomoDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22()Z
    .registers 1

    .prologue
    .line 752
    sget-boolean v0, Lorg/cwb/cwb_forecast_2012_expandableList;->bDataOK:Z

    return v0
.end method

.method static synthetic access$23(Z)V
    .registers 1
    .parameter

    .prologue
    .line 752
    sput-boolean p0, Lorg/cwb/cwb_forecast_2012_expandableList;->bDataOK:Z

    return-void
.end method

.method static synthetic access$24()I
    .registers 1

    .prologue
    .line 64
    sget v0, Lorg/cwb/cwb_forecast_2012_expandableList;->oldCountyIndex:I

    return v0
.end method

.method static synthetic access$25(Lorg/cwb/cwb_forecast_2012_expandableList;)Lcom/google/android/maps/MapView;
    .registers 2
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->mv:Lcom/google/android/maps/MapView;

    return-object v0
.end method

.method static synthetic access$26(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    .registers 1
    .parameter

    .prologue
    .line 1352
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->reset()V

    return-void
.end method

.method static synthetic access$27(I)V
    .registers 1
    .parameter

    .prologue
    .line 64
    sput p0, Lorg/cwb/cwb_forecast_2012_expandableList;->oldCountyIndex:I

    return-void
.end method

.method static synthetic access$28()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lorg/cwb/cwb_forecast_2012_expandableList;->every3HoursDataSize:I

    return v0
.end method

.method static synthetic access$29(Lorg/cwb/cwb_forecast_2012_expandableList;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->dataArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cwb/cwb_forecast_2012_expandableList;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lorg/cwb/cwb_forecast_2012_expandableList;->load368Towns(I)V

    return-void
.end method

.method static synthetic access$30()I
    .registers 1

    .prologue
    .line 61
    sget v0, Lorg/cwb/cwb_forecast_2012_expandableList;->withDropDownIconIndex:I

    return v0
.end method

.method static synthetic access$31(I)V
    .registers 1
    .parameter

    .prologue
    .line 65
    sput p0, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIndex:I

    return-void
.end method

.method static synthetic access$32(Z)V
    .registers 1
    .parameter

    .prologue
    .line 66
    sput-boolean p0, Lorg/cwb/cwb_forecast_2012_expandableList;->bUpdateFromTownSpinner:Z

    return-void
.end method

.method static synthetic access$33(I)V
    .registers 1
    .parameter

    .prologue
    .line 63
    sput p0, Lorg/cwb/cwb_forecast_2012_expandableList;->countyIndex:I

    return-void
.end method

.method static synthetic access$34()Z
    .registers 1

    .prologue
    .line 345
    sget-boolean v0, Lorg/cwb/cwb_forecast_2012_expandableList;->bPosByManual:Z

    return v0
.end method

.method static synthetic access$35(Ljava/lang/String;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    sput-object p0, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIDString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Z)V
    .registers 1
    .parameter

    .prologue
    .line 346
    sput-boolean p0, Lorg/cwb/cwb_forecast_2012_expandableList;->bCouldNotFindLocation:Z

    return-void
.end method

.method static synthetic access$5(Lorg/cwb/cwb_forecast_2012_expandableList;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6()Z
    .registers 1

    .prologue
    .line 346
    sget-boolean v0, Lorg/cwb/cwb_forecast_2012_expandableList;->bCouldNotFindLocation:Z

    return v0
.end method

.method static synthetic access$7(Z)V
    .registers 1
    .parameter

    .prologue
    .line 345
    sput-boolean p0, Lorg/cwb/cwb_forecast_2012_expandableList;->bPosByManual:Z

    return-void
.end method

.method static synthetic access$8()I
    .registers 1

    .prologue
    .line 63
    sget v0, Lorg/cwb/cwb_forecast_2012_expandableList;->countyIndex:I

    return v0
.end method

.method static synthetic access$9(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    .registers 1
    .parameter

    .prologue
    .line 406
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->updateData()V

    return-void
.end method

.method private getFutrueDate(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;>;"
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 422
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 423
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 425
    .local v9, rp:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_4b

    .line 426
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 427
    .local v5, in:Ljava/io/BufferedReader;
    const-string v6, ""

    .line 428
    .local v6, line:Ljava/lang/String;
    const-string v1, ""

    .line 429
    .local v1, content:Ljava/lang/String;
    :goto_30
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4c

    .line 433
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 434
    .local v8, object:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3c
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v4, v10, :cond_5e

    .line 464
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 469
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :cond_4b
    :goto_4b
    return-void

    .line 430
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v9       #rp:Lorg/apache/http/HttpResponse;
    :cond_4c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    .line 435
    .restart local v4       #i:I
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_5e
    new-instance v7, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-direct {v7, p0}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    .line 436
    .local v7, obj:Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 437
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 438
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 439
    const-string v11, "Data_date"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 436
    invoke-virtual {v7, v10}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setDataDate(Ljava/lang/String;)V

    .line 440
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 441
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 442
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 443
    const-string v11, "Day_night"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 440
    invoke-virtual {v7, v10}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setDayNight(Ljava/lang/String;)V

    .line 444
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 445
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 446
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 447
    const-string v11, "T"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 444
    invoke-virtual {v7, v10}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setMaxT(Ljava/lang/String;)V

    .line 448
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 449
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 450
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 451
    const-string v11, "T"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 448
    invoke-virtual {v7, v10}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setMinT(Ljava/lang/String;)V

    .line 452
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 453
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 454
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 455
    const-string v11, "PoP"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 452
    invoke-virtual {v7, v10}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setPoP(Ljava/lang/String;)V

    .line 456
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 457
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 458
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 459
    const-string v11, "Wx_Icon"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 456
    invoke-virtual {v7, v10}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setWxicon(Ljava/lang/String;)V

    .line 460
    const v10, 0x7f03000c

    invoke-virtual {v7, v10}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setLayoutRES(I)V

    .line 461
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_102} :catch_106

    .line 434
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3c

    .line 466
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #obj:Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :catch_106
    move-exception v2

    .line 467
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4b
.end method

.method private load368Towns(I)V
    .registers 12
    .parameter "zipCode"

    .prologue
    .line 292
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 294
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 292
    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 298
    .local v3, in:Ljava/io/BufferedReader;
    const-string v5, ""

    .line 299
    .local v5, line:Ljava/lang/String;
    const-string v0, ""

    .line 300
    .local v0, content:Ljava/lang/String;
    :goto_19
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_35

    .line 304
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 305
    .local v6, object:Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_25
    const-string v7, "Areas"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v2, v7, :cond_47

    .line 338
    :goto_31
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 343
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #object:Lorg/json/JSONObject;
    :goto_34
    return-void

    .line 301
    .restart local v0       #content:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    :cond_35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 306
    .restart local v2       #i:I
    .restart local v6       #object:Lorg/json/JSONObject;
    :cond_47
    const-string v7, "Areas"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 307
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 308
    const-string v8, "town"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 309
    const-string v8, "zipcode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 306
    if-ne v7, p1, :cond_101

    .line 311
    const/4 v4, 0x0

    .local v4, j:I
    :goto_60
    sget-object v7, Lorg/cwb/cwb_constants;->countyID:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_d5

    .line 322
    :goto_68
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "zipcode : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "townShipIDString : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIDString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Areas"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 325
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 326
    const-string v9, "town"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 327
    const-string v9, "TownshipID"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 324
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIDString:Ljava/lang/String;

    .line 328
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "townShipIDString : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIDString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_cd} :catch_cf

    goto/16 :goto_31

    .line 340
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #j:I
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #object:Lorg/json/JSONObject;
    :catch_cf
    move-exception v1

    .line 341
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_34

    .line 312
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #content:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #j:I
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #object:Lorg/json/JSONObject;
    :cond_d5
    :try_start_d5
    const-string v7, "Areas"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 313
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 314
    const-string v8, "town"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 315
    const-string v8, "CountyID"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    sget-object v7, Lorg/cwb/cwb_constants;->countyID:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 312
    if-ne v8, v7, :cond_fd

    .line 316
    sput v4, Lorg/cwb/cwb_forecast_2012_expandableList;->countyIndex:I
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_fb} :catch_cf

    goto/16 :goto_68

    .line 311
    :cond_fd
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_60

    .line 305
    .end local v4           #j:I
    :cond_101
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_25
.end method

.method private loadEvery3HoursWeatherData()Z
    .registers 19

    .prologue
    .line 489
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v5, every3hours:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v3, dayInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v11, nightInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;>;"
    :try_start_f
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 495
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "http://app.cwb.gov.tw/ws/feed.php?userid=f9845dae54a3b9247582&type=4&townid="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIDString:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 496
    .local v6, get:Lorg/apache/http/client/methods/HttpGet;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "http://app.cwb.gov.tw/ws/feed.php?userid=f9845dae54a3b9247582&type=4&townid="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIDString:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 497
    invoke-interface {v1, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 499
    .local v14, rp:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v15, v0, :cond_2a5

    .line 500
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 501
    .local v8, in:Ljava/io/BufferedReader;
    const-string v9, ""

    .line 502
    .local v9, line:Ljava/lang/String;
    const-string v2, ""

    .line 503
    .local v2, content:Ljava/lang/String;
    :goto_68
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b5

    .line 507
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 508
    .local v13, object:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_74
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v7, v15, :cond_c7

    .line 562
    const/4 v7, 0x0

    :goto_81
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v7, v15, :cond_171

    .line 610
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cwb/cwb_forecast_2012_expandableList;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 611
    const/4 v7, 0x0

    :goto_95
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v7, v15, :cond_263

    .line 618
    const/4 v7, 0x0

    :goto_9c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v7, v15, :cond_27c

    .line 626
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    sput v15, Lorg/cwb/cwb_forecast_2012_expandableList;->every3HoursDataSize:I

    .line 627
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, 0x2

    sput v15, Lorg/cwb/cwb_forecast_2012_expandableList;->withDropDownIconIndex:I

    .line 630
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 632
    const/4 v15, 0x1

    .line 638
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v6           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #i:I
    .end local v8           #in:Ljava/io/BufferedReader;
    .end local v9           #line:Ljava/lang/String;
    .end local v13           #object:Lorg/json/JSONObject;
    .end local v14           #rp:Lorg/apache/http/HttpResponse;
    :goto_b4
    return v15

    .line 504
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #content:Ljava/lang/String;
    .restart local v6       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #in:Ljava/io/BufferedReader;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v14       #rp:Lorg/apache/http/HttpResponse;
    :cond_b5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_c5} :catch_29e

    move-result-object v2

    goto :goto_68

    .line 510
    .restart local v7       #i:I
    .restart local v13       #object:Lorg/json/JSONObject;
    :cond_c7
    :try_start_c7
    new-instance v12, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    .line 511
    .local v12, obj:Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 512
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 513
    const-string v16, "town_3hr"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 514
    const-string v16, "Data_date"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 511
    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setDataDate(Ljava/lang/String;)V

    .line 515
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 516
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 517
    const-string v16, "town_3hr"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 518
    const-string v16, "Day_night"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 515
    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setDayNight(Ljava/lang/String;)V

    .line 519
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 520
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 521
    const-string v16, "town_3hr"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 522
    const-string v16, "MaxT"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 519
    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setMaxT(Ljava/lang/String;)V

    .line 523
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 524
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 525
    const-string v16, "town_3hr"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 526
    const-string v16, "MinT"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 523
    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setMinT(Ljava/lang/String;)V

    .line 527
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 528
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 529
    const-string v16, "town_3hr"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 530
    const-string v16, "PoP"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 527
    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setPoP(Ljava/lang/String;)V

    .line 531
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 532
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 533
    const-string v16, "town_3hr"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 534
    const-string v16, "Wx_Icon"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 531
    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setWxicon(Ljava/lang/String;)V

    .line 554
    const v15, 0x7f03000c

    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setLayoutRES(I)V

    .line 555
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_16d} :catch_2a8

    .line 508
    .end local v12           #obj:Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;
    :goto_16d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_74

    .line 564
    :cond_171
    :try_start_171
    new-instance v12, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    .line 565
    .restart local v12       #obj:Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 566
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 567
    const-string v16, "town_week"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 568
    const-string v16, "Data_date"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 565
    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setDataDate(Ljava/lang/String;)V

    .line 569
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 570
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 571
    const-string v16, "town_week"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 572
    const-string v16, "Day_night"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 569
    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setDayNight(Ljava/lang/String;)V

    .line 573
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 574
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 575
    const-string v16, "town_week"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 576
    const-string v16, "MaxT"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 573
    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setMaxT(Ljava/lang/String;)V

    .line 577
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 578
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 579
    const-string v16, "town_week"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 580
    const-string v16, "MinT"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 577
    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setMinT(Ljava/lang/String;)V

    .line 581
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 582
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 583
    const-string v16, "town_week"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 584
    const-string v16, "PoP"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 581
    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setPoP(Ljava/lang/String;)V

    .line 585
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 586
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 587
    const-string v16, "town_week"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 588
    const-string v16, "Wx_Icon"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 585
    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setWxicon(Ljava/lang/String;)V

    .line 591
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 592
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 593
    const-string v16, "town_week"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 594
    const-string v16, "Day_night"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, " \u767d\u5929"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_239

    .line 595
    const v15, 0x7f03000b

    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setLayoutRES(I)V

    .line 596
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    .end local v12           #obj:Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;
    :cond_235
    :goto_235
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_81

    .line 597
    .restart local v12       #obj:Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;
    :cond_239
    const-string v15, "Areas"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 598
    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 599
    const-string v16, "town_week"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 600
    const-string v16, "Day_night"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, " \u665a\u4e0a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_235

    .line 601
    const v15, 0x7f03000b

    invoke-virtual {v12, v15}, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;->setLayoutRES(I)V

    .line 602
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_260} :catch_261

    goto :goto_235

    .line 604
    .end local v12           #obj:Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;
    :catch_261
    move-exception v15

    goto :goto_235

    .line 612
    :cond_263
    :try_start_263
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;>;"
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cwb/cwb_forecast_2012_expandableList;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_95

    .line 619
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;>;"
    :cond_27c
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;>;"
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cwb/cwb_forecast_2012_expandableList;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_29a} :catch_29e

    .line 618
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9c

    .line 634
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v6           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #i:I
    .end local v8           #in:Ljava/io/BufferedReader;
    .end local v9           #line:Ljava/lang/String;
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cwb/cwb_forecast_2012_expandableList$dataObject;>;"
    .end local v13           #object:Lorg/json/JSONObject;
    .end local v14           #rp:Lorg/apache/http/HttpResponse;
    :catch_29e
    move-exception v4

    .line 635
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 636
    const/4 v15, 0x0

    goto/16 :goto_b4

    .line 638
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v6       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #rp:Lorg/apache/http/HttpResponse;
    :cond_2a5
    const/4 v15, 0x0

    goto/16 :goto_b4

    .line 556
    .restart local v2       #content:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v8       #in:Ljava/io/BufferedReader;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v13       #object:Lorg/json/JSONObject;
    :catch_2a8
    move-exception v15

    goto/16 :goto_16d
.end method

.method private loadTitleTownName()Ljava/lang/String;
    .registers 14

    .prologue
    .line 677
    const-string v9, ""

    .line 679
    .local v9, townName:Ljava/lang/String;
    :try_start_2
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 680
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://app.cwb.gov.tw/ws/feed.php?userid=f9845dae54a3b9247582&type=1&townid="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lorg/cwb/cwb_constants;->countyID:Ljava/util/ArrayList;

    sget v12, Lorg/cwb/cwb_forecast_2012_expandableList;->countyIndex:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 681
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 683
    .local v8, rp:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_a1

    .line 684
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 685
    .local v5, in:Ljava/io/BufferedReader;
    const-string v6, ""

    .line 686
    .local v6, line:Ljava/lang/String;
    const-string v1, ""

    .line 687
    .local v1, content:Ljava/lang/String;
    :goto_49
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a2

    .line 691
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 693
    .local v7, object:Lorg/json/JSONObject;
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->townNameList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 694
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipID:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 695
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5f
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v4, v10, :cond_b4

    .line 704
    sget-boolean v10, Lorg/cwb/cwb_forecast_2012_expandableList;->bUpdateFromTownSpinner:Z

    if-eqz v10, :cond_f2

    .line 722
    const/4 v10, 0x0

    sput-boolean v10, Lorg/cwb/cwb_forecast_2012_expandableList;->bUpdateFromTownSpinner:Z

    .line 723
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipID:Ljava/util/ArrayList;

    sget v11, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIndex:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIDString:Ljava/lang/String;

    .line 740
    :cond_82
    :goto_82
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 741
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "townShipIDString(loadTitleTownName) : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIDString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 743
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->loadEvery3HoursWeatherData()Z

    move-result v10

    sput-boolean v10, Lorg/cwb/cwb_forecast_2012_expandableList;->bDataOK:Z

    .line 749
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v8           #rp:Lorg/apache/http/HttpResponse;
    :cond_a1
    :goto_a1
    return-object v9

    .line 688
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v8       #rp:Lorg/apache/http/HttpResponse;
    :cond_a2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    .line 696
    .restart local v4       #i:I
    .restart local v7       #object:Lorg/json/JSONObject;
    :cond_b4
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->townNameList:Ljava/util/ArrayList;

    const-string v11, "Areas"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 697
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 698
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "TownName"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 696
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipID:Ljava/util/ArrayList;

    const-string v11, "Areas"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 700
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 701
    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "TownshipID"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 699
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5f

    .line 725
    :cond_f2
    const/4 v4, 0x0

    :goto_f3
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_82

    .line 726
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 727
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 728
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 729
    const-string v11, "TownshipID"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    sget-object v11, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIDString:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 726
    if-ne v10, v11, :cond_13d

    .line 730
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 731
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 732
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "TownName"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 734
    sput v4, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIndex:I
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_135} :catch_137

    goto/16 :goto_82

    .line 745
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v8           #rp:Lorg/apache/http/HttpResponse;
    :catch_137
    move-exception v2

    .line 746
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a1

    .line 725
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #i:I
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #object:Lorg/json/JSONObject;
    .restart local v8       #rp:Lorg/apache/http/HttpResponse;
    :cond_13d
    add-int/lit8 v4, v4, 0x1

    goto :goto_f3
.end method

.method private reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1353
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->townNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1354
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1355
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1356
    sget-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->tomoDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1357
    sget-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->aftertomoDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1358
    const-string v0, ""

    sput-object v0, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIDString:Ljava/lang/String;

    .line 1359
    sput v2, Lorg/cwb/cwb_forecast_2012_expandableList;->withDropDownIconIndex:I

    .line 1360
    sput v2, Lorg/cwb/cwb_forecast_2012_expandableList;->every3HoursDataSize:I

    .line 1361
    sput v1, Lorg/cwb/cwb_forecast_2012_expandableList;->countyIndex:I

    .line 1362
    sput v1, Lorg/cwb/cwb_forecast_2012_expandableList;->oldCountyIndex:I

    .line 1363
    sput v1, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIndex:I

    .line 1365
    sput-boolean v2, Lorg/cwb/cwb_forecast_2012_expandableList;->bCallFromMainPage:Z

    .line 1366
    return-void
.end method

.method private updateData()V
    .registers 5

    .prologue
    const v3, 0x7f080099

    const/4 v2, 0x0

    .line 407
    sget-boolean v1, Lorg/cwb/cwb_forecast_2012_expandableList;->bCallFromMainPage:Z

    if-eqz v1, :cond_20

    .line 408
    sput-boolean v2, Lorg/cwb/cwb_forecast_2012_expandableList;->bCallFromMainPage:Z

    .line 409
    invoke-virtual {p0, v3}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 410
    .local v0, TownName:Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    :goto_15
    new-instance v1, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;

    invoke-direct {v1, p0}, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 417
    return-void

    .line 412
    .end local v0           #TownName:Landroid/widget/TextView;
    :cond_20
    invoke-virtual {p0, v3}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 413
    .restart local v0       #TownName:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .registers 2

    .prologue
    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 20
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super/range {p0 .. p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-direct/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->HasNetwork()Z

    move-result v13

    if-nez v13, :cond_37

    .line 83
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v13, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v3, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    const v13, 0x7f09004a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/cwb/cwb_forecast_2012_expandableList;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 85
    const v13, 0x7f090065

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/cwb/cwb_forecast_2012_expandableList;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lorg/cwb/cwb_forecast_2012_expandableList$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/cwb/cwb_forecast_2012_expandableList$1;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    invoke-virtual {v3, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 91
    .local v6, dialog:Landroid/app/Dialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 239
    .end local v3           #builder:Landroid/app/AlertDialog$Builder;
    .end local v6           #dialog:Landroid/app/Dialog;
    :goto_36
    return-void

    .line 95
    :cond_37
    sget-object v13, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v14, 0x6

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->add(II)V

    .line 96
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2d0

    .line 97
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 96
    :goto_71
    sput-object v13, Lorg/cwb/cwb_forecast_2012_expandableList;->tomoMonth:Ljava/lang/String;

    .line 98
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2ea

    .line 99
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 98
    :goto_a2
    sput-object v13, Lorg/cwb/cwb_forecast_2012_expandableList;->tomoDay:Ljava/lang/String;

    .line 102
    sget-object v13, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v14, 0x6

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->add(II)V

    .line 103
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_302

    .line 104
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 103
    :goto_de
    sput-object v13, Lorg/cwb/cwb_forecast_2012_expandableList;->afterTomoMonth:Ljava/lang/String;

    .line 105
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_31c

    .line 106
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 105
    :goto_10f
    sput-object v13, Lorg/cwb/cwb_forecast_2012_expandableList;->afterTomoDay:Ljava/lang/String;

    .line 109
    sget-object v13, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->add(II)V

    .line 110
    sget-object v13, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->add(II)V

    .line 113
    const v13, 0x7f03000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/cwb/cwb_forecast_2012_expandableList;->setContentView(I)V

    .line 114
    const/4 v13, 0x1

    sput v13, Lorg/cwb/cwb_forecast_2012;->screen:I

    .line 115
    sput-object p0, Lorg/cwb/cwb_forecast_2012_expandableList;->act:Landroid/app/Activity;

    .line 117
    new-instance v13, Landroid/app/ProgressDialog;

    sget-object v14, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;

    .line 118
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;

    const-string v14, "Loading..."

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->show()V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 123
    const-string v14, "countyNameIndex"

    const/4 v15, -0x1

    .line 122
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    sput v13, Lorg/cwb/cwb_forecast_2012_expandableList;->countyIndex:I

    .line 124
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 125
    const-string v14, "townShipIndex"

    const/4 v15, -0x1

    .line 124
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    sput v13, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipIndex:I

    .line 126
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 127
    const-string v14, "forecast_from_listpage"

    const/4 v15, 0x0

    .line 126
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    sput-boolean v13, Lorg/cwb/cwb_forecast_2012_expandableList;->bCallFromMainPage:Z

    .line 133
    const v13, 0x7f080098

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 135
    .local v5, countyName:Landroid/widget/TextView;
    sget-object v13, Lorg/cwb/cwb_constants;->countyNameArray:Ljava/util/ArrayList;

    sget v14, Lorg/cwb/cwb_forecast_2012_expandableList;->countyIndex:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 134
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v7, 0x0

    .local v7, i:I
    :goto_18f
    sget-object v13, Lorg/cwb/cwb_constants;->townShipID:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v7, v13, :cond_334

    .line 145
    const v13, 0x7f08009e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 146
    .local v12, townSpinner:Landroid/widget/Spinner;
    new-instance v13, Lorg/cwb/cwb_forecast_2012_expandableList$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/cwb/cwb_forecast_2012_expandableList$2;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 165
    sget-object v13, Lorg/cwb/cwb_constants;->countyNameArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v2, v13, [Ljava/lang/String;

    .line 166
    .local v2, a:[Ljava/lang/String;
    sget-object v13, Lorg/cwb/cwb_constants;->countyNameArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 167
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 168
    const v13, 0x1090008

    .line 167
    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 169
    .local v4, countyAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v13, 0x1090009

    invoke-virtual {v4, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 170
    const v13, 0x7f08009d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 171
    .local v1, CountySpinner:Landroid/widget/Spinner;
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 172
    new-instance v13, Lorg/cwb/cwb_forecast_2012_expandableList$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/cwb/cwb_forecast_2012_expandableList$3;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    invoke-virtual {v1, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 201
    sget v13, Lorg/cwb/cwb_forecast_2012_expandableList;->countyIndex:I

    invoke-virtual {v1, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 204
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_347

    .line 205
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 206
    .local v11, titleMonth:Ljava/lang/String;
    :goto_219
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_361

    .line 207
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 209
    .local v10, titleDay:Ljava/lang/String;
    :goto_248
    const v13, 0x7f08009f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 210
    .local v9, titleDate:Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 211
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 210
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const v13, 0x7f0800a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ExpandableListView;

    sput-object v13, Lorg/cwb/cwb_forecast_2012_expandableList;->expandableList:Landroid/widget/ExpandableListView;

    .line 215
    sget-object v13, Lorg/cwb/cwb_forecast_2012_expandableList;->expandableList:Landroid/widget/ExpandableListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 219
    const v13, 0x7f080096

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/google/android/maps/MapView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/cwb/cwb_forecast_2012_expandableList;->mv:Lcom/google/android/maps/MapView;

    .line 220
    new-instance v13, Lcom/google/android/maps/MyLocationOverlay;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cwb/cwb_forecast_2012_expandableList;->mv:Lcom/google/android/maps/MapView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/cwb/cwb_forecast_2012_expandableList;->mo:Lcom/google/android/maps/MyLocationOverlay;

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/cwb/cwb_forecast_2012_expandableList;->mo:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v13}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 223
    const v13, 0x7f08009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 224
    .local v8, pinLocation:Landroid/widget/ImageView;
    new-instance v13, Lorg/cwb/cwb_forecast_2012_expandableList$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/cwb/cwb_forecast_2012_expandableList$4;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_36

    .line 97
    .end local v1           #CountySpinner:Landroid/widget/Spinner;
    .end local v2           #a:[Ljava/lang/String;
    .end local v4           #countyAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v5           #countyName:Landroid/widget/TextView;
    .end local v7           #i:I
    .end local v8           #pinLocation:Landroid/widget/ImageView;
    .end local v9           #titleDate:Landroid/widget/TextView;
    .end local v10           #titleDay:Ljava/lang/String;
    .end local v11           #titleMonth:Ljava/lang/String;
    .end local v12           #townSpinner:Landroid/widget/Spinner;
    :cond_2d0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_71

    .line 100
    :cond_2ea
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_a2

    .line 104
    :cond_302
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_de

    .line 107
    :cond_31c
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_10f

    .line 143
    .restart local v5       #countyName:Landroid/widget/TextView;
    .restart local v7       #i:I
    :cond_334
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cwb/cwb_forecast_2012_expandableList;->townShipID:Ljava/util/ArrayList;

    sget-object v13, Lorg/cwb/cwb_constants;->townShipID:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_18f

    .line 205
    .restart local v1       #CountySpinner:Landroid/widget/Spinner;
    .restart local v2       #a:[Ljava/lang/String;
    .restart local v4       #countyAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v12       #townSpinner:Landroid/widget/Spinner;
    :cond_347
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_219

    .line 208
    .restart local v11       #titleMonth:Ljava/lang/String;
    :cond_361
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lorg/cwb/cwb_forecast_2012_expandableList;->calendar:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_248
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 265
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 266
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->receiver:Lorg/cwb/cwb_forecast_2012_expandableList$myReceiver;

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_forecast_2012_expandableList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 659
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4f

    .line 660
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->mo:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 661
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->mv:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->removeAllViews()V

    .line 662
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 663
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    const-string v2, "class_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cwb_forecast_2012"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string v2, "group_index"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    const-string v2, "view_layer_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 667
    const-string v2, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_forecast_2012_expandableList;->sendBroadcast(Landroid/content/Intent;)V

    .line 669
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012_expandableList;->reset()V

    .line 672
    .end local v0           #intent:Landroid/content/Intent;
    :goto_4e
    return v1

    :cond_4f
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_4e
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 249
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 250
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "forecast_update_unitdata"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList;->receiver:Lorg/cwb/cwb_forecast_2012_expandableList$myReceiver;

    invoke-virtual {p0, v2, v0}, Lorg/cwb/cwb_forecast_2012_expandableList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    sget-object v2, Lorg/cwb/cwb_forecast_2012_expandableList;->act:Landroid/app/Activity;

    const v3, 0x7f0800a1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 256
    .local v1, tempUnitText:Landroid/widget/TextView;
    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v2}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 257
    const v2, 0x7f090071

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 260
    :goto_2b
    return-void

    .line 259
    :cond_2c
    const v2, 0x7f090072

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2b
.end method
