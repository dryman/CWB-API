.class Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_every3hour.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_every3hour;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "forecast3hrData"
.end annotation


# instance fields
.field public DataTime:Ljava/lang/String;

.field public Day:Ljava/lang/String;

.field public Hour:Ljava/lang/String;

.field public MaxT:Ljava/lang/String;

.field public MinT:Ljava/lang/String;

.field public PoP:Ljava/lang/String;

.field public Rain:Ljava/lang/String;

.field public Temp:Ljava/lang/String;

.field public Time:Ljava/lang/String;

.field public Wx:Ljava/lang/String;

.field public Wx_Icon:Ljava/lang/String;

.field public Wx_Icon2:Ljava/lang/String;

.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)V
    .registers 3
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Time:Ljava/lang/String;

    .line 550
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx_Icon:Ljava/lang/String;

    .line 551
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx:Ljava/lang/String;

    .line 552
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->DataTime:Ljava/lang/String;

    .line 553
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Temp:Ljava/lang/String;

    .line 554
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Rain:Ljava/lang/String;

    .line 555
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Day:Ljava/lang/String;

    .line 556
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Hour:Ljava/lang/String;

    .line 557
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->Wx_Icon2:Ljava/lang/String;

    .line 558
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->MinT:Ljava/lang/String;

    .line 559
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->MaxT:Ljava/lang/String;

    .line 560
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$forecast3hrData;->PoP:Ljava/lang/String;

    return-void
.end method
