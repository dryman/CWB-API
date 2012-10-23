.class Lorg/cwb/cwb_main_2012mar$otherCityData;
.super Ljava/lang/Object;
.source "cwb_main_2012mar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_main_2012mar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "otherCityData"
.end annotation


# instance fields
.field public Address:Ljava/lang/String;

.field public AddressE:Ljava/lang/String;

.field public Area:Ljava/lang/String;

.field public F36_Area:Ljava/lang/String;

.field public FTravel_Area:Ljava/lang/String;

.field public FWeek_Area:Ljava/lang/String;

.field public StationID:Ljava/lang/String;

.field public StationName:Ljava/lang/String;

.field public StationNameE:Ljava/lang/String;

.field public altitude:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field final synthetic this$0:Lorg/cwb/cwb_main_2012mar;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main_2012mar;)V
    .registers 3
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->this$0:Lorg/cwb/cwb_main_2012mar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->StationName:Ljava/lang/String;

    .line 606
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->StationID:Ljava/lang/String;

    .line 607
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->StationNameE:Ljava/lang/String;

    .line 608
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->Area:Ljava/lang/String;

    .line 609
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->longitude:Ljava/lang/String;

    .line 610
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->latitude:Ljava/lang/String;

    .line 611
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->altitude:Ljava/lang/String;

    .line 612
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->Address:Ljava/lang/String;

    .line 613
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->AddressE:Ljava/lang/String;

    .line 614
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->F36_Area:Ljava/lang/String;

    .line 615
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->FWeek_Area:Ljava/lang/String;

    .line 616
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_main_2012mar$otherCityData;->FTravel_Area:Ljava/lang/String;

    return-void
.end method
