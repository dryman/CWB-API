.class Lorg/cwb/cwb_warningActivity$WaringListAdapter;
.super Landroid/widget/BaseAdapter;
.source "cwb_warningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_warningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaringListAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lorg/cwb/cwb_warningActivity;


# direct methods
.method public constructor <init>(Lorg/cwb/cwb_warningActivity;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "ctx"

    .prologue
    .line 414
    iput-object p1, p0, Lorg/cwb/cwb_warningActivity$WaringListAdapter;->this$0:Lorg/cwb/cwb_warningActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 415
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lorg/cwb/cwb_warningActivity$WaringListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 416
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$WaringListAdapter;->this$0:Lorg/cwb/cwb_warningActivity;

    iget-object v0, v0, Lorg/cwb/cwb_warningActivity;->warndata:Lorg/cwb/cwb_warningdata;

    invoke-virtual {v0}, Lorg/cwb/cwb_warningdata;->getWarnList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 424
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$WaringListAdapter;->this$0:Lorg/cwb/cwb_warningActivity;

    iget-object v0, v0, Lorg/cwb/cwb_warningActivity;->warndata:Lorg/cwb/cwb_warningdata;

    invoke-virtual {v0}, Lorg/cwb/cwb_warningdata;->getWarnList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 429
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLink(Landroid/view/View;)Ljava/lang/String;
    .registers 3
    .parameter "view"

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 433
    if-nez p2, :cond_c

    .line 434
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity$WaringListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030030

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 436
    :cond_c
    const v1, 0x7f0801c8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 437
    .local v0, text:Landroid/widget/TextView;
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity$WaringListAdapter;->this$0:Lorg/cwb/cwb_warningActivity;

    iget-object v1, v1, Lorg/cwb/cwb_warningActivity;->warndata:Lorg/cwb/cwb_warningdata;

    invoke-virtual {v1}, Lorg/cwb/cwb_warningdata;->getWarnList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity$WaringListAdapter;->this$0:Lorg/cwb/cwb_warningActivity;

    iget-object v1, v1, Lorg/cwb/cwb_warningActivity;->warndata:Lorg/cwb/cwb_warningdata;

    invoke-virtual {v1}, Lorg/cwb/cwb_warningdata;->getWarnLinkList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lorg/cwb/cwb_warningActivity$WaringListAdapter;->setLink(Landroid/view/View;Ljava/lang/String;)V

    .line 439
    return-object p2
.end method

.method public setLink(Landroid/view/View;Ljava/lang/String;)V
    .registers 3
    .parameter "view"
    .parameter "link"

    .prologue
    .line 442
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 443
    return-void
.end method
