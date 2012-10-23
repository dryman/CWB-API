.class Lorg/cwb/cwb_main_2012mar$setTownNameTask;
.super Landroid/os/AsyncTask;
.source "cwb_main_2012mar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_main_2012mar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "setTownNameTask"
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
.field final synthetic this$0:Lorg/cwb/cwb_main_2012mar;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main_2012mar;)V
    .registers 2
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar$setTownNameTask;->this$0:Lorg/cwb/cwb_main_2012mar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_main_2012mar$setTownNameTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .parameter "params"

    .prologue
    .line 317
    sget-object v1, Lorg/cwb/cwb_constants;->cityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 318
    sget-object v1, Lorg/cwb/cwb_constants;->stidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    sget-object v1, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_15

    .line 331
    const/4 v1, 0x0

    return-object v1

    .line 321
    :cond_15
    sget-object v1, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    .line 322
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_main_2012mar$otherCityData;

    iget-object v1, v1, Lorg/cwb/cwb_main_2012mar$otherCityData;->Area:Ljava/lang/String;

    iget-object v2, p0, Lorg/cwb/cwb_main_2012mar$setTownNameTask;->this$0:Lorg/cwb/cwb_main_2012mar;

    #getter for: Lorg/cwb/cwb_main_2012mar;->selectedAreaE:Ljava/lang/String;
    invoke-static {v2}, Lorg/cwb/cwb_main_2012mar;->access$2(Lorg/cwb/cwb_main_2012mar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 323
    sget-object v2, Lorg/cwb/cwb_constants;->cityList:Ljava/util/ArrayList;

    .line 324
    sget-object v1, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    .line 325
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_main_2012mar$otherCityData;

    iget-object v1, v1, Lorg/cwb/cwb_main_2012mar$otherCityData;->StationName:Ljava/lang/String;

    .line 323
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v2, Lorg/cwb/cwb_constants;->stidList:Ljava/util/ArrayList;

    .line 327
    sget-object v1, Lorg/cwb/cwb_constants;->townCityMapList:Ljava/util/ArrayList;

    .line 328
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_main_2012mar$otherCityData;

    iget-object v1, v1, Lorg/cwb/cwb_main_2012mar$otherCityData;->StationID:Ljava/lang/String;

    .line 326
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_main_2012mar$setTownNameTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Lorg/cwb/cwb_main_group;->dismissDialog()V

    .line 293
    sget-object v2, Lorg/cwb/cwb_constants;->cityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 294
    .local v1, townNameList:[Ljava/lang/String;
    sget-object v2, Lorg/cwb/cwb_constants;->cityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 295
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 296
    iget-object v2, p0, Lorg/cwb/cwb_main_2012mar$setTownNameTask;->this$0:Lorg/cwb/cwb_main_2012mar;

    .line 297
    const v3, 0x1090008

    .line 295
    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 298
    .local v0, townAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 299
    iget-object v2, p0, Lorg/cwb/cwb_main_2012mar$setTownNameTask;->this$0:Lorg/cwb/cwb_main_2012mar;

    #getter for: Lorg/cwb/cwb_main_2012mar;->townSpinner:Landroid/widget/Spinner;
    invoke-static {v2}, Lorg/cwb/cwb_main_2012mar;->access$1(Lorg/cwb/cwb_main_2012mar;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 300
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 305
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 311
    invoke-static {}, Lorg/cwb/cwb_main_group;->showDialog()V

    .line 312
    return-void
.end method
