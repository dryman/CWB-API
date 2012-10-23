.class Lorg/cwb/cwb_fish_2012mar_nearsea$1;
.super Ljava/lang/Object;
.source "cwb_fish_2012mar_nearsea.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_fish_2012mar_nearsea;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_fish_2012mar_nearsea;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$1;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 45
    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-static {v2}, Lorg/cwb/cwb_utilities;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 47
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v1, graphicIntent:Landroid/content/Intent;
    const-string v2, "package_name"

    iget-object v3, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$1;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    invoke-virtual {v3}, Lorg/cwb/cwb_fish_2012mar_nearsea;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v2, "class_name"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$1;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    invoke-virtual {v4}, Lorg/cwb/cwb_fish_2012mar_nearsea;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cwb_fish_arealist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v2, "group_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string v2, "view_layer_id"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    const-string v2, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v2, p0, Lorg/cwb/cwb_fish_2012mar_nearsea$1;->this$0:Lorg/cwb/cwb_fish_2012mar_nearsea;

    invoke-virtual {v2, v1}, Lorg/cwb/cwb_fish_2012mar_nearsea;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    .end local v1           #graphicIntent:Landroid/content/Intent;
    :goto_4c
    return-void

    .line 55
    :cond_4d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09006d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 57
    const-string v3, "OK"

    new-instance v4, Lorg/cwb/cwb_fish_2012mar_nearsea$1$1;

    invoke-direct {v4, p0}, Lorg/cwb/cwb_fish_2012mar_nearsea$1$1;-><init>(Lorg/cwb/cwb_fish_2012mar_nearsea$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_4c
.end method
