.class Lorg/cwb/cwb_fish_arealist$1;
.super Ljava/lang/Object;
.source "cwb_fish_arealist.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_fish_arealist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_fish_arealist;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_fish_arealist;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_fish_arealist$1;->this$0:Lorg/cwb/cwb_fish_arealist;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "package_name"

    iget-object v2, p0, Lorg/cwb/cwb_fish_arealist$1;->this$0:Lorg/cwb/cwb_fish_arealist;

    invoke-virtual {v2}, Lorg/cwb/cwb_fish_arealist;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "class_name"

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/cwb/cwb_fish_arealist$1;->this$0:Lorg/cwb/cwb_fish_arealist;

    invoke-virtual {v3}, Lorg/cwb/cwb_fish_arealist;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    const-string v3, ".cwb_fish_detailgroup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v1, "group_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    const-string v1, "view_layer_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v1, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v2, "graphic_cityid"

    iget-object v1, p0, Lorg/cwb/cwb_fish_arealist$1;->this$0:Lorg/cwb/cwb_fish_arealist;

    #getter for: Lorg/cwb/cwb_fish_arealist;->result:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/cwb/cwb_fish_arealist;->access$0(Lorg/cwb/cwb_fish_arealist;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_fish_arealist$areaListData;

    invoke-virtual {v1}, Lorg/cwb/cwb_fish_arealist$areaListData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v2, "graphic_cityname"

    iget-object v1, p0, Lorg/cwb/cwb_fish_arealist$1;->this$0:Lorg/cwb/cwb_fish_arealist;

    #getter for: Lorg/cwb/cwb_fish_arealist;->result:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/cwb/cwb_fish_arealist;->access$0(Lorg/cwb/cwb_fish_arealist;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_fish_arealist$areaListData;

    invoke-virtual {v1}, Lorg/cwb/cwb_fish_arealist$areaListData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lorg/cwb/cwb_fish_arealist$1;->this$0:Lorg/cwb/cwb_fish_arealist;

    invoke-virtual {v1, v0}, Lorg/cwb/cwb_fish_arealist;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    return-void
.end method
