.class public Lorg/cwb/cwb_stationlist;
.super Ljava/lang/Object;
.source "cwb_stationlist.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "cwb_stationlist"


# instance fields
.field avgRain:Ljava/lang/String;

.field gifmap:Ljava/lang/String;

.field gust:Ljava/lang/String;

.field gust_ms:Ljava/lang/String;

.field highestTemp:Ljava/lang/String;

.field humidity:Ljava/lang/String;

.field lowestTemp:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDocument:Lorg/w3c/dom/Document;

.field mTotalStationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field press:Ljava/lang/String;

.field rain:Ljava/lang/String;

.field temp_status:Ljava/lang/String;

.field time:Ljava/lang/String;

.field visible_status:Ljava/lang/String;

.field weather:Ljava/lang/String;

.field wind_ms:Ljava/lang/String;

.field wind_staus:Ljava/lang/String;

.field winddir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_stationlist;->mTotalStationList:Ljava/util/ArrayList;

    .line 41
    return-void
.end method


# virtual methods
.method public getDocument()Lorg/w3c/dom/Document;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getGifmap()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->gifmap:Ljava/lang/String;

    return-object v0
.end method

.method public getGust()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->gust:Ljava/lang/String;

    return-object v0
.end method

.method public getGustMS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->gust_ms:Ljava/lang/String;

    return-object v0
.end method

.method public getHumidity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->humidity:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->press:Ljava/lang/String;

    return-object v0
.end method

.method public getRain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->rain:Ljava/lang/String;

    return-object v0
.end method

.method public getTempStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->temp_status:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalStationList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->mTotalStationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVisible()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->visible_status:Ljava/lang/String;

    return-object v0
.end method

.method public getWeather()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->weather:Ljava/lang/String;

    return-object v0
.end method

.method public getWindMS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->wind_ms:Ljava/lang/String;

    return-object v0
.end method

.method public getWindStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->wind_staus:Ljava/lang/String;

    return-object v0
.end method

.method public getWinddir()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->winddir:Ljava/lang/String;

    return-object v0
.end method

.method public getavgRain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->avgRain:Ljava/lang/String;

    return-object v0
.end method

.method public gethighestTemp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->highestTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getlowestTemp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/cwb/cwb_stationlist;->lowestTemp:Ljava/lang/String;

    return-object v0
.end method

.method public setDocument(Lorg/w3c/dom/Document;)V
    .registers 2
    .parameter "doc"

    .prologue
    .line 100
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    .line 101
    return-void
.end method

