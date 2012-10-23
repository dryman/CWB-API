.class Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_every3hour.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_every3hour;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "townData"
.end annotation


# instance fields
.field public TownName:Ljava/lang/String;

.field public TownshipID:Ljava/lang/String;

.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

.field public zipcode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V
    .registers 3
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->TownshipID:Ljava/lang/String;

    .line 445
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->TownName:Ljava/lang/String;

    .line 446
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->zipcode:Ljava/lang/String;

    return-void
.end method
