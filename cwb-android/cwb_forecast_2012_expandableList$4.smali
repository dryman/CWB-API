.class Lorg/cwb/cwb_forecast_2012_expandableList$4;
.super Ljava/lang/Object;
.source "cwb_forecast_2012_expandableList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_2012_expandableList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012_expandableList;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$4;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 227
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$4;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$5(Lorg/cwb/cwb_forecast_2012_expandableList;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 228
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$4;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$5(Lorg/cwb/cwb_forecast_2012_expandableList;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 230
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$1()Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_2e

    .line 234
    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList$4;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    monitor-enter v2

    .line 235
    :try_start_1f
    new-instance v1, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;

    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012_expandableList$4;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {v1, v3}, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_38

    .line 237
    return-void

    .line 231
    :cond_2e
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$1()Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 234
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method
