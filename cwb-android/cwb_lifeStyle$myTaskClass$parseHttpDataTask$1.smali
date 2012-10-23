.class Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask$1;
.super Ljava/lang/Object;
.source "cwb_lifeStyle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask$1;->this$2:Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask$1;->this$2:Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;)Lorg/cwb/cwb_lifeStyle$myTaskClass;

    move-result-object v1

    .line 170
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask$1;->this$2:Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;)Lorg/cwb/cwb_lifeStyle$myTaskClass;

    move-result-object v0

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->result:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$1(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;->CountyID:Ljava/lang/String;

    .line 169
    iput-object v0, v1, Lorg/cwb/cwb_lifeStyle$myTaskClass;->countyID:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask$1;->this$2:Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;)Lorg/cwb/cwb_lifeStyle$myTaskClass;

    move-result-object v1

    .line 173
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask$1;->this$2:Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;)Lorg/cwb/cwb_lifeStyle$myTaskClass;

    move-result-object v0

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->result:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$1(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;

    iget-object v0, v0, Lorg/cwb/cwb_lifeStyle$myTaskClass$areaListData;->cname:Ljava/lang/String;

    .line 172
    iput-object v0, v1, Lorg/cwb/cwb_lifeStyle$myTaskClass;->countyName:Ljava/lang/String;

    .line 175
    sput-boolean v2, Lorg/cwb/cwb_constants;->lifeFirstTimeInitial:Z

    .line 176
    new-instance v0, Lorg/cwb/cwb_lifeStyle$JSONParseTask;

    iget-object v1, p0, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask$1;->this$2:Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->this$1:Lorg/cwb/cwb_lifeStyle$myTaskClass;
    invoke-static {v1}, Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass$parseHttpDataTask;)Lorg/cwb/cwb_lifeStyle$myTaskClass;

    move-result-object v1

    #getter for: Lorg/cwb/cwb_lifeStyle$myTaskClass;->this$0:Lorg/cwb/cwb_lifeStyle;
    invoke-static {v1}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->access$2(Lorg/cwb/cwb_lifeStyle$myTaskClass;)Lorg/cwb/cwb_lifeStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cwb/cwb_lifeStyle$JSONParseTask;-><init>(Lorg/cwb/cwb_lifeStyle;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_lifeStyle$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 178
    return-void
.end method
