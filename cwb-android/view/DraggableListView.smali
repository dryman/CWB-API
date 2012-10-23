.class public Lorg/cwb/view/DraggableListView;
.super Landroid/widget/ListView;
.source "DraggableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/view/DraggableListView$Dragging;,
        Lorg/cwb/view/DraggableListView$DropListener;
    }
.end annotation


# static fields
.field private static final END_OF_LIST_POSITION:I = -0x2


# instance fields
.field private bDraggable:Z

.field private bDragging:Z

.field private dragStartPosition:I

.field private dragging:Lorg/cwb/view/DraggableListView$Dragging;

.field private draggingItemHoverPosition:I

.field private longPressDetector:Landroid/view/GestureDetector;

.field private mDropListener:Lorg/cwb/view/DraggableListView$DropListener;

.field private mLowerBound:I

.field private mUpperBound:I

.field private touchSlop:I

.field private yDis:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v0, p0, Lorg/cwb/view/DraggableListView;->bDragging:Z

    .line 47
    iput v0, p0, Lorg/cwb/view/DraggableListView;->yDis:I

    .line 121
    iput-boolean v0, p0, Lorg/cwb/view/DraggableListView;->bDraggable:Z

    .line 35
    invoke-direct {p0, p1}, Lorg/cwb/view/DraggableListView;->initView(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lorg/cwb/view/DraggableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v0, p0, Lorg/cwb/view/DraggableListView;->bDragging:Z

    .line 47
    iput v0, p0, Lorg/cwb/view/DraggableListView;->yDis:I

    .line 121
    iput-boolean v0, p0, Lorg/cwb/view/DraggableListView;->bDraggable:Z

    .line 44
    invoke-direct {p0, p1}, Lorg/cwb/view/DraggableListView;->initView(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lorg/cwb/view/DraggableListView;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lorg/cwb/view/DraggableListView;->bDragging:Z

    return-void
.end method

.method static synthetic access$1(Lorg/cwb/view/DraggableListView;II)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lorg/cwb/view/DraggableListView;->myPointToPosition(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lorg/cwb/view/DraggableListView;)I
    .registers 2
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lorg/cwb/view/DraggableListView;->touchSlop:I

    return v0
.end method

.method static synthetic access$11(Lorg/cwb/view/DraggableListView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lorg/cwb/view/DraggableListView;->mUpperBound:I

    return-void
.end method

.method static synthetic access$12(Lorg/cwb/view/DraggableListView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lorg/cwb/view/DraggableListView;->mLowerBound:I

    return-void
.end method

.method static synthetic access$2(Lorg/cwb/view/DraggableListView;)I
    .registers 2
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lorg/cwb/view/DraggableListView;->dragStartPosition:I

    return v0
.end method

.method static synthetic access$3(Lorg/cwb/view/DraggableListView;)Z
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/cwb/view/DraggableListView;->bDraggable:Z

    return v0
.end method

.method static synthetic access$4(Lorg/cwb/view/DraggableListView;)I
    .registers 2
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lorg/cwb/view/DraggableListView;->yDis:I

    return v0
.end method

.method static synthetic access$5(Lorg/cwb/view/DraggableListView;)Lorg/cwb/view/DraggableListView$Dragging;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lorg/cwb/view/DraggableListView;->dragging:Lorg/cwb/view/DraggableListView$Dragging;

    return-object v0
.end method

.method static synthetic access$6(Lorg/cwb/view/DraggableListView;Lorg/cwb/view/DraggableListView$Dragging;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lorg/cwb/view/DraggableListView;->dragging:Lorg/cwb/view/DraggableListView$Dragging;

    return-void
.end method

.method static synthetic access$7(Lorg/cwb/view/DraggableListView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lorg/cwb/view/DraggableListView;->draggingItemHoverPosition:I

    return-void
.end method

.method static synthetic access$8(Lorg/cwb/view/DraggableListView;)I
    .registers 2
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lorg/cwb/view/DraggableListView;->draggingItemHoverPosition:I

    return v0
.end method

.method static synthetic access$9(Lorg/cwb/view/DraggableListView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lorg/cwb/view/DraggableListView;->dragStartPosition:I

    return-void
.end method

.method private doExpansion()V
    .registers 9

    .prologue
    .line 173
    iget v6, p0, Lorg/cwb/view/DraggableListView;->draggingItemHoverPosition:I

    invoke-virtual {p0}, Lorg/cwb/view/DraggableListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v1, v6, v7

    .line 174
    .local v1, expanItemViewIndex:I
    iget v6, p0, Lorg/cwb/view/DraggableListView;->draggingItemHoverPosition:I

    iget v7, p0, Lorg/cwb/view/DraggableListView;->dragStartPosition:I

    if-lt v6, v7, :cond_10

    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 178
    :cond_10
    iget v6, p0, Lorg/cwb/view/DraggableListView;->dragStartPosition:I

    invoke-virtual {p0}, Lorg/cwb/view/DraggableListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lorg/cwb/view/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, draggingItemOriginalView:Landroid/view/View;
    const/4 v3, 0x0

    .line 180
    .local v3, i:I
    :goto_1c
    invoke-virtual {p0, v3}, Lorg/cwb/view/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 181
    .local v4, itemView:Landroid/view/View;
    if-nez v4, :cond_23

    .line 196
    return-void

    .line 184
    :cond_23
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 185
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x2

    .line 186
    .local v2, height:I
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 188
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c
.end method

.method private initView(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 53
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lorg/cwb/view/DraggableListView;->touchSlop:I

    .line 54
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/cwb/view/DraggableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/cwb/view/DraggableListView$1;

    invoke-direct {v2, p0}, Lorg/cwb/view/DraggableListView$1;-><init>(Lorg/cwb/view/DraggableListView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/cwb/view/DraggableListView;->longPressDetector:Landroid/view/GestureDetector;

    .line 84
    new-instance v0, Lorg/cwb/view/DraggableListView$2;

    invoke-direct {v0, p0}, Lorg/cwb/view/DraggableListView$2;-><init>(Lorg/cwb/view/DraggableListView;)V

    invoke-virtual {p0, v0}, Lorg/cwb/view/DraggableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 92
    return-void
.end method

.method private myPointToPosition(II)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 102
    if-gez p2, :cond_7

    .line 103
    invoke-virtual {p0}, Lorg/cwb/view/DraggableListView;->getFirstVisiblePosition()I

    move-result v4

    .line 117
    :goto_6
    return v4

    .line 105
    :cond_7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 106
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/cwb/view/DraggableListView;->getChildCount()I

    move-result v1

    .line 107
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_11
    if-lt v3, v1, :cond_21

    .line 114
    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-lt p1, v4, :cond_37

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-ge p1, v4, :cond_37

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-lt p2, v4, :cond_37

    .line 115
    const/4 v4, -0x2

    goto :goto_6

    .line 108
    :cond_21
    invoke-virtual {p0, v3}, Lorg/cwb/view/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 110
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 111
    invoke-virtual {p0}, Lorg/cwb/view/DraggableListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_6

    .line 107
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 117
    .end local v0           #child:Landroid/view/View;
    :cond_37
    const/4 v4, -0x1

    goto :goto_6
.end method

.method private resetScrollBounds(I)V
    .registers 4
    .parameter "y"

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/cwb/view/DraggableListView;->getHeight()I

    move-result v0

    .line 218
    .local v0, height:I
    div-int/lit8 v1, v0, 0x3

    if-lt p1, v1, :cond_c

    .line 219
    div-int/lit8 v1, v0, 0x3

    iput v1, p0, Lorg/cwb/view/DraggableListView;->mUpperBound:I

    .line 221
    :cond_c
    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x3

    if-gt p1, v1, :cond_18

    .line 222
    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/cwb/view/DraggableListView;->mLowerBound:I

    .line 224
    :cond_18
    return-void
.end method

.method private resetViews()V
    .registers 5

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, i:I
    :goto_1
    invoke-virtual {p0, v0}, Lorg/cwb/view/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 203
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_11

    .line 204
    invoke-virtual {p0}, Lorg/cwb/view/DraggableListView;->layoutChildren()V

    .line 205
    invoke-virtual {p0, v0}, Lorg/cwb/view/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 206
    if-nez v2, :cond_11

    .line 215
    return-void

    .line 210
    :cond_11
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 212
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 213
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private scrollList(I)V
    .registers 10
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 226
    invoke-direct {p0, p1}, Lorg/cwb/view/DraggableListView;->resetScrollBounds(I)V

    .line 227
    invoke-virtual {p0}, Lorg/cwb/view/DraggableListView;->getHeight()I

    move-result v0

    .line 228
    .local v0, height:I
    const/4 v3, 0x0

    .line 229
    .local v3, speed:I
    iget v5, p0, Lorg/cwb/view/DraggableListView;->mLowerBound:I

    if-le p1, v5, :cond_47

    .line 231
    iget v5, p0, Lorg/cwb/view/DraggableListView;->mLowerBound:I

    add-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    if-le p1, v5, :cond_44

    const/16 v3, 0x20

    .line 236
    :cond_16
    :goto_16
    if-eqz v3, :cond_43

    .line 237
    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v7, v5}, Lorg/cwb/view/DraggableListView;->pointToPosition(II)I

    move-result v2

    .line 238
    .local v2, ref:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2e

    .line 240
    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lorg/cwb/view/DraggableListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x40

    invoke-virtual {p0, v7, v5}, Lorg/cwb/view/DraggableListView;->pointToPosition(II)I

    move-result v2

    .line 242
    :cond_2e
    invoke-virtual {p0}, Lorg/cwb/view/DraggableListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Lorg/cwb/view/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 243
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_43

    .line 244
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    .line 245
    .local v1, pos:I
    sub-int v5, v1, v3

    invoke-virtual {p0, v2, v5}, Lorg/cwb/view/DraggableListView;->setSelectionFromTop(II)V

    .line 248
    .end local v1           #pos:I
    .end local v2           #ref:I
    .end local v4           #v:Landroid/view/View;
    :cond_43
    return-void

    .line 231
    :cond_44
    const/16 v3, 0x10

    goto :goto_16

    .line 232
    :cond_47
    iget v5, p0, Lorg/cwb/view/DraggableListView;->mUpperBound:I

    if-ge p1, v5, :cond_16

    .line 234
    iget v5, p0, Lorg/cwb/view/DraggableListView;->mUpperBound:I

    div-int/lit8 v5, v5, 0x2

    if-ge p1, v5, :cond_54

    const/16 v3, -0x20

    :goto_53
    goto :goto_16

    :cond_54
    const/16 v3, -0x10

    goto :goto_53
.end method


# virtual methods
.method public isDraggingNow()Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/cwb/view/DraggableListView;->bDragging:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    .line 130
    iget-object v5, p0, Lorg/cwb/view/DraggableListView;->longPressDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 170
    :cond_a
    :goto_a
    return v4

    .line 133
    :cond_b
    iget-object v5, p0, Lorg/cwb/view/DraggableListView;->dragging:Lorg/cwb/view/DraggableListView$Dragging;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/cwb/view/DraggableListView;->mDropListener:Lorg/cwb/view/DraggableListView$DropListener;

    if-nez v5, :cond_18

    .line 135
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_a

    .line 137
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 138
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_94

    goto :goto_a

    .line 156
    :pswitch_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 157
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lorg/cwb/view/DraggableListView;->yDis:I

    sub-int v3, v5, v6

    .line 158
    .local v3, y:I
    iget-object v5, p0, Lorg/cwb/view/DraggableListView;->dragging:Lorg/cwb/view/DraggableListView$Dragging;

    invoke-virtual {v5, v2, v3}, Lorg/cwb/view/DraggableListView$Dragging;->drag(II)V

    .line 159
    iget-object v5, p0, Lorg/cwb/view/DraggableListView;->dragging:Lorg/cwb/view/DraggableListView$Dragging;

    invoke-virtual {v5}, Lorg/cwb/view/DraggableListView$Dragging;->calculateHoverPosition()I

    move-result v1

    .line 160
    .local v1, position:I
    if-eq v1, v7, :cond_a

    .line 161
    if-eqz v0, :cond_45

    iget v5, p0, Lorg/cwb/view/DraggableListView;->draggingItemHoverPosition:I

    if-eq v1, v5, :cond_60

    .line 162
    :cond_45
    iput v1, p0, Lorg/cwb/view/DraggableListView;->draggingItemHoverPosition:I

    .line 163
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HoverPosition : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lorg/cwb/view/DraggableListView;->draggingItemHoverPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lorg/cwb/view/DraggableListView;->doExpansion()V

    .line 166
    :cond_60
    invoke-direct {p0, v3}, Lorg/cwb/view/DraggableListView;->scrollList(I)V

    goto :goto_a

    .line 141
    .end local v1           #position:I
    .end local v2           #x:I
    .end local v3           #y:I
    :pswitch_64
    iget-object v5, p0, Lorg/cwb/view/DraggableListView;->dragging:Lorg/cwb/view/DraggableListView$Dragging;

    invoke-virtual {v5}, Lorg/cwb/view/DraggableListView$Dragging;->stop()V

    .line 142
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/cwb/view/DraggableListView;->dragging:Lorg/cwb/view/DraggableListView$Dragging;

    .line 143
    iget-object v5, p0, Lorg/cwb/view/DraggableListView;->mDropListener:Lorg/cwb/view/DraggableListView$DropListener;

    if-eqz v5, :cond_82

    .line 144
    iget v5, p0, Lorg/cwb/view/DraggableListView;->draggingItemHoverPosition:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_86

    .line 145
    iget-object v5, p0, Lorg/cwb/view/DraggableListView;->mDropListener:Lorg/cwb/view/DraggableListView$DropListener;

    iget v6, p0, Lorg/cwb/view/DraggableListView;->dragStartPosition:I

    invoke-virtual {p0}, Lorg/cwb/view/DraggableListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v6, v7}, Lorg/cwb/view/DraggableListView$DropListener;->drop(II)V

    .line 150
    :cond_82
    :goto_82
    invoke-direct {p0}, Lorg/cwb/view/DraggableListView;->resetViews()V

    goto :goto_a

    .line 146
    :cond_86
    iget v5, p0, Lorg/cwb/view/DraggableListView;->draggingItemHoverPosition:I

    if-eq v5, v7, :cond_82

    .line 147
    iget-object v5, p0, Lorg/cwb/view/DraggableListView;->mDropListener:Lorg/cwb/view/DraggableListView$DropListener;

    iget v6, p0, Lorg/cwb/view/DraggableListView;->dragStartPosition:I

    iget v7, p0, Lorg/cwb/view/DraggableListView;->draggingItemHoverPosition:I

    invoke-interface {v5, v6, v7}, Lorg/cwb/view/DraggableListView$DropListener;->drop(II)V

    goto :goto_82

    .line 138
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_24
        :pswitch_64
        :pswitch_24
        :pswitch_64
    .end packed-switch
.end method

.method public setDraggable(Z)V
    .registers 2
    .parameter "canDrag"

    .prologue
    .line 123
    iput-boolean p1, p0, Lorg/cwb/view/DraggableListView;->bDraggable:Z

    .line 124
    return-void
.end method

.method public setDropListener(Lorg/cwb/view/DraggableListView$DropListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 250
    iput-object p1, p0, Lorg/cwb/view/DraggableListView;->mDropListener:Lorg/cwb/view/DraggableListView$DropListener;

    .line 251
    return-void
.end method

.method public setListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    .local p1, listener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    invoke-virtual {p0, p1}, Lorg/cwb/view/DraggableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    return-void
.end method
