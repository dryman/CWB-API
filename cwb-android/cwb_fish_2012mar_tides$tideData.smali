.class Lorg/cwb/cwb_fish_2012mar_tides$tideData;
.super Ljava/lang/Object;
.source "cwb_fish_2012mar_tides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_fish_2012mar_tides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tideData"
.end annotation


# instance fields
.field public FcstDate:Ljava/lang/String;

.field public Height:Ljava/lang/String;

.field public MoonDate:Ljava/lang/String;

.field public Station:Ljava/lang/String;

.field public Style:Ljava/lang/String;

.field public Time:Ljava/lang/String;

.field public Week:Ljava/lang/String;

.field final synthetic this$0:Lorg/cwb/cwb_fish_2012mar_tides;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_fish_2012mar_tides;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->this$0:Lorg/cwb/cwb_fish_2012mar_tides;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->FcstDate:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Week:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->MoonDate:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Station:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Style:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Time:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_fish_2012mar_tides$tideData;->Height:Ljava/lang/String;

    return-void
.end method
