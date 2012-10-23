.class Lorg/cwb/cwb_lastActivity$ParserDataTask;
.super Landroid/os/AsyncTask;
.source "cwb_lastActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_lastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParserDataTask"
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
.field final synthetic this$0:Lorg/cwb/cwb_lastActivity;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_lastActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lorg/cwb/cwb_lastActivity$ParserDataTask;->this$0:Lorg/cwb/cwb_lastActivity;

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

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_lastActivity$ParserDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 413
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cwb/cwb_main;->bLoading:Z

    .line 414
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity$ParserDataTask;->this$0:Lorg/cwb/cwb_lastActivity;

    #calls: Lorg/cwb/cwb_lastActivity;->parserxmlData()V
    invoke-static {v0}, Lorg/cwb/cwb_lastActivity;->access$0(Lorg/cwb/cwb_lastActivity;)V

    .line 415
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_lastActivity$ParserDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 419
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity$ParserDataTask;->this$0:Lorg/cwb/cwb_lastActivity;

    const/4 v1, 0x0

    #setter for: Lorg/cwb/cwb_lastActivity;->in:Ljava/io/InputStream;
    invoke-static {v0, v1}, Lorg/cwb/cwb_lastActivity;->access$1(Lorg/cwb/cwb_lastActivity;Ljava/io/InputStream;)V

    .line 420
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cwb/cwb_main;->bLoading:Z

    .line 421
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity$ParserDataTask;->this$0:Lorg/cwb/cwb_lastActivity;

    #calls: Lorg/cwb/cwb_lastActivity;->setFavorTitleText()V
    invoke-static {v0}, Lorg/cwb/cwb_lastActivity;->access$2(Lorg/cwb/cwb_lastActivity;)V

    .line 422
    #calls: Lorg/cwb/cwb_lastActivity;->parserLast24Data()V
    invoke-static {}, Lorg/cwb/cwb_lastActivity;->access$3()V

    .line 423
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity$ParserDataTask;->this$0:Lorg/cwb/cwb_lastActivity;

    iget-object v0, v0, Lorg/cwb/cwb_lastActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 424
    return-void
.end method

.method protected onPreExecute()V
    .registers 6

    .prologue
    .line 407
    sget-object v0, Lorg/cwb/cwb_lastActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 410
    :goto_8
    return-void

    .line 409
    :cond_9
    iget-object v0, p0, Lorg/cwb/cwb_lastActivity$ParserDataTask;->this$0:Lorg/cwb/cwb_lastActivity;

    sget-object v1, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const-string v2, ""

    const-string v3, "Loading"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lorg/cwb/cwb_lastActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_8
.end method
