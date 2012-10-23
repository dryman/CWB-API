.class Lorg/cwb/cwb_forecast_2012$loadViewTask;
.super Landroid/os/AsyncTask;
.source "cwb_forecast_2012.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "loadViewTask"
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
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012$loadViewTask;->this$0:Lorg/cwb/cwb_forecast_2012;

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

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012$loadViewTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter "arg0"

    .prologue
    .line 85
    sget-object v0, Lorg/cwb/cwb_constants;->countyNameArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    sget-object v0, Lorg/cwb/cwb_constants;->countyNameArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_2012$loadViewTask;->this$0:Lorg/cwb/cwb_forecast_2012;

    #calls: Lorg/cwb/cwb_forecast_2012;->ShowArea()Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/cwb/cwb_forecast_2012;->access$0(Lorg/cwb/cwb_forecast_2012;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012$loadViewTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012$loadViewTask;->this$0:Lorg/cwb/cwb_forecast_2012;

    #calls: Lorg/cwb/cwb_forecast_2012;->InitialDisplay()V
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012;->access$3(Lorg/cwb/cwb_forecast_2012;)V

    .line 107
    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 94
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 95
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012$loadViewTask;->this$0:Lorg/cwb/cwb_forecast_2012;

    new-instance v1, Landroid/app/ProgressDialog;

    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lorg/cwb/cwb_forecast_2012;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lorg/cwb/cwb_forecast_2012;->access$1(Lorg/cwb/cwb_forecast_2012;Landroid/app/ProgressDialog;)V

    .line 96
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012$loadViewTask;->this$0:Lorg/cwb/cwb_forecast_2012;

    #getter for: Lorg/cwb/cwb_forecast_2012;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012;->access$2(Lorg/cwb/cwb_forecast_2012;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012$loadViewTask;->this$0:Lorg/cwb/cwb_forecast_2012;

    #getter for: Lorg/cwb/cwb_forecast_2012;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012;->access$2(Lorg/cwb/cwb_forecast_2012;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 98
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012$loadViewTask;->this$0:Lorg/cwb/cwb_forecast_2012;

    #getter for: Lorg/cwb/cwb_forecast_2012;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012;->access$2(Lorg/cwb/cwb_forecast_2012;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 99
    return-void
.end method
