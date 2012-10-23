.class Lorg/cwb/view/DraggableListView$Dragging;
.super Ljava/lang/Object;
.source "DraggableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/view/DraggableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Dragging"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private coordOffset:I

.field private draggingItemHeight:I

.field private lastY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragPoint:I

.field private mDragView:Landroid/widget/ImageView;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field final synthetic this$0:Lorg/cwb/view/DraggableListView;

.field private windowManager:Landroid/view/WindowManager;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lorg/cwb/view/DraggableListView;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 267
    iput-object p1, p0, Lorg/cwb/view/DraggableListView$Dragging;->this$0:Lorg/cwb/view/DraggableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lorg/cwb/view/DraggableListView$Dragging;->context:Landroid/content/Context;

    .line 269
    sget-object v0, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->windowManager:Landroid/view/WindowManager;

    .line 270
    return-void
.end method


# virtual methods
.method public calculateHoverPosition()I
    .registers 7

    .prologue
    const/high16 v5, 0x4000

    .line 327
    iget v2, p0, Lorg/cwb/view/DraggableListView$Dragging;->y:I

    iget v3, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragPoint:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/cwb/view/DraggableListView$Dragging;->y:I

    iget v4, p0, Lorg/cwb/view/DraggableListView$Dragging;->lastY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    add-float/2addr v3, v5

    iget v4, p0, Lorg/cwb/view/DraggableListView$Dragging;->draggingItemHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 329
    .local v0, adjustedY:I
    iget-object v2, p0, Lorg/cwb/view/DraggableListView$Dragging;->this$0:Lorg/cwb/view/DraggableListView;

    const/4 v3, 0x0

    #calls: Lorg/cwb/view/DraggableListView;->myPointToPosition(II)I
    invoke-static {v2, v3, v0}, Lorg/cwb/view/DraggableListView;->access$1(Lorg/cwb/view/DraggableListView;II)I

    move-result v1

    .line 330
    .local v1, pos:I
    if-ltz v1, :cond_2d

    .line 331
    iget-object v2, p0, Lorg/cwb/view/DraggableListView$Dragging;->this$0:Lorg/cwb/view/DraggableListView;

    #getter for: Lorg/cwb/view/DraggableListView;->dragStartPosition:I
    invoke-static {v2}, Lorg/cwb/view/DraggableListView;->access$2(Lorg/cwb/view/DraggableListView;)I

    move-result v2

    if-lt v1, v2, :cond_2d

    .line 332
    add-int/lit8 v1, v1, -0x1

    .line 335
    :cond_2d
    return v1
.end method

.method public drag(II)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 305
    iget v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->y:I

    iput v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->lastY:I

    .line 306
    iput p1, p0, Lorg/cwb/view/DraggableListView$Dragging;->x:I

    .line 307
    iput p2, p0, Lorg/cwb/view/DraggableListView$Dragging;->y:I

    .line 308
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragPoint:I

    sub-int v1, p2, v1

    iget v2, p0, Lorg/cwb/view/DraggableListView$Dragging;->coordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 309
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/cwb/view/DraggableListView$Dragging;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    return-void
.end method

.method public getDraggingItemHeight()I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->draggingItemHeight:I

    return v0
.end method

.method public start(IILandroid/view/View;)V
    .registers 9
    .parameter "y"
    .parameter "offset"
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 278
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->this$0:Lorg/cwb/view/DraggableListView;

    #setter for: Lorg/cwb/view/DraggableListView;->bDragging:Z
    invoke-static {v0, v2}, Lorg/cwb/view/DraggableListView;->access$0(Lorg/cwb/view/DraggableListView;Z)V

    .line 279
    iput p1, p0, Lorg/cwb/view/DraggableListView$Dragging;->y:I

    .line 280
    iput p1, p0, Lorg/cwb/view/DraggableListView$Dragging;->lastY:I

    .line 281
    iput p2, p0, Lorg/cwb/view/DraggableListView$Dragging;->coordOffset:I

    .line 282
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragPoint:I

    .line 283
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->draggingItemHeight:I

    .line 284
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/cwb/view/DraggableListView$Dragging;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragView:Landroid/widget/ImageView;

    .line 288
    invoke-virtual {p3, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 289
    invoke-virtual {p3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 290
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 291
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 292
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 293
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 294
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragPoint:I

    sub-int v1, p1, v1

    iget v2, p0, Lorg/cwb/view/DraggableListView$Dragging;->coordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 295
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 296
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 297
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x198

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 300
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 301
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 302
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/cwb/view/DraggableListView$Dragging;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragView:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 313
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 314
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iput-object v2, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragView:Landroid/widget/ImageView;

    .line 317
    :cond_13
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1e

    .line 318
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    iput-object v2, p0, Lorg/cwb/view/DraggableListView$Dragging;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 321
    :cond_1e
    iget-object v0, p0, Lorg/cwb/view/DraggableListView$Dragging;->this$0:Lorg/cwb/view/DraggableListView;

    const/4 v1, 0x0

    #setter for: Lorg/cwb/view/DraggableListView;->bDragging:Z
    invoke-static {v0, v1}, Lorg/cwb/view/DraggableListView;->access$0(Lorg/cwb/view/DraggableListView;Z)V

    .line 322
    return-void
.end method
