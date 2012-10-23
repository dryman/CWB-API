.class Lorg/cwb/cwb_lifeStyle$2;
.super Ljava/lang/Object;
.source "cwb_lifeStyle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_lifeStyle;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_lifeStyle;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_lifeStyle;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_lifeStyle$2;->this$0:Lorg/cwb/cwb_lifeStyle;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 85
    invoke-static {}, Lorg/cwb/cwb_utilities;->isGPSEnable()Z

    move-result v3

    if-nez v3, :cond_8

    .line 115
    :cond_7
    :goto_7
    return-void

    .line 89
    :cond_8
    sget-object v3, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 90
    iget-object v4, p0, Lorg/cwb/cwb_lifeStyle$2;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->mo:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v4}, Lorg/cwb/cwb_lifeStyle;->access$5(Lorg/cwb/cwb_lifeStyle;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/MyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v4

    .line 89
    invoke-static {v3, v4}, Lorg/cwb/cwb_utilities;->getAddressbyGeoPoint(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Address;

    move-result-object v2

    .line 92
    .local v2, mAddr:Landroid/location/Address;
    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle$2;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->mo:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle;->access$5(Lorg/cwb/cwb_lifeStyle;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/MyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v3

    if-nez v3, :cond_2f

    .line 93
    sget-object v3, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 94
    const-string v4, "\u76ee\u524d\u4f4d\u7f6e\u7121\u6cd5\u4f7f\u7528, \u8acb\u7a0d\u5019\u518d\u8a66"

    .line 93
    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 96
    :cond_2f
    if-nez v2, :cond_3d

    .line 97
    sget-object v3, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 98
    const-string v4, "\u76ee\u524d\u4f4d\u7f6e\u7121\u6cd5\u4f7f\u7528, \u8acb\u7a0d\u5019\u518d\u8a66"

    .line 97
    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 101
    :cond_3d
    invoke-virtual {v2, v6}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, currentCity:Ljava/lang/String;
    const-string v3, "\u53f0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u81fa"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_64
    const/4 v1, 0x0

    .local v1, i:I
    :goto_65
    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle$2;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle;->access$4(Lorg/cwb/cwb_lifeStyle;)Lorg/cwb/cwb_lifeStyle$myTaskClass;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->getResultList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 107
    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle$2;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle;->access$4(Lorg/cwb/cwb_lifeStyle;)Lorg/cwb/cwb_lifeStyle$myTaskClass;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->getResultList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;

    iget-object v3, v3, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;->cname:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 108
    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle$2;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle;->access$4(Lorg/cwb/cwb_lifeStyle;)Lorg/cwb/cwb_lifeStyle$myTaskClass;

    move-result-object v4

    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle$2;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle;->access$4(Lorg/cwb/cwb_lifeStyle;)Lorg/cwb/cwb_lifeStyle$myTaskClass;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->getResultList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;

    iget-object v3, v3, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;->CountyID:Ljava/lang/String;

    iput-object v3, v4, Lorg/cwb/cwb_lifeStyle$myTaskClass;->countyID:Ljava/lang/String;

    .line 109
    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle$2;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle;->access$4(Lorg/cwb/cwb_lifeStyle;)Lorg/cwb/cwb_lifeStyle$myTaskClass;

    move-result-object v4

    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle$2;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle;->access$4(Lorg/cwb/cwb_lifeStyle;)Lorg/cwb/cwb_lifeStyle$myTaskClass;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->getResultList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;

    iget-object v3, v3, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;->cname:Ljava/lang/String;

    iput-object v3, v4, Lorg/cwb/cwb_lifeStyle$myTaskClass;->countyName:Ljava/lang/String;

    .line 110
    new-instance v3, Lorg/cwb/cwb_lifeStyle$JSONParseTask;

    iget-object v4, p0, Lorg/cwb/cwb_lifeStyle$2;->this$0:Lorg/cwb/cwb_lifeStyle;

    invoke-direct {v3, v4}, Lorg/cwb/cwb_lifeStyle$JSONParseTask;-><init>(Lorg/cwb/cwb_lifeStyle;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_7

    .line 106
    :cond_cf
    add-int/lit8 v1, v1, 0x1

    goto :goto_65
.end method
