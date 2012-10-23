.class public Lorg/cwb/cwb_fish;
.super Landroid/app/Activity;
.source "cwb_fish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_fish$fishAdapter;
    }
.end annotation


# static fields
.field public static screen:I


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, Lorg/cwb/cwb_fish;->screen:I

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_fish;->data:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lorg/cwb/cwb_fish;->setContentView(I)V

    .line 30
    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lorg/cwb/cwb_fish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 31
    .local v0, myList:Landroid/widget/ListView;
    iget-object v1, p0, Lorg/cwb/cwb_fish;->data:Ljava/util/List;

    invoke-virtual {p0}, Lorg/cwb/cwb_fish;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, p0, Lorg/cwb/cwb_fish;->data:Ljava/util/List;

    invoke-virtual {p0}, Lorg/cwb/cwb_fish;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lorg/cwb/cwb_fish$fishAdapter;

    iget-object v2, p0, Lorg/cwb/cwb_fish;->data:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lorg/cwb/cwb_fish$fishAdapter;-><init>(Lorg/cwb/cwb_fish;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    new-instance v1, Lorg/cwb/cwb_fish$1;

    invoke-direct {v1, p0}, Lorg/cwb/cwb_fish$1;-><init>(Lorg/cwb/cwb_fish;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    return-void
.end method
