.class Lorg/cwb/cwb_main_2012mar$nowData;
.super Ljava/lang/Object;
.source "cwb_main_2012mar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_main_2012mar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "nowData"
.end annotation


# instance fields
.field public Humidity:Ljava/lang/String;

.field public Obstime:Ljava/lang/String;

.field public Rain:Ljava/lang/String;

.field public Stid:Ljava/lang/String;

.field public Stname:Ljava/lang/String;

.field public Temperature:Ljava/lang/String;

.field public Weather:Ljava/lang/String;

.field public Wind:Ljava/lang/String;

.field public WindDir:Ljava/lang/String;

.field public WindScale:Ljava/lang/String;

.field public gifmap:Ljava/lang/String;

.field public meanmonth:Ljava/lang/String;

.field public meantxmax:Ljava/lang/String;

.field public meantxmin:Ljava/lang/String;

.field public precp:Ljava/lang/String;

.field final synthetic this$0:Lorg/cwb/cwb_main_2012mar;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main_2012mar;)V
    .registers 3
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar$nowData;->this$0:Lorg/cwb/cwb_main_2012mar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->Stid:Ljava/lang/String;

    .line 337
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->Stname:Ljava/lang/String;

    .line 338
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->Obstime:Ljava/lang/String;

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->Weather:Ljava/lang/String;

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->gifmap:Ljava/lang/String;

    .line 341
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->Temperature:Ljava/lang/String;

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->WindDir:Ljava/lang/String;

    .line 343
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->WindScale:Ljava/lang/String;

    .line 344
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->Wind:Ljava/lang/String;

    .line 345
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->Humidity:Ljava/lang/String;

    .line 346
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->Rain:Ljava/lang/String;

    .line 347
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->meanmonth:Ljava/lang/String;

    .line 348
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->meantxmax:Ljava/lang/String;

    .line 349
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->meantxmin:Ljava/lang/String;

    .line 350
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$nowData;->precp:Ljava/lang/String;

    return-void
.end method
