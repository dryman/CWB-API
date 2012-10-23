.class Lorg/cwb/cwb_more$12;
.super Ljava/lang/Object;
.source "cwb_more.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_more;->LayoutHandler(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_more;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_more;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_more$12;->this$0:Lorg/cwb/cwb_more;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 390
    invoke-static {}, Lorg/cwb/cwb_more;->access$14()I

    move-result v0

    invoke-static {v0}, Lorg/cwb/cwb_more;->access$15(I)V

    .line 391
    iget-object v0, p0, Lorg/cwb/cwb_more$12;->this$0:Lorg/cwb/cwb_more;

    #getter for: Lorg/cwb/cwb_more;->pref:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/cwb/cwb_more;->access$10(Lorg/cwb/cwb_more;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wind_value"

    invoke-static {}, Lorg/cwb/cwb_more;->access$16()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    invoke-static {}, Lorg/cwb/cwb_more;->access$16()I

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lorg/cwb/cwb_more$12;->this$0:Lorg/cwb/cwb_more;

    #getter for: Lorg/cwb/cwb_more;->windDisplay:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/cwb/cwb_more;->access$17(Lorg/cwb/cwb_more;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 394
    :goto_30
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 395
    return-void

    .line 393
    :cond_34
    iget-object v0, p0, Lorg/cwb/cwb_more$12;->this$0:Lorg/cwb/cwb_more;

    #getter for: Lorg/cwb/cwb_more;->windDisplay:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/cwb/cwb_more;->access$17(Lorg/cwb/cwb_more;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_30
.end method
