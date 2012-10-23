.class Lorg/cwb/cwb_findlocation$2;
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


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_findlocation;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_findlocation;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_findlocation$2;->this$0:Lorg/cwb/cwb_findlocation;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7
    .parameter "location"

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/cwb/cwb_findlocation;->getCurrentLoacation(DD)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, station:Ljava/lang/String;
    invoke-static {}, Lorg/cwb/cwb_findlocation;->access$0()Lorg/cwb/RequestCallback;

    move-result-object v2

    monitor-enter v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_1d

    .line 102
    :try_start_11
    invoke-static {}, Lorg/cwb/cwb_findlocation;->access$0()Lorg/cwb/RequestCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/cwb/RequestCallback;->onComplete(Ljava/lang/Object;)V

    .line 101
    monitor-exit v2

    .line 107
    .end local v0           #station:Ljava/lang/String;
    :goto_19
    return-void

    .line 101
    .restart local v0       #station:Ljava/lang/String;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1d} :catch_1d

    .line 104
    .end local v0           #station:Ljava/lang/String;
    :catch_1d
    move-exception v1

    goto :goto_19
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 108
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 109
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 110
    return-void
.end method
