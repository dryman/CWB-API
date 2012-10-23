.class Lorg/cwb/cwb_searchlist$SearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "cwb_searchlist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_searchlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchListAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lorg/cwb/cwb_searchlist;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_searchlist;)V
    .registers 3
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lorg/cwb/cwb_searchlist$SearchListAdapter;->this$0:Lorg/cwb/cwb_searchlist;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 71
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lorg/cwb/cwb_searchlist;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lorg/cwb/cwb_searchlist$SearchListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/cwb/cwb_searchlist$SearchListAdapter;->this$0:Lorg/cwb/cwb_searchlist;

    iget-object v0, v0, Lorg/cwb/cwb_searchlist;->mStationName:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 75
    const/4 v0, 0x0

    .line 76
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/cwb/cwb_searchlist$SearchListAdapter;->this$0:Lorg/cwb/cwb_searchlist;

    iget-object v0, v0, Lorg/cwb/cwb_searchlist;->mStationName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_7
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 81
    iget-object v0, p0, Lorg/cwb/cwb_searchlist$SearchListAdapter;->this$0:Lorg/cwb/cwb_searchlist;

    iget-object v0, v0, Lorg/cwb/cwb_searchlist;->mStationName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 91
    if-nez p2, :cond_c

    .line 92
    iget-object v1, p0, Lorg/cwb/cwb_searchlist$SearchListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030029

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 93
    :cond_c
    const v1, 0x7f0801b7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    .local v0, name:Landroid/widget/TextView;
    iget-object v1, p0, Lorg/cwb/cwb_searchlist$SearchListAdapter;->this$0:Lorg/cwb/cwb_searchlist;

    iget-object v1, v1, Lorg/cwb/cwb_searchlist;->mStationName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-object p2
.end method
