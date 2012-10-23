.class Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;
.super Landroid/os/AsyncTask;
.source "cwb_forecast_2012_expandableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_forecast_2012_expandableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "loadTitleTownName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_forecast_2012_expandableList;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_forecast_2012_expandableList;)V
    .registers 2
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;)Lorg/cwb/cwb_forecast_2012_expandableList;
    .registers 2
    .parameter

    .prologue
    .line 753
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 758
    iget-object v0, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #calls: Lorg/cwb/cwb_forecast_2012_expandableList;->loadTitleTownName()Ljava/lang/String;
    invoke-static {v0}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$12(Lorg/cwb/cwb_forecast_2012_expandableList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 15
    .parameter "townName"

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 764
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 766
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->townNameList:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$13(Lorg/cwb/cwb_forecast_2012_expandableList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    .line 767
    .local v1, b:[Ljava/lang/String;
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->townNameList:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$13(Lorg/cwb/cwb_forecast_2012_expandableList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 768
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 769
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    .line 770
    const v7, 0x1090008

    .line 768
    invoke-direct {v4, v6, v7, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 771
    .local v4, townAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v4, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 772
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    const v7, 0x7f08009e

    invoke-virtual {v6, v7}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 773
    .local v5, townSpinner:Landroid/widget/Spinner;
    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 774
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$14()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 776
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    const v7, 0x7f080099

    invoke-virtual {v6, v7}, Lorg/cwb/cwb_forecast_2012_expandableList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 777
    .local v0, TownName:Landroid/widget/TextView;
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->townNameList:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$13(Lorg/cwb/cwb_forecast_2012_expandableList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$14()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$15()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    const-string v6, "http://app.cwb.gov.tw/ws/feed.php?userid=f9845dae54a3b9247582&type=5&townid=%1$s&day=%2$s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$16()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 783
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$17()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$18()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    .line 782
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    new-instance v6, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;

    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {v6, v7, v3}, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;Ljava/util/ArrayList;)V

    new-array v7, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 787
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$19()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    const-string v6, "http://app.cwb.gov.tw/ws/feed.php?userid=f9845dae54a3b9247582&type=5&townid=%1$s&day=%2$s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$16()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 790
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$20()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$21()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    .line 789
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    new-instance v6, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;

    iget-object v7, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    invoke-direct {v6, v7, v3}, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;Ljava/util/ArrayList;)V

    new-array v7, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lorg/cwb/cwb_forecast_2012_expandableList$loadFutureData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 792
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "http://app.cwb.gov.tw/ws/feed.php?userid=f9845dae54a3b9247582&type=5&townid=%1$s&day=%2$s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$16()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 793
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$20()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$21()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 792
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 798
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$1()Landroid/widget/ExpandableListView;

    move-result-object v6

    new-instance v7, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;

    iget-object v8, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList;Lorg/cwb/cwb_forecast_2012_expandableList$weatherInfoAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 799
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$5(Lorg/cwb/cwb_forecast_2012_expandableList;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_146

    .line 800
    iget-object v6, p0, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;->this$0:Lorg/cwb/cwb_forecast_2012_expandableList;

    #getter for: Lorg/cwb/cwb_forecast_2012_expandableList;->pd:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$5(Lorg/cwb/cwb_forecast_2012_expandableList;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 803
    :cond_146
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$22()Z

    move-result v6

    if-nez v6, :cond_16f

    .line 804
    invoke-static {v11}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$23(Z)V

    .line 805
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 806
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const-string v6, "\u66ab\u7121\u9810\u5831\u8cc7\u8a0a\uff0c\u8acb\u91cd\u65b0\u9ede\u9078"

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 807
    const-string v7, "OK"

    new-instance v8, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName$1;

    invoke-direct {v8, p0}, Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName$1;-><init>(Lorg/cwb/cwb_forecast_2012_expandableList$loadTitleTownName;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 827
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 831
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :goto_16e
    return-void

    .line 829
    :cond_16f
    invoke-static {}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$8()I

    move-result v6

    invoke-static {v6}, Lorg/cwb/cwb_forecast_2012_expandableList;->access$27(I)V

    goto :goto_16e
.end method
