.class public Lorg/cwb/cwb_fish_arealist;
.super Landroid/app/Activity;
.source "cwb_fish_arealist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_fish_arealist$ForecastAdapter;,
        Lorg/cwb/cwb_fish_arealist$JSONParseTask;,
        Lorg/cwb/cwb_fish_arealist$areaListData;
    }
.end annotation


# static fields
.field private static final DATA_URL:Ljava/lang/String; = "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=9"

.field public static LOCAL:Ljava/lang/String;


# instance fields
.field private ClickAreaListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final TAG:Ljava/lang/String;

.field private dialog:Landroid/app/ProgressDialog;

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_fish_arealist$areaListData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_fish_arealist;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cwb/cwb_fish_arealist;->dialog:Landroid/app/ProgressDialog;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_fish_arealist;->result:Ljava/util/ArrayList;

    .line 270
    new-instance v0, Lorg/cwb/cwb_fish_arealist$1;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_fish_arealist$1;-><init>(Lorg/cwb/cwb_fish_arealist;)V

    iput-object v0, p0, Lorg/cwb/cwb_fish_arealist;->ClickAreaListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 39
    return-void
.end method

.method private DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .parameter "dURL"

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 305
    .local v1, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 306
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 307
    .local v2, ucon:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 311
    .end local v2           #ucon:Ljava/net/URLConnection;
    .end local v3           #url:Ljava/net/URL;
    :goto_e
    return-object v1

    .line 308
    :catch_f
    move-exception v0

    .line 309
    .local v0, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lorg/cwb/cwb_fish_arealist;->TAG:Ljava/lang/String;

    const-string v5, "DownloadFromUrl"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private HasNetwork()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 315
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_fish_arealist;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 316
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 317
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 318
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 319
    :goto_1e
    return v3

    :cond_1f
    move v3, v4

    goto :goto_1e
.end method

.method private InitialDisplay()V
    .registers 4

    .prologue
    .line 74
    const v2, 0x7f080055

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_fish_arealist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 75
    .local v0, listMain:Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 76
    new-instance v1, Lorg/cwb/cwb_fish_arealist$ForecastAdapter;

    invoke-direct {p0}, Lorg/cwb/cwb_fish_arealist;->ShowArea()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lorg/cwb/cwb_fish_arealist$ForecastAdapter;-><init>(Lorg/cwb/cwb_fish_arealist;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 77
    .local v1, theListAdapter:Lorg/cwb/cwb_fish_arealist$ForecastAdapter;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v2, p0, Lorg/cwb/cwb_fish_arealist;->ClickAreaListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    return-void
.end method

.method private ShowArea()Ljava/util/ArrayList;
    .registers 4
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
    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v1, subData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v2, p0, Lorg/cwb/cwb_fish_arealist;->result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_f

    .line 267
    return-object v1

    .line 265
    :cond_f
    iget-object v2, p0, Lorg/cwb/cwb_fish_arealist;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cwb/cwb_fish_arealist$areaListData;

    invoke-virtual {v2}, Lorg/cwb/cwb_fish_arealist$areaListData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method static synthetic access$0(Lorg/cwb/cwb_fish_arealist;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lorg/cwb/cwb_fish_arealist;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cwb/cwb_fish_arealist;)V
    .registers 1
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/cwb/cwb_fish_arealist;->getHttpData()V

    return-void
.end method

.method static synthetic access$2(Lorg/cwb/cwb_fish_arealist;)V
    .registers 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/cwb/cwb_fish_arealist;->InitialDisplay()V

    return-void
.end method

.method static synthetic access$3(Lorg/cwb/cwb_fish_arealist;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lorg/cwb/cwb_fish_arealist;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lorg/cwb/cwb_fish_arealist;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lorg/cwb/cwb_fish_arealist;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private getHttpData()V
    .registers 13

    .prologue
    .line 152
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 153
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string v10, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=9"

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 154
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 156
    .local v9, rp:Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 157
    .local v6, in:Ljava/io/BufferedReader;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_4e

    .line 158
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 161
    .restart local v6       #in:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 162
    .local v7, line:Ljava/lang/String;
    const-string v2, ""

    .line 163
    .local v2, content:Ljava/lang/String;
    :goto_33
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4f

    .line 167
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    .local v8, object:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3f
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v5, v10, :cond_61

    .line 182
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 188
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :cond_4e
    :goto_4e
    return-void

    .line 164
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #content:Ljava/lang/String;
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #in:Ljava/io/BufferedReader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #rp:Lorg/apache/http/HttpResponse;
    :cond_4f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    .line 170
    .restart local v5       #i:I
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_61
    new-instance v0, Lorg/cwb/cwb_fish_arealist$areaListData;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_fish_arealist$areaListData;-><init>(Lorg/cwb/cwb_fish_arealist;)V

    .line 172
    .local v0, areaData:Lorg/cwb/cwb_fish_arealist$areaListData;
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 173
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 174
    const-string v11, "info"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "cname"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 171
    invoke-virtual {v0, v10}, Lorg/cwb/cwb_fish_arealist$areaListData;->setName(Ljava/lang/String;)V

    .line 176
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 177
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 178
    const-string v11, "info"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "SubType"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 175
    invoke-virtual {v0, v10}, Lorg/cwb/cwb_fish_arealist$areaListData;->setType(Ljava/lang/String;)V

    .line 179
    iget-object v10, p0, Lorg/cwb/cwb_fish_arealist;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9d} :catch_a0

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 185
    .end local v0           #areaData:Lorg/cwb/cwb_fish_arealist$areaListData;
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :catch_a0
    move-exception v3

    .line 186
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lorg/cwb/cwb_fish_arealist;->HasNetwork()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09004a

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_fish_arealist;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 51
    const v5, 0x7f090065

    new-instance v6, Lorg/cwb/cwb_fish_arealist$2;

    invoke-direct {v6, p0}, Lorg/cwb/cwb_fish_arealist$2;-><init>(Lorg/cwb/cwb_fish_arealist;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 59
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 71
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/Dialog;
    :goto_2d
    return-void

    .line 66
    :cond_2e
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_arealist;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 67
    .local v3, mInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030006

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 68
    .local v2, mContentView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2}, Lorg/cwb/cwb_fish_arealist;->setContentView(Landroid/view/View;)V

    .line 69
    new-instance v4, Lorg/cwb/cwb_fish_arealist$JSONParseTask;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_fish_arealist$JSONParseTask;-><init>(Lorg/cwb/cwb_fish_arealist;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lorg/cwb/cwb_fish_arealist$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 84
    const/4 v2, 0x4

    if-ne p1, v2, :cond_42

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, graphicIntent:Landroid/content/Intent;
    const-string v2, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_fish_arealist;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v2, "class_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_fish_arealist;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cwb_graphic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v2, "group_index"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v2, "view_layer_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v2, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_fish_arealist;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    .end local v0           #graphicIntent:Landroid/content/Intent;
    :goto_41
    return v1

    :cond_42
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_41
.end method
