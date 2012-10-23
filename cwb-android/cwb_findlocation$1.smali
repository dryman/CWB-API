.class Lorg/cwb/cwb_findlocation$1;
.super Ljava/lang/Object;
.source "cwb_findlocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_findlocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7
    .parameter "location"

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/cwb/cwb_findlocation;->getCurrentLoacation(DD)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, station:Ljava/lang/String;
    invoke-static {}, Lorg/cwb/cwb_findlocation;->access$0()Lorg/cwb/RequestCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/cwb/RequestCallback;->onComplete(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 88
    .end local v0           #station:Ljava/lang/String;
    :goto_13
    return-void

    .line 87
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 89
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 90
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 91
    return-void
.end method
