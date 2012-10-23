.class Lorg/cwb/view/DraggableListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DraggableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/view/DraggableListView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/view/DraggableListView;


# direct methods
.method constructor <init>(Lorg/cwb/view/DraggableListView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    .line 54
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 11
    .parameter "e"

    .prologue
    .line 59
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    #getter for: Lorg/cwb/view/DraggableListView;->bDraggable:Z
    invoke-static {v5}, Lorg/cwb/view/DraggableListView;->access$3(Lorg/cwb/view/DraggableListView;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 82
    :cond_8
    :goto_8
    return-void

    .line 62
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 63
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    #getter for: Lorg/cwb/view/DraggableListView;->yDis:I
    invoke-static {v6}, Lorg/cwb/view/DraggableListView;->access$4(Lorg/cwb/view/DraggableListView;)I

    move-result v6

    sub-int v4, v5, v6

    .line 65
    .local v4, y:I
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    invoke-virtual {v5, v3, v4}, Lorg/cwb/view/DraggableListView;->pointToPosition(II)I

    move-result v2

    .line 66
    .local v2, itemnum:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_8

    .line 69
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    #getter for: Lorg/cwb/view/DraggableListView;->dragging:Lorg/cwb/view/DraggableListView$Dragging;
    invoke-static {v5}, Lorg/cwb/view/DraggableListView;->access$5(Lorg/cwb/view/DraggableListView;)Lorg/cwb/view/DraggableListView$Dragging;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 70
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    #getter for: Lorg/cwb/view/DraggableListView;->dragging:Lorg/cwb/view/DraggableListView$Dragging;
    invoke-static {v5}, Lorg/cwb/view/DraggableListView;->access$5(Lorg/cwb/view/DraggableListView;)Lorg/cwb/view/DraggableListView$Dragging;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cwb/view/DraggableListView$Dragging;->stop()V

    .line 71
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    const/4 v6, 0x0

    #setter for: Lorg/cwb/view/DraggableListView;->dragging:Lorg/cwb/view/DraggableListView$Dragging;
    invoke-static {v5, v6}, Lorg/cwb/view/DraggableListView;->access$6(Lorg/cwb/view/DraggableListView;Lorg/cwb/view/DraggableListView$Dragging;)V

    .line 73
    :cond_3b
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    iget-object v6, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    invoke-virtual {v6}, Lorg/cwb/view/DraggableListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {v5, v6}, Lorg/cwb/view/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, item:Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 75
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    new-instance v6, Lorg/cwb/view/DraggableListView$Dragging;

    iget-object v7, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    iget-object v8, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    invoke-virtual {v8}, Lorg/cwb/view/DraggableListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/cwb/view/DraggableListView$Dragging;-><init>(Lorg/cwb/view/DraggableListView;Landroid/content/Context;)V

    #setter for: Lorg/cwb/view/DraggableListView;->dragging:Lorg/cwb/view/DraggableListView$Dragging;
    invoke-static {v5, v6}, Lorg/cwb/view/DraggableListView;->access$6(Lorg/cwb/view/DraggableListView;Lorg/cwb/view/DraggableListView$Dragging;)V

    .line 76
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    #getter for: Lorg/cwb/view/DraggableListView;->dragging:Lorg/cwb/view/DraggableListView$Dragging;
    invoke-static {v5}, Lorg/cwb/view/DraggableListView;->access$5(Lorg/cwb/view/DraggableListView;)Lorg/cwb/view/DraggableListView$Dragging;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, v4, v6, v1}, Lorg/cwb/view/DraggableListView$Dragging;->start(IILandroid/view/View;)V

    .line 77
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    #setter for: Lorg/cwb/view/DraggableListView;->draggingItemHoverPosition:I
    invoke-static {v5, v2}, Lorg/cwb/view/DraggableListView;->access$7(Lorg/cwb/view/DraggableListView;I)V

    .line 78
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    iget-object v6, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    #getter for: Lorg/cwb/view/DraggableListView;->draggingItemHoverPosition:I
    invoke-static {v6}, Lorg/cwb/view/DraggableListView;->access$8(Lorg/cwb/view/DraggableListView;)I

    move-result v6

    #setter for: Lorg/cwb/view/DraggableListView;->dragStartPosition:I
    invoke-static {v5, v6}, Lorg/cwb/view/DraggableListView;->access$9(Lorg/cwb/view/DraggableListView;I)V

    .line 79
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    invoke-virtual {v5}, Lorg/cwb/view/DraggableListView;->getHeight()I

    move-result v0

    .line 80
    .local v0, height:I
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    iget-object v6, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    #getter for: Lorg/cwb/view/DraggableListView;->touchSlop:I
    invoke-static {v6}, Lorg/cwb/view/DraggableListView;->access$10(Lorg/cwb/view/DraggableListView;)I

    move-result v6

    sub-int v6, v4, v6

    div-int/lit8 v7, v0, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    #setter for: Lorg/cwb/view/DraggableListView;->mUpperBound:I
    invoke-static {v5, v6}, Lorg/cwb/view/DraggableListView;->access$11(Lorg/cwb/view/DraggableListView;I)V

    .line 81
    iget-object v5, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    iget-object v6, p0, Lorg/cwb/view/DraggableListView$1;->this$0:Lorg/cwb/view/DraggableListView;

    #getter for: Lorg/cwb/view/DraggableListView;->touchSlop:I
    invoke-static {v6}, Lorg/cwb/view/DraggableListView;->access$10(Lorg/cwb/view/DraggableListView;)I

    move-result v6

    add-int/2addr v6, v4

    mul-int/lit8 v7, v0, 0x2

    div-int/lit8 v7, v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    #setter for: Lorg/cwb/view/DraggableListView;->mLowerBound:I
    invoke-static {v5, v6}, Lorg/cwb/view/DraggableListView;->access$12(Lorg/cwb/view/DraggableListView;I)V

    goto/16 :goto_8
.end method
