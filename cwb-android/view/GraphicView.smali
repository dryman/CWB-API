.class public Lorg/cwb/view/GraphicView;
.super Landroid/view/View;
.source "GraphicView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/view/GraphicView$xyCoor;
    }
.end annotation


# instance fields
.field private List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private coorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/view/GraphicView$xyCoor;",
            ">;"
        }
    .end annotation
.end field

.field private coorList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/view/GraphicView$xyCoor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/view/GraphicView;->coorList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/view/GraphicView;->coorList2:Ljava/util/ArrayList;

    .line 28
    invoke-direct {p0, p1}, Lorg/cwb/view/GraphicView;->initViews(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/view/GraphicView;->coorList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/view/GraphicView;->coorList2:Ljava/util/ArrayList;

    .line 32
    invoke-direct {p0, p1}, Lorg/cwb/view/GraphicView;->initViews(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/view/GraphicView;->coorList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/view/GraphicView;->coorList2:Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0, p1}, Lorg/cwb/view/GraphicView;->initViews(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 41
    iput-object p1, p0, Lorg/cwb/view/GraphicView;->context:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 29
    .parameter "canvas"

    .prologue
    .line 66
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/view/GraphicView;->getMeasuredWidth()I

    move-result v23

    .line 67
    .local v23, w:I
    invoke-virtual/range {p0 .. p0}, Lorg/cwb/view/GraphicView;->getMeasuredHeight()I

    move-result v18

    .line 68
    .local v18, h:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->List:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MinRange:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 69
    .local v22, minValue:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->List:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MaxRange:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 70
    .local v21, maxValue:I
    div-int/lit8 v5, v18, 0x2

    add-int/lit8 v5, v5, 0x14

    sub-int v6, v21, v22

    div-int v16, v5, v6

    .line 71
    .local v16, gap:I
    div-int/lit8 v5, v18, 0x2

    add-int/lit8 v5, v5, 0x14

    sub-int v6, v21, v22

    div-int v17, v5, v6

    .line 73
    .local v17, gap2:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020134

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 74
    .local v12, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 75
    .local v15, bmpW:I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 77
    .local v14, bmpH:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200cf

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 81
    .local v13, bmp2:Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 82
    .local v20, mPaint:Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    const/high16 v5, 0x41a0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 84
    sget-object v5, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 86
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 87
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 107
    const/16 v19, 0x0

    .local v19, i:I
    :goto_89
    const/4 v5, 0x7

    move/from16 v0, v19

    if-lt v0, v5, :cond_ce

    .line 187
    new-instance v3, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x41f0

    const/4 v5, 0x0

    const/high16 v6, 0x4270

    const/4 v7, 0x0

    .line 188
    const/4 v8, 0x3

    new-array v8, v8, [I

    fill-array-data v8, :array_292

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 187
    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 189
    .local v3, gradient:Landroid/graphics/LinearGradient;
    new-instance v4, Landroid/graphics/LinearGradient;

    const/high16 v5, 0x41f0

    const/4 v6, 0x0

    const/high16 v7, 0x4270

    const/4 v8, 0x0

    .line 190
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_29c

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 189
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 192
    .local v4, gradient2:Landroid/graphics/LinearGradient;
    move-object/from16 v10, v20

    .line 193
    .local v10, p:Landroid/graphics/Paint;
    const/high16 v5, 0x4080

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    const/16 v19, 0x0

    :goto_bf
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v19

    if-lt v0, v5, :cond_1e9

    .line 211
    return-void

    .line 109
    .end local v3           #gradient:Landroid/graphics/LinearGradient;
    .end local v4           #gradient2:Landroid/graphics/LinearGradient;
    .end local v10           #p:Landroid/graphics/Paint;
    :cond_ce
    div-int/lit8 v5, v23, 0x7

    sub-int/2addr v5, v15

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v23, 0x7

    mul-int v6, v6, v19

    add-int v24, v5, v6

    .line 110
    .local v24, xPos:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->List:Ljava/util/ArrayList;

    add-int/lit8 v6, v19, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MaxT:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int v5, v21, v5

    mul-int v5, v5, v16

    add-int/lit8 v25, v5, 0x17

    .line 128
    .local v25, yPos:I
    move-object/from16 v10, v20

    .line 129
    .restart local v10       #p:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 130
    const/4 v5, -0x1

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->context:Landroid/content/Context;

    invoke-static {v5}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1ba

    .line 133
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/cwb/view/GraphicView;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->List:Ljava/util/ArrayList;

    add-int/lit8 v7, v19, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MaxT:Ljava/lang/String;

    invoke-static {v6, v5}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    :goto_11c
    div-int/lit8 v6, v23, 0xe

    div-int/lit8 v7, v23, 0x7

    mul-int v7, v7, v19

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-int/lit8 v7, v25, -0xa

    int-to-float v7, v7

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 137
    move/from16 v0, v24

    int-to-float v5, v0

    move/from16 v0, v25

    int-to-float v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v5, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList:Ljava/util/ArrayList;

    new-instance v6, Lorg/cwb/view/GraphicView$xyCoor;

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v6, v0, v1, v2}, Lorg/cwb/view/GraphicView$xyCoor;-><init>(Lorg/cwb/view/GraphicView;II)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    div-int/lit8 v5, v18, 0x2

    add-int/lit8 v6, v5, 0x50

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->List:Ljava/util/ArrayList;

    add-int/lit8 v7, v19, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MinT:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int v5, v22, v5

    mul-int v5, v5, v17

    add-int v26, v6, v5

    .line 151
    .local v26, yPos2:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->context:Landroid/content/Context;

    invoke-static {v5}, Lorg/cwb/cwb_more;->isC(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1d2

    .line 152
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/cwb/view/GraphicView;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->List:Ljava/util/ArrayList;

    add-int/lit8 v7, v19, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MinT:Ljava/lang/String;

    invoke-static {v6, v5}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    :goto_187
    div-int/lit8 v6, v23, 0xe

    div-int/lit8 v7, v23, 0x7

    mul-int v7, v7, v19

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-int/lit8 v7, v26, -0xa

    int-to-float v7, v7

    .line 150
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 156
    move/from16 v0, v24

    int-to-float v5, v0

    move/from16 v0, v26

    int-to-float v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v5, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList2:Ljava/util/ArrayList;

    new-instance v6, Lorg/cwb/view/GraphicView$xyCoor;

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v6, v0, v1, v2}, Lorg/cwb/view/GraphicView$xyCoor;-><init>(Lorg/cwb/view/GraphicView;II)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_89

    .line 135
    .end local v26           #yPos2:I
    :cond_1ba
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/cwb/view/GraphicView;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->List:Ljava/util/ArrayList;

    add-int/lit8 v7, v19, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MaxT:Ljava/lang/String;

    invoke-static {v6, v5}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_11c

    .line 154
    .restart local v26       #yPos2:I
    :cond_1d2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/cwb/view/GraphicView;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->List:Ljava/util/ArrayList;

    add-int/lit8 v7, v19, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;

    iget-object v5, v5, Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;->MinT:Ljava/lang/String;

    invoke-static {v6, v5}, Lorg/cwb/cwb_more;->getTemp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_187

    .line 197
    .end local v24           #xPos:I
    .end local v25           #yPos:I
    .end local v26           #yPos2:I
    .restart local v3       #gradient:Landroid/graphics/LinearGradient;
    .restart local v4       #gradient2:Landroid/graphics/LinearGradient;
    :cond_1e9
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 199
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/view/GraphicView$xyCoor;

    iget v5, v5, Lorg/cwb/view/GraphicView$xyCoor;->xPos:I

    add-int/2addr v5, v15

    add-int/lit8 v5, v5, -0x2

    int-to-float v6, v5

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/view/GraphicView$xyCoor;

    iget v5, v5, Lorg/cwb/view/GraphicView$xyCoor;->yPos:I

    div-int/lit8 v7, v14, 0x2

    add-int/2addr v5, v7

    int-to-float v7, v5

    .line 201
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/view/GraphicView$xyCoor;

    iget v5, v5, Lorg/cwb/view/GraphicView$xyCoor;->xPos:I

    div-int/lit8 v8, v23, 0x7

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x2

    int-to-float v8, v5

    .line 202
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList:Ljava/util/ArrayList;

    add-int/lit8 v9, v19, 0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/view/GraphicView$xyCoor;

    iget v5, v5, Lorg/cwb/view/GraphicView$xyCoor;->yPos:I

    div-int/lit8 v9, v14, 0x2

    add-int/2addr v5, v9

    int-to-float v9, v5

    move-object/from16 v5, p1

    .line 199
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 204
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 206
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList2:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/view/GraphicView$xyCoor;

    iget v5, v5, Lorg/cwb/view/GraphicView$xyCoor;->xPos:I

    add-int/2addr v5, v15

    add-int/lit8 v5, v5, -0x2

    int-to-float v6, v5

    .line 207
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList2:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/view/GraphicView$xyCoor;

    iget v5, v5, Lorg/cwb/view/GraphicView$xyCoor;->yPos:I

    div-int/lit8 v7, v14, 0x2

    add-int/2addr v5, v7

    int-to-float v7, v5

    .line 208
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList2:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/view/GraphicView$xyCoor;

    iget v5, v5, Lorg/cwb/view/GraphicView$xyCoor;->xPos:I

    div-int/lit8 v8, v23, 0x7

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x2

    int-to-float v8, v5

    .line 209
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cwb/view/GraphicView;->coorList2:Ljava/util/ArrayList;

    add-int/lit8 v9, v19, 0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cwb/view/GraphicView$xyCoor;

    iget v5, v5, Lorg/cwb/view/GraphicView$xyCoor;->yPos:I

    div-int/lit8 v9, v14, 0x2

    add-int/2addr v5, v9

    int-to-float v9, v5

    move-object/from16 v5, p1

    .line 206
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 195
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_bf

    .line 188
    nop

    :array_292
    .array-data 0x4
        0xd4t 0xd4t 0xf8t 0xfft
        0x0t 0x0t 0xfft 0xfft
        0xd4t 0xd4t 0xf8t 0xfft
    .end array-data

    .line 190
    :array_29c
    .array-data 0x4
        0xebt 0x87t 0x88t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xebt 0x87t 0x88t 0xfft
    .end array-data
.end method

.method public setData(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/cwb/cwb_forecast_2012Mar_graphic$graphicData;>;"
    iput-object p1, p0, Lorg/cwb/view/GraphicView;->List:Ljava/util/ArrayList;

    .line 46
    return-void
.end method
