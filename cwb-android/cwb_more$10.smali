.class Lorg/cwb/cwb_more$10;
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
    iput-object p1, p0, Lorg/cwb/cwb_more$10;->this$0:Lorg/cwb/cwb_more;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 371
    invoke-static {}, Lorg/cwb/cwb_more;->access$8()I

    move-result v0

    invoke-static {v0}, Lorg/cwb/cwb_more;->access$9(I)V

    .line 372
    iget-object v0, p0, Lorg/cwb/cwb_more$10;->this$0:Lorg/cwb/cwb_more;

    #getter for: Lorg/cwb/cwb_more;->pref:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/cwb/cwb_more;->access$10(Lorg/cwb/cwb_more;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "temp_unit"

    invoke-static {}, Lorg/cwb/cwb_more;->access$11()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    invoke-static {}, Lorg/cwb/cwb_more;->access$11()I

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lorg/cwb/cwb_more$10;->this$0:Lorg/cwb/cwb_more;

    #getter for: Lorg/cwb/cwb_more;->tempDisplay:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/cwb/cwb_more;->access$12(Lorg/cwb/cwb_more;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 375
    :goto_30
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 376
    return-void

    .line 374
    :cond_34
    iget-object v0, p0, Lorg/cwb/cwb_more$10;->this$0:Lorg/cwb/cwb_more;

    #getter for: Lorg/cwb/cwb_more;->tempDisplay:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/cwb/cwb_more;->access$12(Lorg/cwb/cwb_more;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_30
.end method
