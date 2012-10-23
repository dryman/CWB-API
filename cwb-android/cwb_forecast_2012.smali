.class public Lorg/cwb/cwb_forecast_2012;
.super Landroid/app/Activity;
.source "cwb_forecast_2012.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_forecast_2012$ForecastAdapter;,
        Lorg/cwb/cwb_forecast_2012$loadViewTask;
    }
.end annotation


# static fields
.field private static final DATA_URL:Ljava/lang/String; = "http://app.cwb.gov.tw/ws/feed.php?userid=f9845dae54a3b9247582&type=1"

.field public static bLoading:Z

.field public static screen:I


# instance fields
.field private ClickAreaListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private dialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lorg/cwb/cwb_forecast_2012;->bLoading:Z

    .line 39
    sput v0, Lorg/cwb/cwb_forecast_2012;->screen:I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012;->dialog:Landroid/app/ProgressDialog;

    .line 165
    new-instance v0, Lorg/cwb/cwb_forecast_2012$1;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_forecast_2012$1;-><init>(Lorg/cwb/cwb_forecast_2012;)V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012;->ClickAreaListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 33
    return-void
.end method

.method private HasNetwork()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast_2012;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 224
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 225
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 226
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 227
    :goto_1e
    return v3

    :cond_1f
    move v3, v4

    goto :goto_1e
.end method

.method private InitialDisplay()V
    .registers 4

    .prologue
    .line 111
    const v2, 0x7f0800e3

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast_2012;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 112
    .local v0, listMain:Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 113
    new-instance v1, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;

    sget-object v2, Lorg/cwb/cwb_constants;->countyNameArray:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2}, Lorg/cwb/cwb_forecast_2012$ForecastAdapter;-><init>(Lorg/cwb/cwb_forecast_2012;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 114
    .local v1, theListAdapter:Lorg/cwb/cwb_forecast_2012$ForecastAdapter;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012;->ClickAreaListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012;->dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_25

    .line 117
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 119
    :cond_25
    return-void
.end method

.method private ShowArea()Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v10, Lorg/cwb/cwb_constants;->townShipID:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 125
    sget-object v10, Lorg/cwb/cwb_constants;->countyID:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 128
    :try_start_f
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 129
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    const-string v10, "http://app.cwb.gov.tw/ws/feed.php?userid=f9845dae54a3b9247582&type=1"

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 130
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 132
    .local v9, rp:Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 133
    .local v5, in:Ljava/io/BufferedReader;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_5e

    .line 134
    new-instance v5, Ljava/io/BufferedReader;

    .end local v5           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 141
    .restart local v5       #in:Ljava/io/BufferedReader;
    :goto_3e
    const-string v6, ""

    .line 142
    .local v6, line:Ljava/lang/String;
    const-string v1, ""

    .line 143
    .local v1, content:Ljava/lang/String;
    :goto_42
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_73

    .line 147
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    .local v7, object:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4e
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v4, v10, :cond_85

    .line 156
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 162
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :goto_5d
    return-object v8

    .line 136
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v9       #rp:Lorg/apache/http/HttpResponse;
    :cond_5e
    new-instance v5, Ljava/io/BufferedReader;

    .end local v5           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    .line 137
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f06

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 136
    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v5       #in:Ljava/io/BufferedReader;
    goto :goto_3e

    .line 144
    .restart local v1       #content:Ljava/lang/String;
    .restart local v6       #line:Ljava/lang/String;
    :cond_73
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    .line 151
    .restart local v4       #i:I
    .restart local v7       #object:Lorg/json/JSONObject;
    :cond_85
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "CountyName"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v10, Lorg/cwb/cwb_constants;->townShipID:Ljava/util/ArrayList;

    const-string v11, "Areas"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "TownshipID"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v10, Lorg/cwb/cwb_constants;->countyID:Ljava/util/ArrayList;

    const-string v11, "Areas"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "town"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "CountyID"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_dc} :catch_e0

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4e

    .line 159
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :catch_e0
    move-exception v2

    .line 160
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5d
.end method

.method static synthetic access$0(Lorg/cwb/cwb_forecast_2012;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012;->ShowArea()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/cwb/cwb_forecast_2012;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lorg/cwb/cwb_forecast_2012;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cwb/cwb_forecast_2012;)V
    .registers 1
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012;->InitialDisplay()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012;->HasNetwork()Z

    move-result v4

    if-nez v4, :cond_31

    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09004a

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_forecast_2012;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    const v4, 0x7f090065

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_forecast_2012;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/cwb/cwb_forecast_2012$2;

    invoke-direct {v5, p0}, Lorg/cwb/cwb_forecast_2012$2;-><init>(Lorg/cwb/cwb_forecast_2012;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 55
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 63
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/Dialog;
    :goto_30
    return-void

    .line 59
    :cond_31
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 60
    .local v3, mInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030017

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 61
    .local v2, mContentView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast_2012;->setContentView(Landroid/view/View;)V

    .line 62
    new-instance v4, Lorg/cwb/cwb_forecast_2012$loadViewTask;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_forecast_2012$loadViewTask;-><init>(Lorg/cwb/cwb_forecast_2012;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lorg/cwb/cwb_forecast_2012$loadViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_30
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    sget v1, Lorg/cwb/cwb_forecast_2012;->screen:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "forecast_update_unitdata"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_forecast_2012;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    .end local v0           #intent:Landroid/content/Intent;
    :cond_15
    return-void
.end method
