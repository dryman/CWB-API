.class Lorg/cwb/cwb_forecast_2012_expandableList$load3HoursWeatherCondition;
.super Landroid/os/AsyncTask;
.source "cwb_forecast_2012_expandableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012_expandableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "load3HoursWeatherCondition"
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
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012_expandableList;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    .registers 2
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load3HoursWeatherCondition;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

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

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012_expandableList$load3HoursWeatherCondition;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 643
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load3HoursWeatherCondition;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #calls: Lorg/cwb/cwb_forecast_2012_expandableList;->loadEvery3HoursWeatherData()Z
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$11(Lorg/cwb/cwb_forecast_2012_expandableList;)Z

    .line 644
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012_expandableList$load3HoursWeatherCondition;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 650
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 651
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$1()Landroid/widget/ExpandableListView;

    move-result-object v0

    new-instance v1, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;

    iget-object v2, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load3HoursWeatherCondition;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 652
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load3HoursWeatherCondition;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$5(Lorg/cwb/cwb_forecast_2012_expandableList;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 653
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$load3HoursWeatherCondition;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$5(Lorg/cwb/cwb_forecast_2012_expandableList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 654
    :cond_23
    return-void
.end method
