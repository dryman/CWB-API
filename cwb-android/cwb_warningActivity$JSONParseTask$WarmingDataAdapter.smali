.class Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "cwb_warningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_warningActivity$JSONParseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WarmingDataAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cwb/cwb_warningActivity$JSONParseTask;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_warningActivity$JSONParseTask;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->this$1:Lorg/cwb/cwb_warningActivity$JSONParseTask;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->this$1:Lorg/cwb/cwb_warningActivity$JSONParseTask;

    #getter for: Lorg/cwb/cwb_warningActivity$JSONParseTask;->result:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_warningActivity$JSONParseTask;->access$2(Lorg/cwb/cwb_warningActivity$JSONParseTask;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 140
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->this$1:Lorg/cwb/cwb_warningActivity$JSONParseTask;

    #getter for: Lorg/cwb/cwb_warningActivity$JSONParseTask;->result:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_warningActivity$JSONParseTask;->access$2(Lorg/cwb/cwb_warningActivity$JSONParseTask;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 146
    int-to-long v0, p1

    return-wide v0
.end method

.method public getRawData()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_warningActivity$warmDataObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->this$1:Lorg/cwb/cwb_warningActivity$JSONParseTask;

    #getter for: Lorg/cwb/cwb_warningActivity$JSONParseTask;->result:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/cwb/cwb_warningActivity$JSONParseTask;->access$2(Lorg/cwb/cwb_warningActivity$JSONParseTask;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "arg0"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 156
    if-nez p2, :cond_14

    .line 158
    iget-object v2, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->this$1:Lorg/cwb/cwb_warningActivity$JSONParseTask;

    #getter for: Lorg/cwb/cwb_warningActivity$JSONParseTask;->this$0:Lorg/cwb/cwb_warningActivity;
    invoke-static {v2}, Lorg/cwb/cwb_warningActivity$JSONParseTask;->access$3(Lorg/cwb/cwb_warningActivity$JSONParseTask;)Lorg/cwb/cwb_warningActivity;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lorg/cwb/cwb_warningActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 163
    :cond_14
    const v2, 0x7f0801c1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 164
    .local v1, warmTitle:Landroid/widget/TextView;
    iget-object v2, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->this$1:Lorg/cwb/cwb_warningActivity$JSONParseTask;

    #getter for: Lorg/cwb/cwb_warningActivity$JSONParseTask;->result:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/cwb/cwb_warningActivity$JSONParseTask;->access$2(Lorg/cwb/cwb_warningActivity$JSONParseTask;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cwb/cwb_warningActivity$warmDataObject;

    invoke-virtual {v2}, Lorg/cwb/cwb_warningActivity$warmDataObject;->getWarmTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const v2, 0x7f0801c2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, warmTimeLabel:Landroid/widget/TextView;
    iget-object v2, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->this$1:Lorg/cwb/cwb_warningActivity$JSONParseTask;

    #getter for: Lorg/cwb/cwb_warningActivity$JSONParseTask;->result:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/cwb/cwb_warningActivity$JSONParseTask;->access$2(Lorg/cwb/cwb_warningActivity$JSONParseTask;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cwb/cwb_warningActivity$warmDataObject;

    invoke-virtual {v2}, Lorg/cwb/cwb_warningActivity$warmDataObject;->getWarmLaunchTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-object p2
.end method
