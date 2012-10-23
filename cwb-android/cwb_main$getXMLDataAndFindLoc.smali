.class Lorg/cwb/cwb_main$getXMLDataAndFindLoc;
.super Landroid/os/AsyncTask;
.source "cwb_main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getXMLDataAndFindLoc"
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
.field final synthetic this$0:Lorg/cwb/cwb_main;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main;)V
    .registers 2
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lorg/cwb/cwb_main$getXMLDataAndFindLoc;)Lorg/cwb/cwb_main;
    .registers 2
    .parameter

    .prologue
    .line 572
    iget-object v0, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 601
    iget-object v0, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    #calls: Lorg/cwb/cwb_main;->parserxmlData()V
    invoke-static {v0}, Lorg/cwb/cwb_main;->access$9(Lorg/cwb/cwb_main;)V

    .line 602
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 607
    const/4 v1, 0x0

    sput-boolean v1, Lorg/cwb/cwb_main;->bLoading:Z

    .line 608
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current Location : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    #getter for: Lorg/cwb/cwb_main;->mCurrentStation:Ljava/lang/String;
    invoke-static {v3}, Lorg/cwb/cwb_main;->access$4(Lorg/cwb/cwb_main;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    #calls: Lorg/cwb/cwb_main;->initialTitleName()V
    invoke-static {v1}, Lorg/cwb/cwb_main;->access$10(Lorg/cwb/cwb_main;)V

    .line 611
    :try_start_22
    iget-object v1, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    #calls: Lorg/cwb/cwb_main;->showMainPageData()V
    invoke-static {v1}, Lorg/cwb/cwb_main;->access$5(Lorg/cwb/cwb_main;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_31

    .line 615
    :goto_27
    iget-object v1, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    #getter for: Lorg/cwb/cwb_main;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lorg/cwb/cwb_main;->access$6(Lorg/cwb/cwb_main;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 616
    return-void

    .line 612
    :catch_31
    move-exception v0

    .line 613
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method protected onPreExecute()V
    .registers 6

    .prologue
    .line 574
    iget-object v0, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    #getter for: Lorg/cwb/cwb_main;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_main;->access$6(Lorg/cwb/cwb_main;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 575
    iget-object v0, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    #getter for: Lorg/cwb/cwb_main;->pd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_main;->access$6(Lorg/cwb/cwb_main;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 577
    :cond_11
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cwb/cwb_main;->bLoading:Z

    .line 580
    iget-object v0, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    #getter for: Lorg/cwb/cwb_main;->mFindLocation:Lorg/cwb/cwb_findlocation;
    invoke-static {v0}, Lorg/cwb/cwb_main;->access$7(Lorg/cwb/cwb_main;)Lorg/cwb/cwb_findlocation;

    move-result-object v0

    if-nez v0, :cond_33

    .line 581
    iget-object v0, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    new-instance v1, Lorg/cwb/cwb_findlocation;

    iget-object v2, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    iget-object v3, p0, Lorg/cwb/cwb_main$getXMLDataAndFindLoc;->this$0:Lorg/cwb/cwb_main;

    #getter for: Lorg/cwb/cwb_main;->mCwbData:Lorg/cwb/cwb_stationlist;
    invoke-static {v3}, Lorg/cwb/cwb_main;->access$3(Lorg/cwb/cwb_main;)Lorg/cwb/cwb_stationlist;

    move-result-object v3

    new-instance v4, Lorg/cwb/cwb_main$getXMLDataAndFindLoc$1;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_main$getXMLDataAndFindLoc$1;-><init>(Lorg/cwb/cwb_main$getXMLDataAndFindLoc;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/cwb/cwb_findlocation;-><init>(Landroid/content/Context;Lorg/cwb/cwb_stationlist;Lorg/cwb/RequestCallback;)V

    #setter for: Lorg/cwb/cwb_main;->mFindLocation:Lorg/cwb/cwb_findlocation;
    invoke-static {v0, v1}, Lorg/cwb/cwb_main;->access$8(Lorg/cwb/cwb_main;Lorg/cwb/cwb_findlocation;)V

    .line 598
    :cond_33
    return-void
.end method
