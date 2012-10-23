.class Lorg/cwb/cwb_main_2012mar$4;
.super Ljava/lang/Object;
.source "cwb_main_2012mar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_main_2012mar;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lorg/cwb/cwb_main_2012mar$4;->this$0:Lorg/cwb/cwb_main_2012mar;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 105
    iget-object v0, p0, Lorg/cwb/cwb_main_2012mar$4;->this$0:Lorg/cwb/cwb_main_2012mar;

    #calls: Lorg/cwb/cwb_main_2012mar;->showSelectionFirst()V
    invoke-static {v0}, Lorg/cwb/cwb_main_2012mar;->access$6(Lorg/cwb/cwb_main_2012mar;)V

    .line 106
    return-void
.end method
