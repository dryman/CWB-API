.class Lorg/cwb/cwb_more$graphicAdapter;
.super Landroid/widget/BaseAdapter;
.source "cwb_more.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_more;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "graphicAdapter"
.end annotation


# instance fields
.field private imageMap:[I

.field private mContext:Landroid/content/Context;

.field private nameMap:[I

.field final synthetic this$0:Lorg/cwb/cwb_more;


# direct methods
.method public constructor <init>(Lorg/cwb/cwb_more;Landroid/content/Context;[I[I)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "image"

    .prologue
    .line 255
    iput-object p1, p0, Lorg/cwb/cwb_more$graphicAdapter;->this$0:Lorg/cwb/cwb_more;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 256
    iput-object p2, p0, Lorg/cwb/cwb_more$graphicAdapter;->mContext:Landroid/content/Context;

    .line 257
    iput-object p3, p0, Lorg/cwb/cwb_more$graphicAdapter;->nameMap:[I

    .line 258
    iput-object p4, p0, Lorg/cwb/cwb_more$graphicAdapter;->imageMap:[I

    .line 259
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/cwb/cwb_more$graphicAdapter;->nameMap:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 269
    iget-object v0, p0, Lorg/cwb/cwb_more$graphicAdapter;->nameMap:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 275
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 283
    if-nez p2, :cond_14

    .line 284
    iget-object v2, p0, Lorg/cwb/cwb_more$graphicAdapter;->mContext:Landroid/content/Context;

    .line 285
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 284
    check-cast v2, Landroid/view/LayoutInflater;

    .line 285
    const v3, 0x7f03001c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 288
    :cond_14
    iget-object v2, p0, Lorg/cwb/cwb_more$graphicAdapter;->nameMap:[I

    if-eqz v2, :cond_28

    .line 289
    const v2, 0x7f08014e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 290
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lorg/cwb/cwb_more$graphicAdapter;->nameMap:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 293
    .end local v1           #text:Landroid/widget/TextView;
    :cond_28
    iget-object v2, p0, Lorg/cwb/cwb_more$graphicAdapter;->imageMap:[I

    if-eqz v2, :cond_3c

    .line 294
    const v2, 0x7f08014d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 295
    .local v0, image:Landroid/widget/ImageView;
    iget-object v2, p0, Lorg/cwb/cwb_more$graphicAdapter;->imageMap:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    .end local v0           #image:Landroid/widget/ImageView;
    :cond_3c
    return-object p2
.end method
