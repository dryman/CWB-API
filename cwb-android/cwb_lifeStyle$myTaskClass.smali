.class Lorg/cwb/cwb_lifeStyle$myTaskClass;
.super Ljava/lang/Object;
.source "cwb_lifeStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_lifeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myTaskClass"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;,
        Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;
    }
.end annotation


# static fields
.field private static final DATA_URL:Ljava/lang/String; = "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=1"


# instance fields
.field public countyID:Ljava/lang/String;

.field public countyName:Ljava/lang/String;

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/cwb/cwb_lifeStyle;


# direct methods
.method public constructor <init>(Lorg/cwb/cwb_lifeStyle;)V
    .registers 3
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass;->this$0:Lorg/cwb/cwb_lifeStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass;->result:Ljava/util/ArrayList;

    .line 127
    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwb_lifeStyle$myTaskClass;)V
    .registers 1
    .parameter

    .prologue
    .line 194
    invoke-direct {p0}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->getHttpData()V

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Lorg/cwb/cwb_lifeStyle;
    .registers 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass;->this$0:Lorg/cwb/cwb_lifeStyle;

    return-object v0
.end method

.method private getHttpData()V
    .registers 13

    .prologue
    .line 196
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 197
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string v10, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=1"

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 198
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 200
    .local v9, rp:Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 201
    .local v6, in:Ljava/io/BufferedReader;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_4e

    .line 202
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 205
    .restart local v6       #in:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 206
    .local v7, line:Ljava/lang/String;
    const-string v2, ""

    .line 207
    .local v2, content:Ljava/lang/String;
    :goto_33
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4f

    .line 211
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
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

    .line 226
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 232
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

    .line 208
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

    .line 214
    .restart local v5       #i:I
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_61
    new-instance v0, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;-><init>(Lorg/cwb/cwb_lifeStyle$myTaskClass;)V

    .line 216
    .local v0, areaData:Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 217
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 218
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "CountyName"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 215
    iput-object v10, v0, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;->cname:Ljava/lang/String;

    .line 220
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 221
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 222
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "CountyID"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 219
    iput-object v10, v0, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;->CountyID:Ljava/lang/String;

    .line 223
    iget-object v10, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9b} :catch_9e

    .line 213
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 229
    .end local v0           #areaData:Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :catch_9e
    move-exception v3

    .line 230
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e
.end method


# virtual methods
.method public Run()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    new-instance v0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;-><init>(Lorg/cwb/cwb_lifeStyle$myTaskClass;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    return-void
.end method

.method public getResultList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass;->result:Ljava/util/ArrayList;

    return-object v0
.end method
