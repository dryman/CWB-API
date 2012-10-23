.class Lorg/cwb/cwb_forecast_week$1;
.super Ljava/lang/Object;
.source "cwb_forecast_week.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_forecast_week;->ShowNear(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_week;

.field private final synthetic val$travel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_week;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_forecast_week$1;->this$0:Lorg/cwb/cwb_forecast_week;

    iput-object p2, p0, Lorg/cwb/cwb_forecast_week$1;->val$travel:Ljava/lang/String;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x3

    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "area"

    iget-object v2, p0, Lorg/cwb/cwb_forecast_week$1;->this$0:Lorg/cwb/cwb_forecast_week;

    invoke-virtual {v2}, Lorg/cwb/cwb_forecast_week;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "area"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "travel"

    iget-object v2, p0, Lorg/cwb/cwb_forecast_week$1;->val$travel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v1, "package_name"

    iget-object v2, p0, Lorg/cwb/cwb_forecast_week$1;->this$0:Lorg/cwb/cwb_forecast_week;

    invoke-virtual {v2}, Lorg/cwb/cwb_forecast_week;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "class_name"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/cwb/cwb_forecast_week$1;->this$0:Lorg/cwb/cwb_forecast_week;

    invoke-virtual {v3}, Lorg/cwb/cwb_forecast_week;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".cwb_forecast_travel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v1, "group_index"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v1, "view_layer_id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    const-string v1, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    iget-object v1, p0, Lorg/cwb/cwb_forecast_week$1;->this$0:Lorg/cwb/cwb_forecast_week;

    invoke-virtual {v1, v0}, Lorg/cwb/cwb_forecast_week;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    return-void
.end method
