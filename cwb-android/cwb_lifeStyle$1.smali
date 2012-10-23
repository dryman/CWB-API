.class Lorg/cwb/cwb_lifeStyle$1;
.super Ljava/lang/Object;
.source "cwb_lifeStyle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_lifeStyle;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_lifeStyle;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_lifeStyle;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_lifeStyle$1;->this$0:Lorg/cwb/cwb_lifeStyle;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/cwb/cwb_lifeStyle$1;->this$0:Lorg/cwb/cwb_lifeStyle;

    #getter for: Lorg/cwb/cwb_lifeStyle;->myTask:Lorg/cwb/cwb_lifeStyle$myTaskClass;
    invoke-static {v0}, Lorg/cwb/cwb_lifeStyle;->access$4(Lorg/cwb/cwb_lifeStyle;)Lorg/cwb/cwb_lifeStyle$myTaskClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cwb/cwb_lifeStyle$myTaskClass;->Run()V

    .line 70
    return-void
.end method
