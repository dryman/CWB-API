.class public Lorg/cwb/cwb_utilities;
.super Ljava/lang/Object;
.source "cwb_utilities.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddressbyGeoPoint(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Address;
    .registers 14
    .parameter "mContext"
    .parameter "location"

    .prologue
    .line 45
    const/4 v9, 0x0

    .line 48
    .local v9, result:Landroid/location/Address;
    if-eqz p1, :cond_44

    .line 49
    :try_start_3
    new-instance v1, Landroid/location/Geocoder;

    sget-object v6, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-direct {v1, p0, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 51
    .local v1, gc:Landroid/location/Geocoder;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 52
    .local v2, geoLatitude:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 54
    .local v4, geoLongitude:D
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Lat : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Lng : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    const/4 v6, 0x1

    .line 56
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v8

    .line 58
    .local v8, listAddr:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_44

    .line 59
    const/4 v6, 0x0

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/location/Address;

    move-object v9, v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_44} :catch_45

    .line 65
    .end local v1           #gc:Landroid/location/Geocoder;
    .end local v2           #geoLatitude:D
    .end local v4           #geoLongitude:D
    .end local v8           #listAddr:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_44
    :goto_44
    return-object v9

    .line 61
    :catch_45
    move-exception v7

    .line 62
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44
.end method

.method public static isGPSEnable()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 20
    sget-object v2, Lorg/cwb/cwb_constants;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_38

    .line 21
    sget-object v2, Lorg/cwb/cwb_constants;->mLocationManager:Landroid/location/LocationManager;

    .line 22
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 23
    sget-object v2, Lorg/cwb/cwb_constants;->mLocationManager:Landroid/location/LocationManager;

    .line 24
    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 27
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "GPS\u672a\u5553\u7528"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 29
    const-string v3, "OK"

    new-instance v4, Lorg/cwb/cwb_utilities$1;

    invoke-direct {v4}, Lorg/cwb/cwb_utilities$1;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 41
    :cond_38
    :goto_38
    return v1

    .line 38
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_39
    const/4 v1, 0x1

    goto :goto_38
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 8
    .parameter "mContext"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_f

    .line 99
    :cond_e
    :goto_e
    return v3

    .line 74
    :cond_f
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 76
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 79
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 82
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_2b
    move v3, v4

    .line 84
    goto :goto_e
.end method
