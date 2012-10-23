.class Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;
.super Ljava/lang/Object;
.source "cwb_forecast_2012Mar_addFavorite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_addFavorite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cityData"
.end annotation


# instance fields
.field public CountyID:Ljava/lang/String;

.field public CountyName:Ljava/lang/String;

.field public TownshipID:Ljava/lang/String;

.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_addFavorite;)V
    .registers 3
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;->this$0:Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;->CountyID:Ljava/lang/String;

    .line 397
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;->CountyName:Ljava/lang/String;

    .line 398
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_addFavorite$cityData;->TownshipID:Ljava/lang/String;

    return-void
.end method
