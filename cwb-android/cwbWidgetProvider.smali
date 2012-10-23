.class public Lorg/cwb/cwbWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "cwbWidgetProvider.java"


# instance fields
.field private locationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 33
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 44
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lorg/cwb/cwbWidgetProvider;->locationManager:Landroid/location/LocationManager;

    .line 45
    iget-object v1, p0, Lorg/cwb/cwbWidgetProvider;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 47
    .local v6, currentLocation:Landroid/location/Location;
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 50
    .local v0, gc:Landroid/location/Geocoder;
    :try_start_1e
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 52
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 53
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    .line 51
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    .line 53
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v8, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3b} :catch_3c

    .line 58
    :goto_3b
    return-void

    .line 54
    :catch_3c
    move-exception v7

    .line 56
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 20
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 27
    return-void
.end method
