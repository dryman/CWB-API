.class Lorg/cwb/cwb_more$1;
.super Ljava/lang/Object;
.source "cwb_more.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_more;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_more;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_more;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_more$1;->this$0:Lorg/cwb/cwb_more;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 355
    iget-object v0, p0, Lorg/cwb/cwb_more$1;->this$0:Lorg/cwb/cwb_more;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #calls: Lorg/cwb/cwb_more;->LayoutHandler(I)V
    invoke-static {v0, v1}, Lorg/cwb/cwb_more;->access$0(Lorg/cwb/cwb_more;I)V

    .line 356
    return-void
.end method
