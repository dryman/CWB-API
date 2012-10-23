.class Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;
.super Landroid/os/AsyncTask;
.source "cwb_lifeStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_lifeStyle$myTaskClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "parseHttpDataTask"
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
.field final synthetic this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_lifeStyle$myTaskClass;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;)Lorg/cwb/cwb_lifeStyle$myTaskClass;
    .registers 2
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 148
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    #calls: Lorg/cwb/cwb_lifeStyle$myTaskClass;->getHttpData()V
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$0(Lorg/cwb/cwb_lifeStyle$myTaskClass;)V

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 7
    .parameter "result"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 156
    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->this$0:Lorg/cwb/cwb_lifeStyle;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Lorg/cwb/cwb_lifeStyle;

    move-result-object v3

    #getter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle;->access$0(Lorg/cwb/cwb_lifeStyle;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 157
    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->this$0:Lorg/cwb/cwb_lifeStyle;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Lorg/cwb/cwb_lifeStyle;

    move-result-object v3

    #getter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle;->access$0(Lorg/cwb/cwb_lifeStyle;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 158
    :cond_1c
    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->this$0:Lorg/cwb/cwb_lifeStyle;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Lorg/cwb/cwb_lifeStyle;

    move-result-object v3

    const/4 v4, 0x0

    #setter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lorg/cwb/cwb_lifeStyle;->access$1(Lorg/cwb/cwb_lifeStyle;Landroid/app/ProgressDialog;)V

    .line 160
    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->result:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$1(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 161
    .local v2, items:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_33
    array-length v3, v2

    if-lt v1, v3, :cond_4f

    .line 165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, -0x1

    new-instance v4, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask$1;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask$1;-><init>(Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 179
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 180
    return-void

    .line 162
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_4f
    iget-object v3, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->result:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$1(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;

    iget-object v3, v3, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;->cname:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_33
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 185
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 186
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->this$0:Lorg/cwb/cwb_lifeStyle;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Lorg/cwb/cwb_lifeStyle;

    move-result-object v0

    #getter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle;->access$0(Lorg/cwb/cwb_lifeStyle;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 187
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->this$0:Lorg/cwb/cwb_lifeStyle;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Lorg/cwb/cwb_lifeStyle;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lorg/cwb/cwb_lifeStyle;->access$1(Lorg/cwb/cwb_lifeStyle;Landroid/app/ProgressDialog;)V

    .line 188
    :cond_1f
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->this$0:Lorg/cwb/cwb_lifeStyle;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Lorg/cwb/cwb_lifeStyle;

    move-result-object v0

    #getter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle;->access$0(Lorg/cwb/cwb_lifeStyle;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->this$0:Lorg/cwb/cwb_lifeStyle;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Lorg/cwb/cwb_lifeStyle;

    move-result-object v0

    #getter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle;->access$0(Lorg/cwb/cwb_lifeStyle;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 190
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->this$0:Lorg/cwb/cwb_lifeStyle;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Lorg/cwb/cwb_lifeStyle;

    move-result-object v0

    #getter for: Lorg/cwb/cwb_lifeStyle;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle;->access$0(Lorg/cwb/cwb_lifeStyle;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 191
    return-void
.end method
