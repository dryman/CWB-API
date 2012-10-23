.class Lorg/cwb/cwb_more$MoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "cwb_more.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_more;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoreAdapter"
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/widget/TextView;

.field private mcontext:Landroid/content/Context;

.field final synthetic this$0:Lorg/cwb/cwb_more;


# direct methods
.method public constructor <init>(Lorg/cwb/cwb_more;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 11
    .parameter
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v6, 0xa

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 461
    iput-object p1, p0, Lorg/cwb/cwb_more$MoreAdapter;->this$0:Lorg/cwb/cwb_more;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 457
    iput-object v2, p0, Lorg/cwb/cwb_more$MoreAdapter;->mcontext:Landroid/content/Context;

    .line 458
    iput-object v2, p0, Lorg/cwb/cwb_more$MoreAdapter;->mLocation:Landroid/widget/TextView;

    .line 459
    iput-object v2, p0, Lorg/cwb/cwb_more$MoreAdapter;->list:Ljava/util/ArrayList;

    .line 462
    iput-object p2, p0, Lorg/cwb/cwb_more$MoreAdapter;->mcontext:Landroid/content/Context;

    .line 463
    iput-object p3, p0, Lorg/cwb/cwb_more$MoreAdapter;->list:Ljava/util/ArrayList;

    .line 464
    if-eqz p3, :cond_24

    .line 465
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_25

    #getter for: Lorg/cwb/cwb_more;->layout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lorg/cwb/cwb_more;->access$1(Lorg/cwb/cwb_more;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    :cond_24
    :goto_24
    return-void

    .line 467
    :cond_25
    #getter for: Lorg/cwb/cwb_more;->layout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lorg/cwb/cwb_more;->access$1(Lorg/cwb/cwb_more;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, height:I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_5e

    .line 487
    :goto_34
    #getter for: Lorg/cwb/cwb_more;->layout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lorg/cwb/cwb_more;->access$1(Lorg/cwb/cwb_more;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 488
    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 487
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    #getter for: Lorg/cwb/cwb_more;->layout:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lorg/cwb/cwb_more;->access$1(Lorg/cwb/cwb_more;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 490
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v6, v5, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_24

    .line 471
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_4f
    const/16 v0, 0x5f

    .line 472
    goto :goto_34

    .line 474
    :pswitch_52
    const/16 v0, 0xa0

    .line 475
    goto :goto_34

    .line 477
    :pswitch_55
    const/16 v0, 0xe4

    .line 478
    goto :goto_34

    .line 480
    :pswitch_58
    const/16 v0, 0x124

    .line 481
    goto :goto_34

    .line 483
    :pswitch_5b
    const/16 v0, 0x16d

    .line 484
    goto :goto_34

    .line 469
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_58
        :pswitch_5b
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lorg/cwb/cwb_more$MoreAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 496
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/cwb/cwb_more$MoreAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 500
    iget-object v0, p0, Lorg/cwb/cwb_more$MoreAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 501
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/cwb/cwb_more$MoreAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "ItemId"

    .prologue
    .line 505
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 509
    iget-object v3, p0, Lorg/cwb/cwb_more$MoreAdapter;->mcontext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 510
    .local v0, li:Landroid/view/LayoutInflater;
    const v3, 0x7f030021

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 511
    .local v2, vi:Landroid/view/View;
    invoke-virtual {p0, p1}, Lorg/cwb/cwb_more$MoreAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 512
    .local v1, location:Ljava/lang/String;
    const v3, 0x7f08019b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/cwb/cwb_more$MoreAdapter;->mLocation:Landroid/widget/TextView;

    .line 513
    iget-object v3, p0, Lorg/cwb/cwb_more$MoreAdapter;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    return-object v2
.end method
