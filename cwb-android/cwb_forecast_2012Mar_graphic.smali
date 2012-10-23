.class public Lorg/cwb/cwb_forecast_2012Mar_graphic;
.super Landroid/app/Activity;
.source "cwb_forecast_2012Mar_graphic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_forecast_2012Mar_graphic$JSONParseTask;,
        Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;
    }
.end annotation


# static fields
.field private static DATA_URL:Ljava/lang/String;


# instance fields
.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 138
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=7&type=8&townid="

    sput-object v0, Lorg/cwb/cwb_forecast_2012Mar_graphic;->DATA_URL:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic;->result:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method private InitialDisplay()V
    .registers 13

    .prologue
    .line 58
    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic;->result:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_29

    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v8, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f09006d

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 61
    const-string v9, "OK"

    new-instance v10, Lorg/cwb/cwb_forecast_2012Mar_graphic$1;

    invoke-direct {v10, p0}, Lorg/cwb/cwb_forecast_2012Mar_graphic$1;-><init>(Lorg/cwb/cwb_forecast_2012Mar_graphic;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 66
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 103
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_28
    return-void

    .line 71
    :cond_29
    :try_start_29
    new-instance v2, Lorg/cwb/view/GraphicView;

    invoke-direct {v2, p0}, Lorg/cwb/view/GraphicView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v2, graphic:Lorg/cwb/view/GraphicView;
    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Lorg/cwb/view/GraphicView;->setData(Ljava/util/ArrayList;)V

    .line 75
    const v8, 0x7f08004f

    invoke-virtual {p0, v8}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 76
    .local v1, dataLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    const/4 v3, 0x1

    .local v3, i:I
    :goto_40
    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic;->result:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_80

    .line 95
    const v8, 0x7f0800ce

    invoke-virtual {p0, v8}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 96
    .local v6, unit:Landroid/widget/TextView;
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900a3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, label:Ljava/lang/String;
    invoke-static {p0}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_111

    .line 99
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v9, 0x7f090096

    invoke-virtual {p0, v9}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 97
    :goto_7a
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28

    .line 102
    .end local v1           #dataLayout:Landroid/widget/LinearLayout;
    .end local v2           #graphic:Lorg/cwb/view/GraphicView;
    .end local v3           #i:I
    .end local v4           #label:Ljava/lang/String;
    .end local v6           #unit:Landroid/widget/TextView;
    :catch_7e
    move-exception v8

    goto :goto_28

    .line 81
    .restart local v1       #dataLayout:Landroid/widget/LinearLayout;
    .restart local v2       #graphic:Lorg/cwb/view/GraphicView;
    .restart local v3       #i:I
    :cond_80
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "dateLabel"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 81
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 80
    invoke-virtual {p0, v8}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 83
    .local v5, textView:Landroid/widget/TextView;
    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic;->result:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    iget-object v8, v8, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->Day:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "weekday"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 86
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 85
    invoke-virtual {p0, v8}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 88
    .local v7, weekDay:Landroid/widget/TextView;
    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic;->result:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    iget-object v8, v8, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->Week:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic;->result:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    iget-object v8, v8, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->Week:Ljava/lang/String;

    const-string v9, "\u65e5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_104

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic;->result:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    iget-object v8, v8, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->Week:Ljava/lang/String;

    const-string v9, "\u516d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10d

    .line 90
    :cond_104
    const-string v8, "#ffff61"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    :cond_10d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_40

    .line 100
    .end local v5           #textView:Landroid/widget/TextView;
    .end local v7           #weekDay:Landroid/widget/TextView;
    .restart local v4       #label:Ljava/lang/String;
    .restart local v6       #unit:Landroid/widget/TextView;
    :cond_111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v9, 0x7f090097

    invoke-virtual {p0, v9}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_128} :catch_7e

    move-result-object v8

    goto/16 :goto_7a
.end method

.method static synthetic access$0(Lorg/cwb/cwb_forecast_2012Mar_graphic;)V
    .registers 1
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->getHttpData()V

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_forecast_2012Mar_graphic;)V
    .registers 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->InitialDisplay()V

    return-void
.end method

.method private getHttpData()V
    .registers 13

    .prologue
    .line 141
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 142
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lorg/cwb/cwb_forecast_2012Mar_graphic;->DATA_URL:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lorg/cwb/cwb_constants;->defaultTownID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 143
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 146
    .local v9, rp:Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 147
    .local v6, in:Ljava/io/BufferedReader;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_66

    .line 148
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 151
    .restart local v6       #in:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 152
    .local v7, line:Ljava/lang/String;
    const-string v1, ""

    .line 153
    .local v1, content:Ljava/lang/String;
    :goto_46
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_67

    .line 157
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    .local v8, object:Lorg/json/JSONObject;
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic;->result:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 159
    const/4 v5, 0x0

    .local v5, i:I
    :goto_57
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v5, v10, :cond_79

    .line 201
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 207
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :cond_66
    :goto_66
    return-void

    .line 154
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #in:Ljava/io/BufferedReader;
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

    goto :goto_46

    .line 160
    .restart local v5       #i:I
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_79
    new-instance v4, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    invoke-direct {v4}, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;-><init>()V

    .line 163
    .local v4, graphic:Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;
    if-nez v5, :cond_b8

    .line 165
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 166
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 167
    const-string v11, "range"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "MinRange"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 164
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MinRange:Ljava/lang/String;

    .line 170
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 171
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 172
    const-string v11, "range"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "MaxRange"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 169
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MaxRange:Ljava/lang/String;

    .line 198
    :goto_b0
    iget-object v10, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 178
    :cond_b8
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 179
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 180
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Day"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 177
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->Day:Ljava/lang/String;

    .line 183
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 184
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 185
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Week"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 182
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->Week:Ljava/lang/String;

    .line 188
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 189
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 190
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "MinT"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 187
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MinT:Ljava/lang/String;

    .line 193
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 194
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 195
    const-string v11, "town"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "MaxT"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 192
    iput-object v10, v4, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MaxT:Ljava/lang/String;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_118} :catch_119

    goto :goto_b0

    .line 204
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #graphic:Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :catch_119
    move-exception v2

    .line 205
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_66
.end method


# virtual methods
.method public getData(Z)V
    .registers 6
    .parameter "hasFocus"

    .prologue
    .line 37
    if-eqz p1, :cond_27

    .line 38
    const v2, 0x7f0800a8

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    .local v1, title:Landroid/widget/TextView;
    sget-object v2, Lorg/cwb/cwb_constants;->defaultTownTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v2, 0x7f08004f

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 42
    .local v0, dataLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 43
    new-instance v2, Lorg/cwb/cwb_forecast_2012Mar_graphic$JSONParseTask;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_forecast_2012Mar_graphic$JSONParseTask;-><init>(Lorg/cwb/cwb_forecast_2012Mar_graphic;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lorg/cwb/cwb_forecast_2012Mar_graphic$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    .end local v0           #dataLayout:Landroid/widget/LinearLayout;
    .end local v1           #title:Landroid/widget/TextView;
    :cond_27
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_forecast_2012Mar_graphic;->setContentView(I)V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 213
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 219
    return-void
.end method
