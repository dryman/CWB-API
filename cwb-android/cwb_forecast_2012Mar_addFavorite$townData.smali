.class Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_addFavorite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_addFavorite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "townData"
.end annotation


# instance fields
.field public TownName:Ljava/lang/String;

.field public TownshipID:Ljava/lang/String;

.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

.field public zipcode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V
    .registers 3
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;->TownshipID:Ljava/lang/String;

    .line 403
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;->TownName:Ljava/lang/String;

    .line 404
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$townData;->zipcode:Ljava/lang/String;

    return-void
.end method
