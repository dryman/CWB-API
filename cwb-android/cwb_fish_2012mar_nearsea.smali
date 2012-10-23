.class public Lorg/cwb/cwb_fish_2012mar_nearsea;
.super Landroid/app/Activity;
.source "cwb_fish_2012mar_nearsea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;,
        Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;
    }
.end annotation


# static fields
.field private static DATA_URL:Ljava/lang/String;

.field private static area:Ljava/lang/String;


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 183
    const-string v0, "01"

    sput-object v0, Lorg/cwb/cwb_fish_2012mar_nearsea;->area:Ljava/lang/String;

    .line 184
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=A&area="

    sput-object v0, Lorg/cwb/cwb_fish_2012mar_nearsea;->DATA_URL:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->dialog:Landroid/app/ProgressDialog;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method private InitialDisplay()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 105
    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_2a

    .line 106
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v10, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f09006d

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 108
    const-string v11, "OK"

    new-instance v12, Lorg/cwb/cwb_fish_2012mar_nearsea$3;

    invoke-direct {v12, p0}, Lorg/cwb/cwb_fish_2012mar_nearsea$3;-><init>(Lorg/cwb/cwb_fish_2012mar_nearsea;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 113
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 150
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_29
    return-void

    .line 117
    :cond_2a
    const v10, 0x7f080035

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_fish_2012mar_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 119
    .local v1, currentPosTitle:Landroid/widget/TextView;
    const v10, 0x7f09007a

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_fish_2012mar_nearsea;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Object;

    .line 120
    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;

    iget-object v10, v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->Cname:Ljava/lang/String;

    aput-object v10, v12, v14

    .line 119
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 118
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v10, 0x7f08000d

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_fish_2012mar_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 124
    .local v7, weatherIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 125
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "b_day_wea"

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;

    iget-object v10, v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->Image:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "drawable"

    invoke-virtual {p0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 124
    invoke-virtual {v11, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 123
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    const v10, 0x7f080038

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_fish_2012mar_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 128
    .local v4, temperatureStatus:Landroid/widget/TextView;
    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;

    iget-object v10, v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->Weather:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v10, 0x7f080039

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_fish_2012mar_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 132
    .local v3, temperatureLaunchTime:Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f090040

    invoke-virtual {p0, v11}, Lorg/cwb/cwb_fish_2012mar_nearsea;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;

    iget-object v10, v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->Issue_Time:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 131
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v10, 0x7f08003a

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_fish_2012mar_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 136
    .local v2, temperatureEffetiveTime:Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f09004b

    invoke-virtual {p0, v11}, Lorg/cwb/cwb_fish_2012mar_nearsea;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 137
    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;

    iget-object v10, v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->From_Time:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "~"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;

    iget-object v10, v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->To_Time:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 136
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 135
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v10, 0x7f08003c

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_fish_2012mar_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 140
    .local v8, winddir:Landroid/widget/TextView;
    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;

    iget-object v10, v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->WindDir:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v10, 0x7f08003d

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_fish_2012mar_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 143
    .local v6, wavetype:Landroid/widget/TextView;
    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;

    iget-object v10, v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->WaveType:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v10, 0x7f08003e

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_fish_2012mar_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 146
    .local v5, waveheight:Landroid/widget/TextView;
    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;

    iget-object v10, v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->WaveHeight:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v10, 0x7f08003f

    invoke-virtual {p0, v10}, Lorg/cwb/cwb_fish_2012mar_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 149
    .local v9, windlevel:Landroid/widget/TextView;
    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;

    iget-object v10, v10, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->WindLevel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29
.end method

.method static synthetic access$0(Lorg/cwb/cwb_fish_2012mar_nearsea;)V
    .registers 1
    .parameter

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->getHttpData()V

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/cwb_fish_2012mar_nearsea;)V
    .registers 1
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->InitialDisplay()V

    return-void
.end method

.method static synthetic access$2(Lorg/cwb/cwb_fish_2012mar_nearsea;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cwb/cwb_fish_2012mar_nearsea;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private getHttpData()V
    .registers 13

    .prologue
    .line 187
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 188
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lorg/cwb/cwb_fish_2012mar_nearsea;->DATA_URL:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lorg/cwb/cwb_fish_2012mar_nearsea;->area:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 189
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 191
    .local v9, rp:Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 192
    .local v6, in:Ljava/io/BufferedReader;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_61

    .line 193
    new-instance v6, Ljava/io/BufferedReader;

    .end local v6           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 196
    .restart local v6       #in:Ljava/io/BufferedReader;
    const-string v7, ""

    .line 197
    .local v7, line:Ljava/lang/String;
    const-string v2, ""

    .line 198
    .local v2, content:Ljava/lang/String;
    :goto_46
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_62

    .line 202
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    .local v8, object:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_52
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v5, v10, :cond_74

    .line 249
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 255
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :cond_61
    :goto_61
    return-void

    .line 199
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #content:Ljava/lang/String;
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #in:Ljava/io/BufferedReader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v9       #rp:Lorg/apache/http/HttpResponse;
    :cond_62
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    .line 205
    .restart local v5       #i:I
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_74
    new-instance v0, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;-><init>(Lorg/cwb/cwb_fish_2012mar_nearsea;)V

    .line 207
    .local v0, areaData:Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 208
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 209
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Cname"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 206
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->Cname:Ljava/lang/String;

    .line 211
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 212
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 213
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Issue_Time"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 210
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->Issue_Time:Ljava/lang/String;

    .line 215
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 216
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 217
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "From_Time"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 214
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->From_Time:Ljava/lang/String;

    .line 219
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 220
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 221
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "To_Time"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 218
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->To_Time:Ljava/lang/String;

    .line 223
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 224
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 225
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Weather"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 222
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->Weather:Ljava/lang/String;

    .line 227
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 228
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 229
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "Image"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 226
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->Image:Ljava/lang/String;

    .line 231
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 232
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 233
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "WindDir"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 230
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->WindDir:Ljava/lang/String;

    .line 235
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 236
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 237
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "WaveType"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 234
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->WaveType:Ljava/lang/String;

    .line 239
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 240
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 241
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "WaveHeight"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 238
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->WaveHeight:Ljava/lang/String;

    .line 243
    const-string v10, "Areas"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 244
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 245
    const-string v11, "forecasts"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "WindLevel"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 242
    iput-object v10, v0, Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;->WindLevel:Ljava/lang/String;

    .line 246
    iget-object v10, p0, Lorg/cwb/cwb_fish_2012mar_nearsea;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16e} :catch_172

    .line 204
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_52

    .line 252
    .end local v0           #areaData:Lorg/cwb/cwb_fish_2012mar_nearsea$nearSeaData;
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #i:I
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #object:Lorg/json/JSONObject;
    .end local v9           #rp:Lorg/apache/http/HttpResponse;
    :catch_172
    move-exception v3

    .line 253
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_61
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lorg/cwb/cwb_fish_2012mar_nearsea;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "graphic_cityid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 35
    invoke-virtual {p0}, Lorg/cwb/cwb_fish_2012mar_nearsea;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "graphic_cityid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cwb/cwb_fish_2012mar_nearsea;->area:Ljava/lang/String;

    .line 39
    :cond_21
    new-instance v1, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;

    invoke-direct {v1, p0}, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;-><init>(Lorg/cwb/cwb_fish_2012mar_nearsea;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    const v1, 0x7f080036

    invoke-virtual {p0, v1}, Lorg/cwb/cwb_fish_2012mar_nearsea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 42
    .local v0, selecOtherSea:Landroid/widget/LinearLayout;
    new-instance v1, Lorg/cwb/cwb_fish_2012mar_nearsea$1;

    invoke-direct {v1, p0}, Lorg/cwb/cwb_fish_2012mar_nearsea$1;-><init>(Lorg/cwb/cwb_fish_2012mar_nearsea;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 261
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 267
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 75
    new-instance v1, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;

    invoke-direct {v1, p0}, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;-><init>(Lorg/cwb/cwb_fish_2012mar_nearsea;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/cwb/cwb_fish_2012mar_nearsea$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    :goto_16
    return-void

    .line 77
    :cond_17
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 79
    const-string v2, "OK"

    new-instance v3, Lorg/cwb/cwb_fish_2012mar_nearsea$2;

    invoke-direct {v3, p0}, Lorg/cwb/cwb_fish_2012mar_nearsea$2;-><init>(Lorg/cwb/cwb_fish_2012mar_nearsea;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_16
.end method
