.class Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName$1;
.super Ljava/lang/Object;
.source "cwb_forecast_2012_expandableList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName$1;->this$1:Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 810
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 811
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$24()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    .line 812
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName$1;->this$1:Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;
    invoke-static {v2}, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->access$2(Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;)Lorg/cwb/cwb_forecast_2012_expandableList;

    move-result-object v2

    const v3, 0x7f08009d

    invoke-virtual {v2, v3}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 813
    .local v0, CountySpinner:Landroid/widget/Spinner;
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$24()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 826
    .end local v0           #CountySpinner:Landroid/widget/Spinner;
    :goto_20
    return-void

    .line 815
    :cond_21
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName$1;->this$1:Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;
    invoke-static {v2}, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->access$2(Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;)Lorg/cwb/cwb_forecast_2012_expandableList;

    move-result-object v2

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->mo:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v2}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$2(Lorg/cwb/cwb_forecast_2012_expandableList;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 816
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName$1;->this$1:Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;
    invoke-static {v2}, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->access$2(Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;)Lorg/cwb/cwb_forecast_2012_expandableList;

    move-result-object v2

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->mv:Lcom/google/android/maps/MapView;
    invoke-static {v2}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$25(Lorg/cwb/cwb_forecast_2012_expandableList;)Lcom/google/android/maps/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->removeAllViews()V

    .line 817
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 818
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "package_name"

    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName$1;->this$1:Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;
    invoke-static {v3}, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->access$2(Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;)Lorg/cwb/cwb_forecast_2012_expandableList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cwb/cwb_forecast_2012_expandableList;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    const-string v2, "class_name"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName$1;->this$1:Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;
    invoke-static {v4}, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->access$2(Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;)Lorg/cwb/cwb_forecast_2012_expandableList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cwb/cwb_forecast_2012_expandableList;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cwb_forecast_2012"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    const-string v2, "group_index"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 821
    const-string v2, "view_layer_id"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 822
    const-string v2, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName$1;->this$1:Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;
    invoke-static {v2}, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->access$2(Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;)Lorg/cwb/cwb_forecast_2012_expandableList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/cwb/cwb_forecast_2012_expandableList;->sendBroadcast(Landroid/content/Intent;)V

    .line 824
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName$1;->this$1:Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;
    invoke-static {v2}, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->access$2(Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;)Lorg/cwb/cwb_forecast_2012_expandableList;

    move-result-object v2

    #calls: Lorg/cwb/cwb_forecast_2012_expandableList;->reset()V
    invoke-static {v2}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$26(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    goto :goto_20
.end method
