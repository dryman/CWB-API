.class Lorg/cwb/cwb_main_2012mar$5$2;
.super Ljava/lang/Object;
.source "cwb_main_2012mar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_main_2012mar$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cwb/cwb_main_2012mar$5;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_main_2012mar$5;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar$5$2;->this$1:Lorg/cwb/cwb_main_2012mar$5;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar$5$2;->this$1:Lorg/cwb/cwb_main_2012mar$5;

    #getter for: Lorg/cwb/cwb_main_2012mar$5;->this$0:Lorg/cwb/cwb_main_2012mar;
    invoke-static {v0}, Lorg/cwb/cwb_main_2012mar$5;->access$0(Lorg/cwb/cwb_main_2012mar$5;)Lorg/cwb/cwb_main_2012mar;

    move-result-object v0

    #getter for: Lorg/cwb/cwb_main_2012mar;->locationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/cwb/cwb_main_2012mar;->access$17(Lorg/cwb/cwb_main_2012mar;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    return-void
.end method
