.class Lorg/cwb/cwb_more$5;
.super Ljava/lang/Object;
.source "cwb_more.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_more;->setDataButtonAction()V
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
.field final synthetic this$0:Lorg/cwb/cwb_more;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_more;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_more$5;->this$0:Lorg/cwb/cwb_more;

    .line 133
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
    .line 138
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, graphicIntent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_60

    .line 150
    :goto_8
    const-string v1, "package_name"

    iget-object v2, p0, Lorg/cwb/cwb_more$5;->this$0:Lorg/cwb/cwb_more;

    invoke-virtual {v2}, Lorg/cwb/cwb_more;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "class_name"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/cwb/cwb_more$5;->this$0:Lorg/cwb/cwb_more;

    invoke-virtual {v3}, Lorg/cwb/cwb_more;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".cwb_graphic_detail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "group_index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string v1, "view_layer_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v1, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lorg/cwb/cwb_more$5;->this$0:Lorg/cwb/cwb_more;

    invoke-virtual {v1, v0}, Lorg/cwb/cwb_more;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void

    .line 141
    :pswitch_48
    const-string v1, "CWB_URL"

    const-string v2, "http://www.cwb.gov.tw/pda/rainfall/rain_today_mob.htm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 144
    :pswitch_50
    const-string v1, "CWB_URL"

    const-string v2, "http://www.cwb.gov.tw/pda/rainfall/rain_yesterday_mob.htm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 147
    :pswitch_58
    const-string v1, "CWB_URL"

    const-string v2, "http://www.cwb.gov.tw/pda/rainfall/rain_beforeyes_mob.htm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 139
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_48
        :pswitch_50
        :pswitch_58
    .end packed-switch
.end method
