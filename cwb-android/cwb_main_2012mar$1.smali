.class Lorg/cwb/cwb_main_2012mar$1;
.super Landroid/os/Handler;
.source "cwb_main_2012mar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_main_2012mar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_main_2012mar;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main_2012mar;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar$1;->this$0:Lorg/cwb/cwb_main_2012mar;

    .line 161
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 168
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar$1;->this$0:Lorg/cwb/cwb_main_2012mar;

    #calls: Lorg/cwb/cwb_main_2012mar;->loadCurrentLocationData()V
    invoke-static {v0}, Lorg/cwb/cwb_main_2012mar;->access$0(Lorg/cwb/cwb_main_2012mar;)V

    .line 169
    return-void
.end method
