.class Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;
.super Landroid/os/AsyncTask;
.source "cwb_forecast_travel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_travel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForecastTravelTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_travel;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_travel;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;->this$0:Lorg/cwb/cwb_forecast_travel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "params"

    .prologue
    .line 196
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cwb/cwb_forecast;->bLoading:Z

    .line 197
    iget-object v0, p0, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;->this$0:Lorg/cwb/cwb_forecast_travel;

    #getter for: Lorg/cwb/cwb_forecast_travel;->authTravel:Ljava/io/InputStream;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_travel;->access$2(Lorg/cwb/cwb_forecast_travel;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;->this$0:Lorg/cwb/cwb_forecast_travel;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;->this$0:Lorg/cwb/cwb_forecast_travel;

    const-string v2, "http://www.cwb.gov.tw/wwwgis/kml/auth_travel.xml"

    #calls: Lorg/cwb/cwb_forecast_travel;->DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    invoke-static {v1, v2}, Lorg/cwb/cwb_forecast_travel;->access$3(Lorg/cwb/cwb_forecast_travel;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    #setter for: Lorg/cwb/cwb_forecast_travel;->authTravel:Ljava/io/InputStream;
    invoke-static {v0, v1}, Lorg/cwb/cwb_forecast_travel;->access$4(Lorg/cwb/cwb_forecast_travel;Ljava/io/InputStream;)V

    .line 198
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 201
    iget-object v0, p0, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;->this$0:Lorg/cwb/cwb_forecast_travel;

    #calls: Lorg/cwb/cwb_forecast_travel;->InitialDisplay()V
    invoke-static {v0}, Lorg/cwb/cwb_forecast_travel;->access$5(Lorg/cwb/cwb_forecast_travel;)V

    .line 202
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cwb/cwb_forecast;->bLoading:Z

    .line 203
    return-void
.end method

.method protected onPreExecute()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 192
    iget-object v0, p0, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;->this$0:Lorg/cwb/cwb_forecast_travel;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;->this$0:Lorg/cwb/cwb_forecast_travel;

    const v4, 0x7f09006c

    invoke-virtual {v3, v4}, Lorg/cwb/cwb_forecast_travel;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lorg/cwb/cwb_forecast_travel;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lorg/cwb/cwb_forecast_travel;->access$0(Lorg/cwb/cwb_forecast_travel;Landroid/app/ProgressDialog;)V

    .line 193
    iget-object v0, p0, Lorg/cwb/cwb_forecast_travel$ForecastTravelTask;->this$0:Lorg/cwb/cwb_forecast_travel;

    #getter for: Lorg/cwb/cwb_forecast_travel;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_travel;->access$1(Lorg/cwb/cwb_forecast_travel;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 194
    return-void
.end method
