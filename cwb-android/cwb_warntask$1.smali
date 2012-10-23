.class Lorg/cwb/cwb_warntask$1;
.super Ljava/lang/Object;
.source "cwb_warntask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_warntask;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_warntask;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_warntask;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_warntask$1;->this$0:Lorg/cwb/cwb_warntask;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 35
    iget-object v1, p0, Lorg/cwb/cwb_warntask$1;->this$0:Lorg/cwb/cwb_warntask;

    invoke-virtual {v1}, Lorg/cwb/cwb_warntask;->parserWarnData()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 36
    iget-object v1, p0, Lorg/cwb/cwb_warntask$1;->this$0:Lorg/cwb/cwb_warntask;

    invoke-virtual {v1}, Lorg/cwb/cwb_warntask;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 37
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 38
    iget-object v1, p0, Lorg/cwb/cwb_warntask$1;->this$0:Lorg/cwb/cwb_warntask;

    invoke-virtual {v1, v0}, Lorg/cwb/cwb_warntask;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .end local v0           #m:Landroid/os/Message;
    :cond_16
    iget-object v1, p0, Lorg/cwb/cwb_warntask$1;->this$0:Lorg/cwb/cwb_warntask;

    invoke-virtual {v1}, Lorg/cwb/cwb_warntask;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 42
    .restart local v0       #m:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 43
    iget-object v1, p0, Lorg/cwb/cwb_warntask$1;->this$0:Lorg/cwb/cwb_warntask;

    const-wide/32 v2, 0x16e360

    invoke-virtual {v1, v0, v2, v3}, Lorg/cwb/cwb_warntask;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 44
    return-void
.end method
