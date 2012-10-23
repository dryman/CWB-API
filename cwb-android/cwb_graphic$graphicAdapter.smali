.class Lorg/cwb/cwb_graphic$graphicAdapter;
.super Landroid/widget/BaseAdapter;
.source "cwb_graphic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_graphic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "graphicAdapter"
.end annotation


# instance fields
.field private imageMap:[I

.field private mContext:Landroid/content/Context;

.field private nameMap:[I

.field final synthetic this$0:Lorg/cwb/cwb_graphic;


# direct methods
.method public constructor <init>(Lorg/cwb/cwb_graphic;Landroid/content/Context;[I[I)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "image"

    .prologue
    .line 238
    iput-object p1, p0, Lorg/cwb/cwb_graphic$graphicAdapter;->this$0:Lorg/cwb/cwb_graphic;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 239
    iput-object p2, p0, Lorg/cwb/cwb_graphic$graphicAdapter;->mContext:Landroid/content/Context;

    .line 240
    iput-object p3, p0, Lorg/cwb/cwb_graphic$graphicAdapter;->nameMap:[I

    .line 241
    iput-object p4, p0, Lorg/cwb/cwb_graphic$graphicAdapter;->imageMap:[I

    .line 242
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/cwb/cwb_graphic$graphicAdapter;->nameMap:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 252
    iget-object v0, p0, Lorg/cwb/cwb_graphic$graphicAdapter;->nameMap:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 258
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 266
    if-nez p2, :cond_14

    .line 267
    iget-object v2, p0, Lorg/cwb/cwb_graphic$graphicAdapter;->mContext:Landroid/content/Context;

    .line 268
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 267
    check-cast v2, Landroid/view/LayoutInflater;

    .line 268
    const v3, 0x7f03001c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 271
    :cond_14
    iget-object v2, p0, Lorg/cwb/cwb_graphic$graphicAdapter;->nameMap:[I

    if-eqz v2, :cond_28

    .line 272
    const v2, 0x7f08014e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 273
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lorg/cwb/cwb_graphic$graphicAdapter;->nameMap:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 276
    .end local v1           #text:Landroid/widget/TextView;
    :cond_28
    iget-object v2, p0, Lorg/cwb/cwb_graphic$graphicAdapter;->imageMap:[I

    if-eqz v2, :cond_3c

    .line 277
    const v2, 0x7f08014d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 278
    .local v0, image:Landroid/widget/ImageView;
    iget-object v2, p0, Lorg/cwb/cwb_graphic$graphicAdapter;->imageMap:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    .end local v0           #image:Landroid/widget/ImageView;
    :cond_3c
    return-object p2
.end method
