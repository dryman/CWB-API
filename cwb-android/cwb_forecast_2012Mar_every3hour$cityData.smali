.class Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_every3hour.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_every3hour;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cityData"
.end annotation


# instance fields
.field public CountyID:Ljava/lang/String;

.field public CountyName:Ljava/lang/String;

.field public TownshipID:Ljava/lang/String;

.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V
    .registers 3
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;->CountyID:Ljava/lang/String;

    .line 439
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;->CountyName:Ljava/lang/String;

    .line 440
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;->TownshipID:Ljava/lang/String;

    return-void
.end method
