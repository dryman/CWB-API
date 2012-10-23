.class Lorg/cwb/cwb_forecast_week$ForecastWeekTask;
.super Landroid/os/AsyncTask;
.source "cwb_forecast_week.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_week;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForecastWeekTask"
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
.field final synthetic this$0:Lorg/cwb/cwb_forecast_week;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_week;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->this$0:Lorg/cwb/cwb_forecast_week;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "params"

    .prologue
    .line 364
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cwb/cwb_forecast;->bLoading:Z

    .line 365
    iget-object v0, p0, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->this$0:Lorg/cwb/cwb_forecast_week;

    #getter for: Lorg/cwb/cwb_forecast_week;->auth36:Ljava/io/InputStream;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_week;->access$2(Lorg/cwb/cwb_forecast_week;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->this$0:Lorg/cwb/cwb_forecast_week;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->this$0:Lorg/cwb/cwb_forecast_week;

    const-string v2, "http://www.cwb.gov.tw/wwwgis/kml/auth_36.xml"

    #calls: Lorg/cwb/cwb_forecast_week;->DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    invoke-static {v1, v2}, Lorg/cwb/cwb_forecast_week;->access$3(Lorg/cwb/cwb_forecast_week;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    #setter for: Lorg/cwb/cwb_forecast_week;->auth36:Ljava/io/InputStream;
    invoke-static {v0, v1}, Lorg/cwb/cwb_forecast_week;->access$4(Lorg/cwb/cwb_forecast_week;Ljava/io/InputStream;)V

    .line 366
    :cond_18
    iget-object v0, p0, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->this$0:Lorg/cwb/cwb_forecast_week;

    #getter for: Lorg/cwb/cwb_forecast_week;->authWeek:Ljava/io/InputStream;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_week;->access$5(Lorg/cwb/cwb_forecast_week;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->this$0:Lorg/cwb/cwb_forecast_week;

    iget-object v1, p0, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->this$0:Lorg/cwb/cwb_forecast_week;

    const-string v2, "http://www.cwb.gov.tw/wwwgis/kml/auth_week.xml"

    #calls: Lorg/cwb/cwb_forecast_week;->DownloadFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    invoke-static {v1, v2}, Lorg/cwb/cwb_forecast_week;->access$3(Lorg/cwb/cwb_forecast_week;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    #setter for: Lorg/cwb/cwb_forecast_week;->authWeek:Ljava/io/InputStream;
    invoke-static {v0, v1}, Lorg/cwb/cwb_forecast_week;->access$6(Lorg/cwb/cwb_forecast_week;Ljava/io/InputStream;)V

    .line 367
    :cond_2d
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 370
    iget-object v0, p0, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->this$0:Lorg/cwb/cwb_forecast_week;

    #calls: Lorg/cwb/cwb_forecast_week;->InitialDisplay()V
    invoke-static {v0}, Lorg/cwb/cwb_forecast_week;->access$7(Lorg/cwb/cwb_forecast_week;)V

    .line 371
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cwb/cwb_forecast;->bLoading:Z

    .line 372
    return-void
.end method

.method protected onPreExecute()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 358
    sget-object v0, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    if-eqz v0, :cond_24

    .line 359
    iget-object v0, p0, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->this$0:Lorg/cwb/cwb_forecast_week;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->this$0:Lorg/cwb/cwb_forecast_week;

    const v4, 0x7f09006c

    invoke-virtual {v3, v4}, Lorg/cwb/cwb_forecast_week;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lorg/cwb/cwb_forecast_week;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lorg/cwb/cwb_forecast_week;->access$0(Lorg/cwb/cwb_forecast_week;Landroid/app/ProgressDialog;)V

    .line 360
    iget-object v0, p0, Lorg/cwb/cwb_forecast_week$ForecastWeekTask;->this$0:Lorg/cwb/cwb_forecast_week;

    #getter for: Lorg/cwb/cwb_forecast_week;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_week;->access$1(Lorg/cwb/cwb_forecast_week;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 362
    :cond_24
    return-void
.end method
