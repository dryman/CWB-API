.class public Lorg/cwb/cwb_findlocation;
.super Ljava/lang/Object;
.source "cwb_findlocation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "cwb_findlication"

.field static locationListenerGps:Landroid/location/LocationListener;

.field private static mCWBData:Lorg/cwb/cwb_stationlist;

.field private static mListener:Lorg/cwb/RequestCallback;

.field static mLocationManager:Landroid/location/LocationManager;


# instance fields
.field MIN_DISTANCE:I

.field MIN_TIME_INTERVAL:I

.field locationListenerNetwork:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    .line 79
    new-instance v0, Lorg/cwb/cwb_findlocation$1;

    invoke-direct {v0}, Lorg/cwb/cwb_findlocation$1;-><init>()V

    sput-object v0, Lorg/cwb/cwb_findlocation;->locationListenerGps:Landroid/location/LocationListener;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/cwb/cwb_stationlist;Lorg/cwb/RequestCallback;)V
    .registers 5
    .parameter "ctx"
    .parameter "cwb"
    .parameter "callback"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lorg/cwb/cwb_findlocation;->MIN_TIME_INTERVAL:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lorg/cwb/cwb_findlocation;->MIN_DISTANCE:I

    .line 95
    new-instance v0, Lorg/cwb/cwb_findlocation$2;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_findlocation$2;-><init>(Lorg/cwb/cwb_findlocation;)V

    iput-object v0, p0, Lorg/cwb/cwb_findlocation;->locationListenerNetwork:Landroid/location/LocationListener;

    .line 24
    sput-object p2, Lorg/cwb/cwb_findlocation;->mCWBData:Lorg/cwb/cwb_stationlist;

    .line 25
    sput-object p3, Lorg/cwb/cwb_findlocation;->mListener:Lorg/cwb/RequestCallback;

    .line 26
    invoke-direct {p0}, Lorg/cwb/cwb_findlocation;->initLocationService()V

    .line 28
    return-void
.end method

.method static synthetic access$0()Lorg/cwb/RequestCallback;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lorg/cwb/cwb_findlocation;->mListener:Lorg/cwb/RequestCallback;

    return-object v0
.end method

.method public static checkLocationCanBeFound()Z
    .registers 2

    .prologue
    .line 148
    sget-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_10

    .line 149
    sget-object v0, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    .line 150
    :cond_10
    sget-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 151
    sget-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 152
    :cond_24
    const/4 v0, 0x1

    .line 154
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static getCurrentLoacation(DD)Ljava/lang/String;
    .registers 22
    .parameter "now_latitude"
    .parameter "now_longtitude"

    .prologue
    .line 117
    const-string v9, ""

    .line 118
    .local v9, station_name:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 120
    .local v5, min_distance:D
    sget-object v12, Lorg/cwb/cwb_findlocation;->mCWBData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v12}, Lorg/cwb/cwb_stationlist;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v12

    if-nez v12, :cond_f

    .line 121
    const-string v12, ""

    .line 139
    :goto_e
    return-object v12

    .line 123
    :cond_f
    sget-object v12, Lorg/cwb/cwb_findlocation;->mCWBData:Lorg/cwb/cwb_stationlist;

    invoke-virtual {v12}, Lorg/cwb/cwb_stationlist;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v12

    const-string v13, "Station"

    invoke-interface {v12, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 125
    .local v8, stationNode:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1c
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lt v4, v12, :cond_24

    move-object v12, v9

    .line 139
    goto :goto_e

    .line 126
    :cond_24
    invoke-interface {v8, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 129
    .local v7, sElement:Lorg/w3c/dom/Element;
    new-instance v12, Ljava/lang/Double;

    const-string v13, "longitude"

    invoke-interface {v7, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 130
    .local v2, doc_longtitude:D
    new-instance v12, Ljava/lang/Double;

    const-string v13, "latitude"

    invoke-interface {v7, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 131
    .local v0, doc_latitude:D
    sub-double v12, p0, v0

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-double v14, p2, v2

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double v10, v12, v14

    .line 132
    .local v10, temp_distance:D
    if-nez v4, :cond_5d

    .line 133
    move-wide v5, v10

    .line 134
    :cond_5d
    cmpg-double v12, v10, v5

    if-gez v12, :cond_68

    .line 135
    move-wide v5, v10

    .line 136
    const-string v12, "name"

    invoke-interface {v7, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 125
    :cond_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c
.end method

.method public static getLastKnowLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 161
    sget-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method private initLocationService()V
    .registers 10

    .prologue
    .line 31
    const-string v0, "cwb_findlication"

    const-string v1, "initLocationService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_17

    .line 33
    sget-object v0, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    .line 35
    :cond_17
    invoke-virtual {p0}, Lorg/cwb/cwb_findlocation;->isGPSEnabled()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 36
    new-instance v6, Landroid/app/AlertDialog$Builder;

    sget-object v0, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const-string v0, "GPS\u672a\u5553\u7528"

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 38
    const-string v1, "OK"

    new-instance v2, Lorg/cwb/cwb_findlocation$3;

    invoke-direct {v2, p0}, Lorg/cwb/cwb_findlocation$3;-><init>(Lorg/cwb/cwb_findlocation;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 69
    .end local v6           #builder:Landroid/app/AlertDialog$Builder;
    :cond_3c
    :goto_3c
    return-void

    .line 47
    :cond_3d
    sget-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 48
    iget v2, p0, Lorg/cwb/cwb_findlocation;->MIN_TIME_INTERVAL:I

    int-to-long v2, v2

    iget v4, p0, Lorg/cwb/cwb_findlocation;->MIN_DISTANCE:I

    int-to-float v4, v4

    sget-object v5, Lorg/cwb/cwb_findlocation;->locationListenerGps:Landroid/location/LocationListener;

    .line 47
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 50
    sget-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 52
    .local v7, location:Landroid/location/Location;
    if-eqz v7, :cond_3c

    .line 54
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 55
    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 53
    invoke-static {v0, v1, v2, v3}, Lorg/cwb/cwb_findlocation;->getCurrentLoacation(DD)Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, station:Ljava/lang/String;
    sget-object v0, Lorg/cwb/cwb_findlocation;->mListener:Lorg/cwb/RequestCallback;

    invoke-interface {v0, v8}, Lorg/cwb/RequestCallback;->onComplete(Ljava/lang/Object;)V

    goto :goto_3c
.end method


# virtual methods
.method public isGPSEnabled()Z
    .registers 3

    .prologue
    .line 72
    sget-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_10

    .line 73
    sget-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public unRegisterLocationListener()V
    .registers 3

    .prologue
    .line 142
    sget-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Lorg/cwb/cwb_findlocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lorg/cwb/cwb_findlocation;->mLocationManager:Landroid/location/LocationManager;

    .line 145
    return-void
.end method
