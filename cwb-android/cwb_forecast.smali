.class public Lorg/cwb/cwb_forecast;
.super Landroid/app/Activity;
.source "cwb_forecast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_forecast$ForecastAdapter;
    }
.end annotation


# static fields
.field public static final AUTH_36:Ljava/lang/String; = "http://www.cwb.gov.tw/wwwgis/kml/auth_36.xml"

.field public static bLoading:Z

.field public static screen:I


# instance fields
.field private ClickAreaListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final TAG:Ljava/lang/String;

.field private dialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput v0, Lorg/cwb/cwb_forecast;->screen:I

    .line 32
    sput-boolean v0, Lorg/cwb/cwb_forecast;->bLoading:Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_forecast;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cwb/cwb_forecast;->dialog:Landroid/app/ProgressDialog;

    .line 103
    new-instance v0, Lorg/cwb/cwb_forecast$1;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_forecast$1;-><init>(Lorg/cwb/cwb_forecast;)V

    iput-object v0, p0, Lorg/cwb/cwb_forecast;->ClickAreaListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 27
    return-void
.end method

.method private HasNetwork()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_forecast;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 133
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 134
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 135
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 136
    :goto_1e
    return v3

    :cond_1f
    move v3, v4

    goto :goto_1e
.end method

.method private InitialDisplay()V
    .registers 4

    .prologue
    .line 64
    const v2, 0x7f0800e3

    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 65
    .local v0, listMain:Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 66
    new-instance v1, Lorg/cwb/cwb_forecast$ForecastAdapter;

    invoke-direct {p0}, Lorg/cwb/cwb_forecast;->ShowArea()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lorg/cwb/cwb_forecast$ForecastAdapter;-><init>(Lorg/cwb/cwb_forecast;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 67
    .local v1, theListAdapter:Lorg/cwb/cwb_forecast$ForecastAdapter;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v2, p0, Lorg/cwb/cwb_forecast;->ClickAreaListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object v2, p0, Lorg/cwb/cwb_forecast;->dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2a

    .line 70
    iget-object v2, p0, Lorg/cwb/cwb_forecast;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 71
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cwb/cwb_forecast;->dialog:Landroid/app/ProgressDialog;

    .line 73
    :cond_2a
    return-void
.end method

.method private ShowArea()Ljava/util/ArrayList;
    .registers 6
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
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v3, 0x15

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u57fa\u9686\u5317\u6d77\u5cb8"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "\u53f0\u5317\u5e02"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "\u65b0\u5317\u5e02"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "\u6843\u5712\u5730\u5340"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    .line 96
    const-string v4, "\u65b0\u7af9\u5730\u5340"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "\u82d7\u6817\u5730\u5340"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "\u53f0\u4e2d\u5e02"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "\u5f70\u5316\u5730\u5340"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "\u5357\u6295\u5730\u5340"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "\u96f2\u6797\u5730\u5340"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    .line 97
    const-string v4, "\u5609\u7fa9\u5730\u5340"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "\u53f0\u5357\u5e02"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "\u9ad8\u96c4\u5e02"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "\u5c4f\u6771\u5730\u5340"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    const-string v4, "\u6046\u6625\u534a\u5cf6"

    aput-object v4, v1, v3

    const/16 v3, 0xf

    const-string v4, "\u53f0\u6771\u5730\u5340"

    aput-object v4, v1, v3

    const/16 v3, 0x10

    .line 98
    const-string v4, "\u82b1\u84ee\u5730\u5340"

    aput-object v4, v1, v3

    const/16 v3, 0x11

    const-string v4, "\u5b9c\u862d\u5730\u5340"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "\u6f8e\u6e56\u5730\u5340"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "\u91d1\u9580\u5730\u5340"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    const-string v4, "\u99ac\u7956\u5730\u5340"

    aput-object v4, v1, v3

    .line 99
    .local v1, locations:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_80
    array-length v3, v1

    if-lt v0, v3, :cond_84

    .line 100
    return-object v2

    .line 99
    :cond_84
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_80
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v4, p0, Lorg/cwb/cwb_forecast;->TAG:Ljava/lang/String;

    const-string v5, "oncreate"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0}, Lorg/cwb/cwb_forecast;->HasNetwork()Z

    move-result v4

    if-nez v4, :cond_38

    .line 38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09004a

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_forecast;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 40
    const v4, 0x7f090065

    invoke-virtual {p0, v4}, Lorg/cwb/cwb_forecast;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/cwb/cwb_forecast$2;

    invoke-direct {v5, p0}, Lorg/cwb/cwb_forecast$2;-><init>(Lorg/cwb/cwb_forecast;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 46
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 55
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/Dialog;
    :goto_37
    return-void

    .line 50
    :cond_38
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 51
    .local v3, mInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030017

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 52
    .local v2, mContentView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2}, Lorg/cwb/cwb_forecast;->setContentView(Landroid/view/View;)V

    .line 53
    invoke-direct {p0}, Lorg/cwb/cwb_forecast;->InitialDisplay()V

    .line 54
    const/4 v4, 0x0

    sput v4, Lorg/cwb/cwb_forecast;->screen:I

    goto :goto_37
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lorg/cwb/cwb_forecast;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget v0, Lorg/cwb/cwb_forecast;->screen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    invoke-static {}, Lorg/cwb/cwb_forecast_week;->updateData()V

    .line 60
    :cond_12
    sget v0, Lorg/cwb/cwb_forecast;->screen:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    invoke-static {}, Lorg/cwb/cwb_forecast_travel;->updateData()V

    .line 61
    :cond_1a
    return-void
.end method
