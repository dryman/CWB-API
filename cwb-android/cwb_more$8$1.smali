.class Lorg/cwb/cwb_more$8$1;
.super Ljava/lang/Object;
.source "cwb_more.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cwb/cwb_more$8;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cwb/cwb_more$8;

.field private final synthetic val$txt:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_more$8;Landroid/widget/TextView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cwb/cwb_more$8$1;->this$1:Lorg/cwb/cwb_more$8;

    iput-object p2, p0, Lorg/cwb/cwb_more$8$1;->val$txt:Landroid/widget/TextView;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 319
    iget-object v1, p0, Lorg/cwb/cwb_more$8$1;->this$1:Lorg/cwb/cwb_more$8;

    #getter for: Lorg/cwb/cwb_more$8;->this$0:Lorg/cwb/cwb_more;
    invoke-static {v1}, Lorg/cwb/cwb_more$8;->access$0(Lorg/cwb/cwb_more$8;)Lorg/cwb/cwb_more;

    move-result-object v1

    iget-object v2, p0, Lorg/cwb/cwb_more$8$1;->val$txt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lorg/cwb/cwb_more;->DeleteLocation(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/cwb/cwb_more;->access$2(Lorg/cwb/cwb_more;Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lorg/cwb/cwb_more$8$1;->this$1:Lorg/cwb/cwb_more$8;

    #getter for: Lorg/cwb/cwb_more$8;->this$0:Lorg/cwb/cwb_more;
    invoke-static {v1}, Lorg/cwb/cwb_more$8;->access$0(Lorg/cwb/cwb_more$8;)Lorg/cwb/cwb_more;

    move-result-object v1

    #getter for: Lorg/cwb/cwb_more;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lorg/cwb/cwb_more;->access$3(Lorg/cwb/cwb_more;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "del txt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/cwb/cwb_more$8$1;->val$txt:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Lorg/cwb/cwb_more$MoreAdapter;

    iget-object v1, p0, Lorg/cwb/cwb_more$8$1;->this$1:Lorg/cwb/cwb_more$8;

    #getter for: Lorg/cwb/cwb_more$8;->this$0:Lorg/cwb/cwb_more;
    invoke-static {v1}, Lorg/cwb/cwb_more$8;->access$0(Lorg/cwb/cwb_more$8;)Lorg/cwb/cwb_more;

    move-result-object v1

    iget-object v2, p0, Lorg/cwb/cwb_more$8$1;->this$1:Lorg/cwb/cwb_more$8;

    #getter for: Lorg/cwb/cwb_more$8;->this$0:Lorg/cwb/cwb_more;
    invoke-static {v2}, Lorg/cwb/cwb_more$8;->access$0(Lorg/cwb/cwb_more$8;)Lorg/cwb/cwb_more;

    move-result-object v2

    #getter for: Lorg/cwb/cwb_more;->context:Landroid/content/Context;
    invoke-static {v2}, Lorg/cwb/cwb_more;->access$4(Lorg/cwb/cwb_more;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/cwb/cwb_more$8$1;->this$1:Lorg/cwb/cwb_more$8;

    #getter for: Lorg/cwb/cwb_more$8;->this$0:Lorg/cwb/cwb_more;
    invoke-static {v3}, Lorg/cwb/cwb_more$8;->access$0(Lorg/cwb/cwb_more$8;)Lorg/cwb/cwb_more;

    move-result-object v3

    #getter for: Lorg/cwb/cwb_more;->locations:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/cwb/cwb_more;->access$5(Lorg/cwb/cwb_more;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/cwb/cwb_more$MoreAdapter;-><init>(Lorg/cwb/cwb_more;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 321
    .local v0, theListAdapter:Lorg/cwb/cwb_more$MoreAdapter;
    iget-object v1, p0, Lorg/cwb/cwb_more$8$1;->this$1:Lorg/cwb/cwb_more$8;

    #getter for: Lorg/cwb/cwb_more$8;->this$0:Lorg/cwb/cwb_more;
    invoke-static {v1}, Lorg/cwb/cwb_more$8;->access$0(Lorg/cwb/cwb_more$8;)Lorg/cwb/cwb_more;

    move-result-object v1

    #getter for: Lorg/cwb/cwb_more;->list:Landroid/widget/ListView;
    invoke-static {v1}, Lorg/cwb/cwb_more;->access$6(Lorg/cwb/cwb_more;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 323
    return-void
.end method
