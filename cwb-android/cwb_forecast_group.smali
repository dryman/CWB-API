.class public Lorg/cwb/cwb_forecast_group;
.super Landroid/app/ActivityGroup;
.source "cwb_forecast_group.java"


# static fields
.field public static Group:Lorg/cwb/cwb_forecast_group;


# instance fields
.field private history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public addViewHistory(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/cwb/cwb_forecast_group;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public getViewHistory()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lorg/cwb/cwb_forecast_group;->history:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/cwb/cwb_forecast_group;->history:Ljava/util/ArrayList;

    .line 21
    sput-object p0, Lorg/cwb/cwb_forecast_group;->Group:Lorg/cwb/cwb_forecast_group;

    .line 23
    invoke-virtual {p0}, Lorg/cwb/cwb_forecast_group;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const-string v2, "cwb_forecast_2012Mar_addFavorite"

    .line 24
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/cwb/cwb_forecast_2012Mar_addFavorite;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, view:Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 27
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_forecast_group;->setContentView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_forecast_group;->addViewHistory(Landroid/view/View;)V

    .line 31
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 39
    return-void
.end method
