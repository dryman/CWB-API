.class Lorg/cwb/view/GraphicView$xyCoor;
.super Ljava/lang/Object;
.source "GraphicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/view/GraphicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "xyCoor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/view/GraphicView;

.field public xPos:I

.field public yPos:I


# direct methods
.method public constructor <init>(Lorg/cwb/view/GraphicView;II)V
    .registers 4
    .parameter
    .parameter "x"
    .parameter "y"

    .prologue
    .line 51
    iput-object p1, p0, Lorg/cwb/view/GraphicView$xyCoor;->this$0:Lorg/cwb/view/GraphicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p2, p0, Lorg/cwb/view/GraphicView$xyCoor;->xPos:I

    .line 53
    iput p3, p0, Lorg/cwb/view/GraphicView$xyCoor;->yPos:I

    .line 54
    return-void
.end method
