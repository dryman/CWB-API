.class Lorg/cwb/cwb_warningActivity$warmDataObject;
.super Ljava/lang/Object;
.source "cwb_warningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cwb/cwb_warningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "warmDataObject"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cwb/cwb_warningActivity;

.field private warmContent:Ljava/lang/String;

.field private warmLaunchTime:Ljava/lang/String;

.field private warmLink:Ljava/lang/String;

.field private warmTitle:Ljava/lang/String;

.field private warmType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cwb/cwb_warningActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->this$0:Lorg/cwb/cwb_warningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmTitle:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmLaunchTime:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmType:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmLink:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getWarmContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmContent:Ljava/lang/String;

    return-object v0
.end method

.method public getWarmLaunchTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmLaunchTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWarmLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmLink:Ljava/lang/String;

    return-object v0
.end method

.method public getWarmTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWarmType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmType:Ljava/lang/String;

    return-object v0
.end method

.method public setWarmContent(Ljava/lang/String;)V
    .registers 2
    .parameter "content"

    .prologue
    .line 101
    iput-object p1, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmContent:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setWarmLaunchTime(Ljava/lang/String;)V
    .registers 2
    .parameter "time"

    .prologue
    .line 89
    iput-object p1, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmLaunchTime:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setWarmLink(Ljava/lang/String;)V
    .registers 2
    .parameter "link"

    .prologue
    .line 97
    iput-object p1, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmLink:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setWarmTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 85
    iput-object p1, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmTitle:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setWarmType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 93
    iput-object p1, p0, Lorg/cwb/cwb_warningActivity$warmDataObject;->warmType:Ljava/lang/String;

    .line 94
    return-void
.end method
