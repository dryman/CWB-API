.class Lorg/cwb/cwb_lifeCityList$1;
.super Ljava/lang/Object;
.source "cwb_lifeCityList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_lifeCityList;
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
.field final synthetic this$0:Lorg/cwb/cwb_lifeCityList;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_lifeCityList;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_lifeCityList$1;->this$0:Lorg/cwb/cwb_lifeCityList;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .line 192
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package_name"

    iget-object v3, p0, Lorg/cwb/cwb_lifeCityList$1;->this$0:Lorg/cwb/cwb_lifeCityList;

    invoke-virtual {v3}, Lorg/cwb/cwb_lifeCityList;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v2, "class_name"

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/cwb/cwb_lifeCityList$1;->this$0:Lorg/cwb/cwb_lifeCityList;

    invoke-virtual {v4}, Lorg/cwb/cwb_lifeCityList;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cwb_lifeStyle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v2, "group_index"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v2, "view_layer_id"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v2, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const v2, 0x7f080057

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 203
    .local v1, text:Landroid/widget/TextView;
    const-string v2, "area"

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 204
    const-string v3, "city_id"

    iget-object v2, p0, Lorg/cwb/cwb_lifeCityList$1;->this$0:Lorg/cwb/cwb_lifeCityList;

    #getter for: Lorg/cwb/cwb_lifeCityList;->result:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/cwb/cwb_lifeCityList;->access$0(Lorg/cwb/cwb_lifeCityList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cwb/cwb_lifeCityList$areaListData;

    invoke-virtual {v2}, Lorg/cwb/cwb_lifeCityList$areaListData;->getCountyID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-object v2, p0, Lorg/cwb/cwb_lifeCityList$1;->this$0:Lorg/cwb/cwb_lifeCityList;

    invoke-virtual {v2, v0}, Lorg/cwb/cwb_lifeCityList;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    return-void
.end method
