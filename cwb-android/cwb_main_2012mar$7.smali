.class Lorg/cwb/cwb_main_2012mar$7;
.super Ljava/lang/Object;
.source "cwb_main_2012mar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_main_2012mar;->showSelectionFirst()V
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
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar$7;->this$0:Lorg/cwb/cwb_main_2012mar;

    .line 261
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

    .line 264
    sput-boolean v2, Lorg/cwb/cwb_constants;->nowFirstTimeInitial:Z

    .line 265
    new-instance v0, Lorg/cwb/cwb_main_2012mar$JSONParseTask;

    iget-object v1, p0, Lorg/cwb/cwb_main_2012mar$7;->this$0:Lorg/cwb/cwb_main_2012mar;

    invoke-direct {v0, v1}, Lorg/cwb/cwb_main_2012mar$JSONParseTask;-><init>(Lorg/cwb/cwb_main_2012mar;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_main_2012mar$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 267
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar$7;->this$0:Lorg/cwb/cwb_main_2012mar;

    #getter for: Lorg/cwb/cwb_main_2012mar;->contentView:Landroid/view/View;
    invoke-static {v0}, Lorg/cwb/cwb_main_2012mar;->access$18(Lorg/cwb/cwb_main_2012mar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/cwb/cwb_main_2012mar$7;->this$0:Lorg/cwb/cwb_main_2012mar;

    #getter for: Lorg/cwb/cwb_main_2012mar;->contentView:Landroid/view/View;
    invoke-static {v1}, Lorg/cwb/cwb_main_2012mar;->access$18(Lorg/cwb/cwb_main_2012mar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    return-void
.end method
