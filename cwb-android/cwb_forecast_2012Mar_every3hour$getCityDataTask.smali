.class Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;
.super Landroid/os/AsyncTask;
.source "cwb_forecast_2012Mar_every3hour.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012Mar_every3hour;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getCityDataTask"
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
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

.field private whichToLoad:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "url"

    .prologue
    .line 375
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 376
    iput-object p2, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->whichToLoad:Ljava/lang/String;

    .line 377
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter "params"

    .prologue
    .line 382
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->whichToLoad:Ljava/lang/String;

    #calls: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->getCityData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$1(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 11
    .parameter "g"

    .prologue
    const v8, 0x1090009

    const v7, 0x1090008

    .line 389
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 391
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->bFirstTimeInit:Z
    invoke-static {v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$2(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 392
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result1:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$3(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1e

    .line 423
    :cond_1d
    :goto_1d
    return-void

    .line 395
    :cond_1e
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result1:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$3(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 396
    .local v1, cityNameList:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2b
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result1:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$3(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_8c

    .line 399
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 400
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    .line 399
    invoke-direct {v0, v5, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 402
    .local v0, cityAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 403
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->citySpinner:Landroid/widget/Spinner;
    invoke-static {v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$4(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 404
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    const/4 v6, 0x1

    #setter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->bFirstTimeInit:Z
    invoke-static {v5, v6}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$5(Lorg/cwb/cwb_forecast_2012Mar_every3hour;Z)V

    .line 407
    .end local v0           #cityAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #cityNameList:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_50
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$6(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1d

    .line 410
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$6(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 411
    .local v4, townNameList:[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_69
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$6(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_9f

    .line 414
    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 415
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    .line 414
    invoke-direct {v3, v5, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 417
    .local v3, townAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 418
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->townSpinner:Landroid/widget/Spinner;
    invoke-static {v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$7(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 422
    invoke-static {}, Lorg/cwb/cwb_forecast_2012Mar_group;->dismissDialog()V

    goto :goto_1d

    .line 397
    .end local v3           #townAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v4           #townNameList:[Ljava/lang/String;
    .restart local v1       #cityNameList:[Ljava/lang/String;
    :cond_8c
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result1:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$3(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$cityData;->CountyName:Ljava/lang/String;

    aput-object v5, v1, v2

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 412
    .end local v1           #cityNameList:[Ljava/lang/String;
    .restart local v4       #townNameList:[Ljava/lang/String;
    :cond_9f
    iget-object v5, p0, Lorg/cwb/cwb_forecast_2012Mar_every3hour$getCityDataTask;->this$0:Lorg/cwb/cwb_forecast_2012Mar_every3hour;

    #getter for: Lorg/cwb/cwb_forecast_2012Mar_every3hour;->result2:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/cwb/cwb_forecast_2012Mar_every3hour;->access$6(Lorg/cwb/cwb_forecast_2012Mar_every3hour;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_every3hour$townData;->TownName:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_69
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 428
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 433
    invoke-static {}, Lorg/cwb/cwb_forecast_2012Mar_group;->showDialog()V

    .line 434
    return-void
.end method
