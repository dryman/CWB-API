.class Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;
.super Landroid/os/AsyncTask;
.source "cwb_forecast_2012_expandableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012_expandableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "load368TownData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddr:Landroid/location/Address;

.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012_expandableList;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    .registers 3
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->mAddr:Landroid/location/Address;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .parameter "params"

    .prologue
    .line 360
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->mAddr:Landroid/location/Address;

    if-eqz v0, :cond_3e

    .line 361
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->mAddr:Landroid/location/Address;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->mAddr:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->mAddr:Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #calls: Lorg/cwb/cwb_forecast_2012_expandableList;->load368Towns(I)V
    invoke-static {v0, v1}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$3(Lorg/cwb/cwb_forecast_2012_expandableList;I)V

    .line 367
    :goto_3c
    const/4 v0, 0x0

    return-object v0

    .line 364
    :cond_3e
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$4(Z)V

    goto :goto_3c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 8
    .parameter "result"

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 374
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$5(Lorg/cwb/cwb_forecast_2012_expandableList;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 376
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$6()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 377
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "\u76ee\u524d\u8a0a\u865f\u5fae\u5f31\uff0c\u8acb\u7a0d\u5f8c\u518d\u8a66"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 379
    const-string v4, "OK"

    new-instance v5, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData$1;

    invoke-direct {v5, p0}, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData$1;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 385
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 403
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :goto_31
    return-void

    .line 389
    :cond_32
    const/4 v3, 0x1

    invoke-static {v3}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$7(Z)V

    .line 390
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$1()Landroid/widget/ExpandableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->removeAllViewsInLayout()V

    .line 391
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    const v4, 0x7f080098

    invoke-virtual {v3, v4}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 393
    .local v2, countyName:Landroid/widget/TextView;
    sget-object v3, Lorg/cwb/cwb_constants;->countyNameArray:Ljava/util/ArrayList;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$8()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 392
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    const v4, 0x7f08009d

    invoke-virtual {v3, v4}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 395
    .local v0, CountySpinner:Landroid/widget/Spinner;
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$8()I

    move-result v4

    if-eq v3, v4, :cond_8c

    .line 396
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "old Id : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$8()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_31

    .line 399
    :cond_8c
    iget-object v4, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    monitor-enter v4

    .line 400
    :try_start_8f
    iget-object v3, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #calls: Lorg/cwb/cwb_forecast_2012_expandableList;->updateData()V
    invoke-static {v3}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$9(Lorg/cwb/cwb_forecast_2012_expandableList;)V

    .line 399
    monitor-exit v4

    goto :goto_31

    :catchall_96
    move-exception v3

    monitor-exit v4
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_96

    throw v3
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 353
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 354
    sget-object v0, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    .line 355
    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->mo:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$2(Lorg/cwb/cwb_forecast_2012_expandableList;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->getLastFix()Landroid/location/Location;

    move-result-object v1

    .line 354
    invoke-static {v0, v1}, Lorg/cwb/cwb_utilities;->getAddressbyGeoPoint(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Address;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load368TownData;->mAddr:Landroid/location/Address;

    .line 356
    return-void
.end method
