.class Lorg/cwb/cwbTabActivity$1;
.super Ljava/lang/Object;
.source "cwbTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwbTabActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwbTabActivity;

.field private final synthetic val$tabHost:Landroid/widget/TabHost;


# direct methods
.method constructor <init>(Lorg/cwb/cwbTabActivity;Landroid/widget/TabHost;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwbTabActivity$1;->this$0:Lorg/cwb/cwbTabActivity;

    iput-object p2, p0, Lorg/cwb/cwbTabActivity$1;->val$tabHost:Landroid/widget/TabHost;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 6
    .parameter "tabId"

    .prologue
    const v3, 0x1020006

    .line 261
    iget-object v1, p0, Lorg/cwb/cwbTabActivity$1;->this$0:Lorg/cwb/cwbTabActivity;

    #calls: Lorg/cwb/cwbTabActivity;->resetTabIndicatorIcon()V
    invoke-static {v1}, Lorg/cwb/cwbTabActivity;->access$2(Lorg/cwb/cwbTabActivity;)V

    .line 265
    const-string v1, "cwbforcast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 267
    iget-object v1, p0, Lorg/cwb/cwbTabActivity$1;->val$tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 268
    .local v0, tabImage:Landroid/widget/ImageView;
    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    .end local v0           #tabImage:Landroid/widget/ImageView;
    :cond_27
    :goto_27
    return-void

    .line 269
    :cond_28
    const-string v1, "cwbnow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 271
    iget-object v1, p0, Lorg/cwb/cwbTabActivity$1;->val$tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 272
    .restart local v0       #tabImage:Landroid/widget/ImageView;
    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 273
    .end local v0           #tabImage:Landroid/widget/ImageView;
    :cond_48
    const-string v1, "cwblife"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 275
    iget-object v1, p0, Lorg/cwb/cwbTabActivity$1;->val$tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 276
    .restart local v0       #tabImage:Landroid/widget/ImageView;
    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 277
    .end local v0           #tabImage:Landroid/widget/ImageView;
    :cond_68
    const-string v1, "cwbother"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 279
    iget-object v1, p0, Lorg/cwb/cwbTabActivity$1;->val$tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 280
    .restart local v0       #tabImage:Landroid/widget/ImageView;
    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 281
    .end local v0           #tabImage:Landroid/widget/ImageView;
    :cond_88
    const-string v1, "cwbmore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 283
    iget-object v1, p0, Lorg/cwb/cwbTabActivity$1;->val$tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 284
    .restart local v0       #tabImage:Landroid/widget/ImageView;
    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27
.end method
