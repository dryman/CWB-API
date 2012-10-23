.class public Lorg/cwb/cwb_warningActivity;
.super Landroid/app/Activity;
.source "cwb_warningActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_warningActivity$JSONParseTask;,
        Lorg/cwb/cwb_warningActivity$WaringListAdapter;,
        Lorg/cwb/cwb_warningActivity$period_check_Receiver;,
        Lorg/cwb/cwb_warningActivity$warmDataObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cwb_warningActivity"


# instance fields
.field private currentTabIndex:I

.field private dialog:Landroid/app/ProgressDialog;

.field private list:Landroid/widget/ListView;

.field mContext:Landroid/content/Context;

.field mReceiver:Lorg/cwb/cwb_warningActivity$period_check_Receiver;

.field private thread:Lorg/cwb/cwb_parserdatathread;

.field warndata:Lorg/cwb/cwb_warningdata;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v1, p0, Lorg/cwb/cwb_warningActivity;->thread:Lorg/cwb/cwb_parserdatathread;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/cwb/cwb_warningActivity;->currentTabIndex:I

    .line 42
    iput-object v1, p0, Lorg/cwb/cwb_warningActivity;->dialog:Landroid/app/ProgressDialog;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lorg/cwb/cwb_warningActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cwb/cwb_warningActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cwb/cwb_warningActivity;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lorg/cwb/cwb_warningActivity;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private setupBroadCast()V
    .registers 3

    .prologue
    .line 449
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 450
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "cwb.PERIOD_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    new-instance v1, Lorg/cwb/cwb_warningActivity$period_check_Receiver;

    invoke-direct {v1, p0}, Lorg/cwb/cwb_warningActivity$period_check_Receiver;-><init>(Lorg/cwb/cwb_warningActivity;)V

    iput-object v1, p0, Lorg/cwb/cwb_warningActivity;->mReceiver:Lorg/cwb/cwb_warningActivity$period_check_Receiver;

    .line 452
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity;->mReceiver:Lorg/cwb/cwb_warningActivity$period_check_Receiver;

    invoke-virtual {p0, v1, v0}, Lorg/cwb/cwb_warningActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_warningActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lorg/cwb/cwb_warningActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/cwb/cwb_warningActivity;->mContext:Landroid/content/Context;

    .line 50
    const v0, 0x7f0801c4

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_warningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;

    .line 51
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    new-instance v0, Lorg/cwb/cwb_warningActivity$JSONParseTask;

    invoke-direct {v0, p0}, Lorg/cwb/cwb_warningActivity$JSONParseTask;-><init>(Lorg/cwb/cwb_warningActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/cwb/cwb_warningActivity$JSONParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    invoke-direct {p0}, Lorg/cwb/cwb_warningActivity;->setupBroadCast()V

    .line 74
    invoke-virtual {p0}, Lorg/cwb/cwb_warningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "current_tab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/cwb/cwb_warningActivity;->currentTabIndex:I

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 347
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 348
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity;->thread:Lorg/cwb/cwb_parserdatathread;

    if-eqz v0, :cond_c

    .line 349
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity;->thread:Lorg/cwb/cwb_parserdatathread;

    invoke-virtual {v0}, Lorg/cwb/cwb_parserdatathread;->destroy()V

    .line 351
    :cond_c
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity;->mReceiver:Lorg/cwb/cwb_warningActivity$period_check_Receiver;

    invoke-virtual {p0, v0}, Lorg/cwb/cwb_warningActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 352
    return-void
.end method

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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x3

    .line 267
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 266
    check-cast v1, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;

    .line 267
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->getRawData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_warningActivity$warmDataObject;

    .line 268
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$warmDataObject;->getWarmLink()Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, "http://www.cwb.gov.tw/pda/warning/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, "PTA_NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 272
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 271
    check-cast v1, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;

    .line 272
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->getRawData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_warningActivity$warmDataObject;

    .line 273
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$warmDataObject;->getWarmLink()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 274
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_warningActivity;->startActivity(Landroid/content/Intent;)V

    .line 344
    :goto_4d
    return-void

    .line 281
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_warningActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v1, "class_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_warningActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".cwb_warnwebview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 285
    check-cast v1, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;

    .line 286
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->getRawData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_warningActivity$warmDataObject;

    .line 287
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$warmDataObject;->getWarmLink()Ljava/lang/String;

    move-result-object v1

    .line 288
    const-string v2, "http://www.cwb.gov.tw/pda/warning/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    const-string v2, "EC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 290
    const-string v2, "warmDataTitle"

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "NODATATITLE@"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 291
    check-cast v1, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;

    .line 292
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->getRawData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_warningActivity$warmDataObject;

    .line 293
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$warmDataObject;->getWarmLink()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    :goto_ca
    const-string v2, "warmDataTime"

    .line 316
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 315
    check-cast v1, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;

    .line 316
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->getRawData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_warningActivity$warmDataObject;

    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$warmDataObject;->getWarmLaunchTime()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v2, "warmDataContent"

    .line 319
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 318
    check-cast v1, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;

    .line 319
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->getRawData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_warningActivity$warmDataObject;

    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$warmDataObject;->getWarmContent()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v1, "current_tab"

    iget v2, p0, Lorg/cwb/cwb_warningActivity;->currentTabIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    iget v1, p0, Lorg/cwb/cwb_warningActivity;->currentTabIndex:I

    packed-switch v1, :pswitch_data_1a8

    .line 341
    :goto_10c
    const-string v1, "view_layer_id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    const-string v1, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_warningActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4d

    .line 299
    :cond_11b
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 298
    check-cast v1, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;

    .line 299
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->getRawData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_warningActivity$warmDataObject;

    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$warmDataObject;->getWarmType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "W21"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 301
    const-string v2, "warmDataTitle"

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "NODATATITLE@"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 302
    check-cast v1, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;

    .line 303
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->getRawData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_warningActivity$warmDataObject;

    .line 304
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$warmDataObject;->getWarmLink()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_ca

    .line 308
    :cond_165
    const-string v2, "warmDataTitle"

    .line 310
    iget-object v1, p0, Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 309
    check-cast v1, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;

    .line 310
    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;->getRawData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cwb/cwb_warningActivity$warmDataObject;

    invoke-virtual {v1}, Lorg/cwb/cwb_warningActivity$warmDataObject;->getWarmTitle()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_ca

    .line 326
    :pswitch_182
    const-string v1, "group_index"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_10c

    .line 329
    :pswitch_189
    const-string v1, "group_index"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_10c

    .line 332
    :pswitch_190
    const-string v1, "group_index"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_10c

    .line 335
    :pswitch_198
    const-string v1, "group_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_10c

    .line 338
    :pswitch_1a0
    const-string v1, "group_index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_10c

    .line 323
    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_189
        :pswitch_182
        :pswitch_190
        :pswitch_198
        :pswitch_1a0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 357
    const/4 v1, 0x4

    if-ne p1, v1, :cond_12

    .line 399
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 400
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cwb.REMOVE_SELF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_warningActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 402
    const/4 v1, 0x1

    .line 404
    .end local v0           #intent:Landroid/content/Intent;
    :goto_11
    return v1

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_11
.end method