.method public setGifmap(Ljava/lang/String;)V
    .registers 2
    .parameter "gifmap"

    .prologue
    .line 51
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->gifmap:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setGust(Ljava/lang/String;)V
    .registers 2
    .parameter "gust"

    .prologue
    .line 70
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->gust:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setGustMS(Ljava/lang/String;)V
    .registers 2
    .parameter "gust_ms"

    .prologue
    .line 73
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->gust_ms:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setHumidity(Ljava/lang/String;)V
    .registers 2
    .parameter "humidity"

    .prologue
    .line 79
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->humidity:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 48
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPress(Ljava/lang/String;)V
    .registers 2
    .parameter "press"

    .prologue
    .line 82
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->press:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setRain(Ljava/lang/String;)V
    .registers 2
    .parameter "rain"

    .prologue
    .line 85
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->rain:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTempStatus(Ljava/lang/String;)V
    .registers 2
    .parameter "temp_status"

    .prologue
    .line 54
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->temp_status:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2
    .parameter "time"

    .prologue
    .line 45
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->time:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUpStationListClass(Ljava/lang/String;)V
    .registers 42
    .parameter "current_Station"

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mTotalStationList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 172
    const/16 v22, 0x0

    .line 173
    .local v22, stationNode:Lorg/w3c/dom/NodeList;
    const/16 v26, 0x0

    .line 174
    .local v26, timeNode:Lorg/w3c/dom/NodeList;
    const/16 v25, 0x0

    .line 175
    .local v25, tempNode:Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .line 176
    .local v6, gifNode:Lorg/w3c/dom/NodeList;
    const/16 v33, 0x0

    .line 178
    .local v33, weatherNode:Lorg/w3c/dom/NodeList;
    const/16 v34, 0x0

    .line 179
    .local v34, winddirNode:Lorg/w3c/dom/NodeList;
    const/16 v36, 0x0

    .line 180
    .local v36, windstatusNode:Lorg/w3c/dom/NodeList;
    const/16 v35, 0x0

    .line 181
    .local v35, windmsNode:Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .line 182
    .local v8, gustNode:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .line 183
    .local v9, gustmsNode:Lorg/w3c/dom/NodeList;
    const/16 v28, 0x0

    .line 184
    .local v28, visibleNode:Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .line 185
    .local v13, humidityNode:Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .line 186
    .local v18, pressyNode:Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .line 188
    .local v20, rainNode:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 189
    .local v11, highestTempNode:Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    .line 190
    .local v16, lowestTempNode:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .line 192
    .local v2, avgRainNode:Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    if-nez v37, :cond_2e

    .line 293
    :cond_2d
    :goto_2d
    return-void

    .line 196
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "Station"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "obstime"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "temp"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "gifmap"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "weather"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "winddir"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "wind"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "wind_ms"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "gust"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "gust_ms"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "vis"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "humidity"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "press"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "rain"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "meantxmax"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "meantxmin"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mDocument:Lorg/w3c/dom/Document;

    move-object/from16 v37, v0

    const-string v38, "precp"

    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 217
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v37

    if-nez v37, :cond_109

    .line 218
    const-string v37, "cwb_stationlist"

    const-string v38, "error : get none stationNode"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 223
    :cond_109
    const/4 v14, 0x0

    .local v14, i:I
    :goto_10a
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v37

    move/from16 v0, v37

    if-lt v14, v0, :cond_2ce

    .line 227
    const/4 v14, 0x0

    :goto_113
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v37

    move/from16 v0, v37

    if-ge v14, v0, :cond_2d

    .line 228
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    .line 230
    .local v21, sElement:Lorg/w3c/dom/Element;
    const-string v37, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_321

    .line 232
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/Element;

    .line 233
    .local v23, tElement:Lorg/w3c/dom/Element;
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    .line 234
    .local v24, tempElement:Lorg/w3c/dom/Element;
    invoke-interface {v6, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 235
    .local v5, gifElement:Lorg/w3c/dom/Element;
    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    check-cast v29, Lorg/w3c/dom/Element;

    .line 237
    .local v29, wElement:Lorg/w3c/dom/Element;
    move-object/from16 v0, v34

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    check-cast v30, Lorg/w3c/dom/Element;

    .line 238
    .local v30, wdElement:Lorg/w3c/dom/Element;
    move-object/from16 v0, v36

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    check-cast v32, Lorg/w3c/dom/Element;

    .line 239
    .local v32, wdsElement:Lorg/w3c/dom/Element;
    move-object/from16 v0, v35

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 240
    .local v31, wdmsElement:Lorg/w3c/dom/Element;
    invoke-interface {v8, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 241
    .local v4, gElement:Lorg/w3c/dom/Element;
    invoke-interface {v9, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 242
    .local v7, gmsElement:Lorg/w3c/dom/Element;
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/Element;

    .line 243
    .local v27, vElement:Lorg/w3c/dom/Element;
    invoke-interface {v13, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 244
    .local v10, hElement:Lorg/w3c/dom/Element;
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Element;

    .line 245
    .local v17, pElement:Lorg/w3c/dom/Element;
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 247
    .local v19, rElement:Lorg/w3c/dom/Element;
    invoke-interface {v11, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 248
    .local v12, htElement:Lorg/w3c/dom/Element;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 249
    .local v15, lowElement:Lorg/w3c/dom/Element;
    invoke-interface {v2, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 253
    .local v3, avrElement:Lorg/w3c/dom/Element;
    const-string v37, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setName(Ljava/lang/String;)V

    .line 254
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setGifmap(Ljava/lang/String;)V

    .line 256
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setWeather(Ljava/lang/String;)V

    .line 257
    const-string v37, "status"

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v38, "1"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_2f1

    .line 258
    const-string v37, "-"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setTempStatus(Ljava/lang/String;)V

    .line 261
    :goto_1f5
    const-string v37, "value"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setTime(Ljava/lang/String;)V

    .line 263
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setWinddir(Ljava/lang/String;)V

    .line 264
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setWindStatus(Ljava/lang/String;)V

    .line 265
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setWindMS(Ljava/lang/String;)V

    .line 267
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setGust(Ljava/lang/String;)V

    .line 268
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setGustMS(Ljava/lang/String;)V

    .line 270
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setVisible(Ljava/lang/String;)V

    .line 271
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setHumidity(Ljava/lang/String;)V

    .line 272
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setPress(Ljava/lang/String;)V

    .line 273
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setRain(Ljava/lang/String;)V

    .line 275
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    if-eqz v37, :cond_302

    .line 276
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->sethighestTemp(Ljava/lang/String;)V

    .line 280
    :goto_2a2
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    if-eqz v37, :cond_30c

    .line 281
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setlowestTemp(Ljava/lang/String;)V

    .line 285
    :goto_2b7
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    if-eqz v37, :cond_316

    .line 286
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setavgRain(Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 224
    .end local v3           #avrElement:Lorg/w3c/dom/Element;
    .end local v4           #gElement:Lorg/w3c/dom/Element;
    .end local v5           #gifElement:Lorg/w3c/dom/Element;
    .end local v7           #gmsElement:Lorg/w3c/dom/Element;
    .end local v10           #hElement:Lorg/w3c/dom/Element;
    .end local v12           #htElement:Lorg/w3c/dom/Element;
    .end local v15           #lowElement:Lorg/w3c/dom/Element;
    .end local v17           #pElement:Lorg/w3c/dom/Element;
    .end local v19           #rElement:Lorg/w3c/dom/Element;
    .end local v21           #sElement:Lorg/w3c/dom/Element;
    .end local v23           #tElement:Lorg/w3c/dom/Element;
    .end local v24           #tempElement:Lorg/w3c/dom/Element;
    .end local v27           #vElement:Lorg/w3c/dom/Element;
    .end local v29           #wElement:Lorg/w3c/dom/Element;
    .end local v30           #wdElement:Lorg/w3c/dom/Element;
    .end local v31           #wdmsElement:Lorg/w3c/dom/Element;
    .end local v32           #wdsElement:Lorg/w3c/dom/Element;
    :cond_2ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cwb/cwb_stationlist;->mTotalStationList:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v37

    check-cast v37, Lorg/w3c/dom/Element;

    const-string v39, "name"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_10a

    .line 260
    .restart local v3       #avrElement:Lorg/w3c/dom/Element;
    .restart local v4       #gElement:Lorg/w3c/dom/Element;
    .restart local v5       #gifElement:Lorg/w3c/dom/Element;
    .restart local v7       #gmsElement:Lorg/w3c/dom/Element;
    .restart local v10       #hElement:Lorg/w3c/dom/Element;
    .restart local v12       #htElement:Lorg/w3c/dom/Element;
    .restart local v15       #lowElement:Lorg/w3c/dom/Element;
    .restart local v17       #pElement:Lorg/w3c/dom/Element;
    .restart local v19       #rElement:Lorg/w3c/dom/Element;
    .restart local v21       #sElement:Lorg/w3c/dom/Element;
    .restart local v23       #tElement:Lorg/w3c/dom/Element;
    .restart local v24       #tempElement:Lorg/w3c/dom/Element;
    .restart local v27       #vElement:Lorg/w3c/dom/Element;
    .restart local v29       #wElement:Lorg/w3c/dom/Element;
    .restart local v30       #wdElement:Lorg/w3c/dom/Element;
    .restart local v31       #wdmsElement:Lorg/w3c/dom/Element;
    .restart local v32       #wdsElement:Lorg/w3c/dom/Element;
    :cond_2f1
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setTempStatus(Ljava/lang/String;)V

    goto/16 :goto_1f5

    .line 278
    :cond_302
    const-string v37, "-"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->sethighestTemp(Ljava/lang/String;)V

    goto :goto_2a2

    .line 283
    :cond_30c
    const-string v37, "-"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setlowestTemp(Ljava/lang/String;)V

    goto :goto_2b7

    .line 288
    :cond_316
    const-string v37, "-"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_stationlist;->setavgRain(Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 227
    .end local v3           #avrElement:Lorg/w3c/dom/Element;
    .end local v4           #gElement:Lorg/w3c/dom/Element;
    .end local v5           #gifElement:Lorg/w3c/dom/Element;
    .end local v7           #gmsElement:Lorg/w3c/dom/Element;
    .end local v10           #hElement:Lorg/w3c/dom/Element;
    .end local v12           #htElement:Lorg/w3c/dom/Element;
    .end local v15           #lowElement:Lorg/w3c/dom/Element;
    .end local v17           #pElement:Lorg/w3c/dom/Element;
    .end local v19           #rElement:Lorg/w3c/dom/Element;
    .end local v23           #tElement:Lorg/w3c/dom/Element;
    .end local v24           #tempElement:Lorg/w3c/dom/Element;
    .end local v27           #vElement:Lorg/w3c/dom/Element;
    .end local v29           #wElement:Lorg/w3c/dom/Element;
    .end local v30           #wdElement:Lorg/w3c/dom/Element;
    .end local v31           #wdmsElement:Lorg/w3c/dom/Element;
    .end local v32           #wdsElement:Lorg/w3c/dom/Element;
    :cond_321
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_113
.end method

.method public setVisible(Ljava/lang/String;)V
    .registers 2
    .parameter "visible_status"

    .prologue
    .line 76
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->visible_status:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setWeather(Ljava/lang/String;)V
    .registers 2
    .parameter "weather"

    .prologue
    .line 57
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->weather:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setWindMS(Ljava/lang/String;)V
    .registers 2
    .parameter "wind_ms"

    .prologue
    .line 67
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->wind_ms:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setWindStatus(Ljava/lang/String;)V
    .registers 2
    .parameter "wind_staus"

    .prologue
    .line 64
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->wind_staus:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setWinddir(Ljava/lang/String;)V
    .registers 2
    .parameter "winddir"

    .prologue
    .line 61
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->winddir:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setavgRain(Ljava/lang/String;)V
    .registers 2
    .parameter "avgRain"

    .prologue
    .line 95
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->avgRain:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public sethighestTemp(Ljava/lang/String;)V
    .registers 2
    .parameter "highestTemp"

    .prologue
    .line 89
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->highestTemp:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setlowestTemp(Ljava/lang/String;)V
    .registers 2
    .parameter "lowestTemp"

    .prologue
    .line 92
    iput-object p1, p0, Lorg/cwb/cwb_stationlist;->lowestTemp:Ljava/lang/String;

    .line 93
    return-void
.end method
