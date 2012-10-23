.class Lorg/cwb/cwb_warningActivity$JSONParseTask;
.super Landroid/os/AsyncTask;
.source "cwb_warningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_warningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSONParseTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private DATA_URL:Ljava/lang/String;

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cwb/cwb_warningActivity$warmDataObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/cwb/cwb_warningActivity;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_warningActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->this$0:Lorg/cwb/cwb_warningActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->result:Ljava/util/ArrayList;

    .line 127
    const-string v0, "http://app.cwb.gov.tw/ws/feed2.php?userid=1b8df2a02611e9ec1aac&type=2"

    iput-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->DATA_URL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lorg/cwb/cwb_warningActivity$JSONParseTask;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cwb/cwb_warningActivity$JSONParseTask;)Lorg/cwb/cwb_warningActivity;
    .registers 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->this$0:Lorg/cwb/cwb_warningActivity;

    return-object v0
.end method

.method private getHttpData()V
    .registers 13

    .prologue
    .line 177
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 178
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v10, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->DATA_URL:Ljava/lang/String;

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 179
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 181
    .local v8, rp:Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 182
    .local v5, in:Ljava/io/BufferedReader;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_4e

    .line 183
    new-instance v5, Ljava/io/BufferedReader;

    .end local v5           #in:Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 186
    .restart local v5       #in:Ljava/io/BufferedReader;
    const-string v6, ""

    .line 187
    .local v6, line:Ljava/lang/String;
    const-string v1, ""

    .line 188
    .local v1, content:Ljava/lang/String;
    :goto_33
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4f

    .line 192
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    .local v7, object:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3f
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v4, v10, :cond_61

    .line 224
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 230
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v8           #rp:Lorg/apache/http/HttpResponse;
    :cond_4e
    :goto_4e
    return-void

    .line 189
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v8       #rp:Lorg/apache/http/HttpResponse;
    :cond_4f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_33

    .line 196
    .restart local v4       #i:I
    .restart local v7       #object:Lorg/json/JSONObject;
    :cond_61
    new-instance v9, Lorg/cwb/cwb_warningActivity$warmDataObject;

    iget-object v10, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->this$0:Lorg/cwb/cwb_warningActivity;

    invoke-direct {v9, v10}, Lorg/cwb/cwb_warningActivity$warmDataObject;-><init>(Lorg/cwb/cwb_warningActivity;)V

    .line 198
    .local v9, warmData:Lorg/cwb/cwb_warningActivity$warmDataObject;
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 199
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 200
    const-string v11, "warnings"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 201
    const-string v11, "DataTime"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 197
    invoke-virtual {v9, v10}, Lorg/cwb/cwb_warningActivity$warmDataObject;->setWarmLaunchTime(Ljava/lang/String;)V

    .line 203
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 204
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 205
    const-string v11, "warnings"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 206
    const-string v11, "Content"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 202
    invoke-virtual {v9, v10}, Lorg/cwb/cwb_warningActivity$warmDataObject;->setWarmContent(Ljava/lang/String;)V

    .line 208
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 209
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 210
    const-string v11, "warnings"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 211
    const-string v11, "Link"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 207
    invoke-virtual {v9, v10}, Lorg/cwb/cwb_warningActivity$warmDataObject;->setWarmLink(Ljava/lang/String;)V

    .line 212
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 213
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 214
    const-string v11, "warnings"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 215
    const-string v11, "Type"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 212
    invoke-virtual {v9, v10}, Lorg/cwb/cwb_warningActivity$warmDataObject;->setWarmType(Ljava/lang/String;)V

    .line 216
    const-string v10, "Areas"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 217
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 218
    const-string v11, "warnings"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 219
    const-string v11, "Title"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 216
    invoke-virtual {v9, v10}, Lorg/cwb/cwb_warningActivity$warmDataObject;->setWarmTitle(Ljava/lang/String;)V

    .line 221
    iget-object v10, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ea} :catch_ee

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3f

    .line 227
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #i:I
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v8           #rp:Lorg/apache/http/HttpResponse;
    .end local v9           #warmData:Lorg/cwb/cwb_warningActivity$warmDataObject;
    :catch_ee
    move-exception v2

    .line 228
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4e
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_warningActivity$JSONParseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter "params"

    .prologue
    .line 255
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "doInBackground"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lorg/cwb/cwb_warningActivity$JSONParseTask;->getHttpData()V

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/cwb/cwb_warningActivity$JSONParseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 237
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->this$0:Lorg/cwb/cwb_warningActivity;

    #getter for: Lorg/cwb/cwb_warningActivity;->list:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/cwb/cwb_warningActivity;->access$0(Lorg/cwb/cwb_warningActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;

    invoke-direct {v1, p0}, Lorg/cwb/cwb_warningActivity$JSONParseTask$WarmingDataAdapter;-><init>(Lorg/cwb/cwb_warningActivity$JSONParseTask;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    :cond_19
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->this$0:Lorg/cwb/cwb_warningActivity;

    #getter for: Lorg/cwb/cwb_warningActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_warningActivity;->access$1(Lorg/cwb/cwb_warningActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 239
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->this$0:Lorg/cwb/cwb_warningActivity;

    #getter for: Lorg/cwb/cwb_warningActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_warningActivity;->access$1(Lorg/cwb/cwb_warningActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 240
    :cond_2a
    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 245
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 246
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->this$0:Lorg/cwb/cwb_warningActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    sget-object v2, Lorg/cwb/cwb_constants;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lorg/cwb/cwb_warningActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lorg/cwb/cwb_warningActivity;->access$2(Lorg/cwb/cwb_warningActivity;Landroid/app/ProgressDialog;)V

    .line 247
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->this$0:Lorg/cwb/cwb_warningActivity;

    #getter for: Lorg/cwb/cwb_warningActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_warningActivity;->access$1(Lorg/cwb/cwb_warningActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Loading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->this$0:Lorg/cwb/cwb_warningActivity;

    #getter for: Lorg/cwb/cwb_warningActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_warningActivity;->access$1(Lorg/cwb/cwb_warningActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 249
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$JSONParseTask;->this$0:Lorg/cwb/cwb_warningActivity;

    #getter for: Lorg/cwb/cwb_warningActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/cwb/cwb_warningActivity;->access$1(Lorg/cwb/cwb_warningActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 250
    return-void
.end method
