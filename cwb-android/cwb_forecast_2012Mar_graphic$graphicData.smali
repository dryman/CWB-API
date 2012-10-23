.class public Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_graphic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_graphic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "graphicData"
.end annotation


# instance fields
.field public Day:Ljava/lang/String;

.field public MaxRange:Ljava/lang/String;

.field public MaxT:Ljava/lang/String;

.field public MinRange:Ljava/lang/String;

.field public MinT:Ljava/lang/String;

.field public Week:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MinRange:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MaxRange:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->Day:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->Week:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MinT:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MaxT:Ljava/lang/String;

    .line 47
    return-void
.end method
