.class public Lorg/cwb/cwb_lastActivity_2012mar;
.super Landroid/app/Activity;
.source "cwb_lastActivity_2012mar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_lastActivity_2012mar$JSONParseTask;,
        Lorg/cwb/cwb_lastActivity_2012mar$last24Data;
    }
.end annotation


# static fields
.field private static DATA_URL:Ljava/lang/String;


# instance fields
.field private resultData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_lastActivity_2012mar$last24Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 175
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=7&type=5&stid="

    sput-object v0, Lorg/cwb/cwb_lastActivity_2012mar;->DATA_URL:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_lastActivity_2012mar;->resultData:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method private InitialDisplay()V
    .registers 14

    .prologue
    .line 60
    iget-object v10, p0, Lorg/cwb/cwb_lastActivity_2012mar;->resultData:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_29

    .line 61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v10, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f09006d

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 63
    const-string v11, "OK"

    new-instance v12, Lorg/cwb/cwb_lastActivity_2012mar$1;

    invoke-direct {v12, p0}, Lorg/cwb/cwb_lastActivity_2012mar$1;-><init>(Lorg/cwb/cwb_lastActivity_2012mar;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 68
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 139
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_28
    return-void

    .line 72
    :cond_29
    const v10, 0x7f08019f

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_lastActivity_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 73
    .local v7, tempTitle:Landroid/widget/TextView;
    invoke-static {p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_f8

    .line 74
    const v10, 0x7f09005f

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 78
    :goto_3e
    const v10, 0x7f08019d

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_lastActivity_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 79
    .local v6, observeStation:Landroid/widget/TextView;
    sget-object v10, Lorg/cwb/cwb_constants;->observeStationName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v10, 0x7f08004b

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_lastActivity_2012mar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 82
    .local v8, titleLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 83
    const/4 v1, 0x0

    .local v1, i:I
    :goto_59
    iget-object v10, p0, Lorg/cwb/cwb_lastActivity_2012mar;->resultData:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_28

    .line 85
    invoke-virtual {p0}, Lorg/cwb/cwb_lastActivity_2012mar;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030023

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 87
    .local v9, view:Landroid/view/View;
    const v10, 0x7f0801a1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 88
    .local v4, last24_time:Landroid/widget/TextView;
    iget-object v10, p0, Lorg/cwb/cwb_lastActivity_2012mar;->resultData:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;

    iget-object v10, v10, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Obstime:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v10, 0x7f0801a2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 91
    .local v3, last24_temp:Landroid/widget/TextView;
    iget-object v10, p0, Lorg/cwb/cwb_lastActivity_2012mar;->resultData:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;

    iget-object v10, v10, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Temperature:Ljava/lang/String;

    invoke-static {p0, v10}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v10, 0x7f0801a3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 94
    .local v5, last24_weather:Landroid/widget/TextView;
    iget-object v10, p0, Lorg/cwb/cwb_lastActivity_2012mar;->resultData:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;

    iget-object v10, v10, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Weather:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v10, 0x7f0801a4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    .local v2, last24_rain:Landroid/widget/TextView;
    iget-object v10, p0, Lorg/cwb/cwb_lastActivity_2012mar;->resultData:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;

    iget-object v10, v10, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Rain:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    rem-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_f1

    .line 100
    const-string v10, "#ffff61"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    const-string v10, "#ffff61"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    const-string v10, "#ffff61"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    const-string v10, "#ffff61"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    :cond_f1
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_59

    .line 76
    .end local v1           #i:I
    .end local v2           #last24_rain:Landroid/widget/TextView;
    .end local v3           #last24_temp:Landroid/widget/TextView;
    .end local v4           #last24_time:Landroid/widget/TextView;
    .end local v5           #last24_weather:Landroid/widget/TextView;
    .end local v6           #observeStation:Landroid/widget/TextView;
    .end local v8           #titleLayout:Landroid/widget/LinearLayout;
    .end local v9           #view:Landroid/view/View;
    :cond_f8
    const v10, 0x7f090060

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3e
.end method

.method static synthetic access$0(Lorg/cwb/cwb_lastActivity_2012mar;)V
    .registers 1
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Lorg/cwb/cwb_lastActivity_2012mar;->getHttpData()V

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_lastActivity_2012mar;)V
    .registers 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/cwb/cwb_lastActivity_2012mar;->InitialDisplay()V

    return-void
.end method

.method private getHttpData()V
    .registers 13

    .prologue
    .line 178
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 179
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lorg/cwb/cwb_lastActivity_2012mar;->DATA_URL:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lorg/cwb/cwb_constants;->selectedStid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 180
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 184
    .local v9, rp:Lorg/apache/http/HttpResponse;
    iget-object v10, p0, Lorg/cwb/cwb_lastActivity_2012mar;->resultData:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 185
    const/4 v5, 0x0

    .line 186
    .local v5, in:Ljava/io/BufferedReader;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_66

    .line 187
    new-instance v5, Ljava/io/BufferedReader;

    .end local v5           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 190
    .restart local v5       #in:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 191
    .local v7, line:Ljava/lang/String;
    const-string v1, ""

    .line 192
    .local v1, content:Ljava/lang/String;
    :goto_4b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_67

    .line 196
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    .local v8, object:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_57
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v4, v10, :cond_79

    .line 225
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 231
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :cond_66
    :goto_66
    return-void

    .line 193
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #rp:Lorg/apache/http/HttpResponse;
    :cond_67
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4b

    .line 199
    .restart local v4       #i:I
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_79
    new-instance v6, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;

    invoke-direct {v6, p0}, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;-><init>(Lorg/cwb/cwb_lastActivity_2012mar;)V

    .line 202
    .local v6, lastData:Lorg/cwb/cwb_lastActivity_2012mar$last24Data;
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 203
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 204
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Stid"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 201
    iput-object v10, v6, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Stid:Ljava/lang/String;

    .line 206
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 207
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 208
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Obstime"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 205
    iput-object v10, v6, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Obstime:Ljava/lang/String;

    .line 210
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 211
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 212
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Weather"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 209
    iput-object v10, v6, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Weather:Ljava/lang/String;

    .line 214
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 215
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 216
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Temperature"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 213
    iput-object v10, v6, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Temperature:Ljava/lang/String;

    .line 218
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 219
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 220
    const-string v11, "real"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Rain"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 217
    iput-object v10, v6, Lorg/cwb/cwb_lastActivity_2012mar$last24Data;->Rain:Ljava/lang/String;

    .line 222
    iget-object v10, p0, Lorg/cwb/cwb_lastActivity_2012mar;->resultData:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fb} :catch_ff

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_57

    .line 228
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #lastData:Lorg/cwb/cwb_lastActivity_2012mar$last24Data;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :catch_ff
    move-exception v2

    .line 229
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_66
.end method


# virtual methods
.method public getData()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity_2012mar;->resultData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    new-instance v0, Lorg/cwb/cwb_lastActivity_2012mar$JSONParseTask;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_lastActivity_2012mar$JSONParseTask;-><init>(Lorg/cwb/cwb_lastActivity_2012mar;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lastActivity_2012mar$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_lastActivity_2012mar;->setContentView(I)V

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 237
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 243
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 41
    return-void
.end method
