.class public Lorg/cwb/cwb_warnwebview;
.super Landroid/app/Activity;
.source "cwb_warnwebview.java"


# instance fields
.field private currentTabIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lorg/cwb/cwb_warnwebview;->currentTabIndex:I

    .line 13
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lorg/cwb/cwb_warnwebview;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "warmDataTitle"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "NODATATITLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 27
    const v5, 0x7f030031

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_warnwebview;->setContentView(I)V

    .line 28
    const v5, 0x7f0801c9

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_warnwebview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 29
    .local v4, webview:Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 30
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 31
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 32
    new-instance v5, Lorg/cwb/cwb_warnwebview$1;

    invoke-direct {v5, p0}, Lorg/cwb/cwb_warnwebview$1;-><init>(Lorg/cwb/cwb_warnwebview;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53
    invoke-virtual {p0}, Lorg/cwb/cwb_warnwebview;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "warmDataTitle"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, url:[Ljava/lang/String;
    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    .end local v3           #url:[Ljava/lang/String;
    .end local v4           #webview:Landroid/webkit/WebView;
    :goto_57
    invoke-virtual {p0}, Lorg/cwb/cwb_warnwebview;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "current_tab"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/cwb/cwb_warnwebview;->currentTabIndex:I

    .line 72
    return-void

    .line 59
    :cond_65
    const v5, 0x7f03002f

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_warnwebview;->setContentView(I)V

    .line 60
    const v5, 0x7f0801c1

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_warnwebview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, title:Landroid/widget/TextView;
    invoke-virtual {p0}, Lorg/cwb/cwb_warnwebview;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "warmDataTitle"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v5, 0x7f0801c2

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_warnwebview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    .local v1, time:Landroid/widget/TextView;
    invoke-virtual {p0}, Lorg/cwb/cwb_warnwebview;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "warmDataTime"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v5, 0x7f0801c6

    invoke-virtual {p0, v5}, Lorg/cwb/cwb_warnwebview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, content:Landroid/widget/TextView;
    invoke-virtual {p0}, Lorg/cwb/cwb_warnwebview;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "warmDataContent"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_57
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 77
    if-ne p1, v6, :cond_70

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package_name"

    invoke-virtual {p0}, Lorg/cwb/cwb_warnwebview;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v2, "class_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cwb/cwb_warnwebview;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cwb_warningActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v2, "current_tab"

    iget v3, p0, Lorg/cwb/cwb_warnwebview;->currentTabIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    iget v2, p0, Lorg/cwb/cwb_warnwebview;->currentTabIndex:I

    packed-switch v2, :pswitch_data_76

    .line 103
    :goto_3b
    const-string v2, "view_layer_id"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v2, "cwb.CHANGE_ACTIVITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Lorg/cwb/cwb_warnwebview;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "in cwb_warnwebview dispatchkey"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    .end local v0           #intent:Landroid/content/Intent;
    :goto_4f
    return v1

    .line 88
    .restart local v0       #intent:Landroid/content/Intent;
    :pswitch_50
    const-string v2, "group_index"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    .line 91
    :pswitch_56
    const-string v2, "group_index"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    .line 94
    :pswitch_5d
    const-string v2, "group_index"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    .line 97
    :pswitch_63
    const-string v2, "group_index"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    .line 100
    :pswitch_6a
    const-string v2, "group_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    .line 109
    .end local v0           #intent:Landroid/content/Intent;
    :cond_70
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_4f

    .line 85
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_56
        :pswitch_50
        :pswitch_5d
        :pswitch_63
        :pswitch_6a
    .end packed-switch
.end method
