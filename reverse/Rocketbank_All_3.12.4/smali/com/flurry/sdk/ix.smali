.class public Lcom/flurry/sdk/ix;
.super Lcom/flurry/sdk/kr;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj$a;


# static fields
.field private static final a:Ljava/lang/String; = "ix"

.field private static f:Ljava/lang/String; = "http://data.flurry.com/aap.do"

.field private static g:Ljava/lang/String; = "https://data.flurry.com/aap.do"


# instance fields
.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ix;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 3

    const-string p1, "Analytics"

    .line 46
    const-class v0, Lcom/flurry/sdk/ix;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/kr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AnalyticsData_"

    .line 47
    iput-object p1, p0, Lcom/flurry/sdk/ix;->e:Ljava/lang/String;

    .line 1053
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object p1

    const-string v0, "UseHttps"

    .line 1055
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/ix;->i:Z

    const-string v0, "UseHttps"

    .line 1056
    invoke-virtual {p1, v0, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 1057
    sget-object v0, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, UseHttps = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/flurry/sdk/ix;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ReportUrl"

    .line 1059
    invoke-virtual {p1, v0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ReportUrl"

    .line 1060
    invoke-virtual {p1, v1, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 1061
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ix;->b(Ljava/lang/String;)V

    .line 1062
    sget-object p1, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    const-string v1, "initSettings, ReportUrl = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/flurry/sdk/ix;->b()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ix;)V
    .locals 0

    .line 4121
    invoke-virtual {p0}, Lcom/flurry/sdk/kr;->b()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ix;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ix;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ".do"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 95
    sget-object v1, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    const-string v2, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/ix;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0xe48ec3c

    if-eq v0, v1, :cond_1

    const v1, 0x62629b7b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ReportUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "UseHttps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x6

    .line 83
    sget-object p2, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .line 79
    invoke-direct {p0, p2}, Lcom/flurry/sdk/ix;->b(Ljava/lang/String;)V

    .line 80
    sget-object p1, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    const-string v1, "onSettingUpdate, ReportUrl = "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 74
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/ix;->i:Z

    .line 75
    sget-object p1, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, UseHttps = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/ix;->i:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 165
    new-instance v0, Lcom/flurry/sdk/ix$2;

    invoke-direct {v0, p0, p3}, Lcom/flurry/sdk/ix$2;-><init>(Lcom/flurry/sdk/ix;I)V

    .line 4060
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/kr;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected final a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1106
    iget-object v0, p0, Lcom/flurry/sdk/ix;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/flurry/sdk/ix;->h:Ljava/lang/String;

    goto :goto_0

    .line 1110
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ix;->i:Z

    if-eqz v0, :cond_1

    .line 1111
    sget-object v0, Lcom/flurry/sdk/ix;->g:Ljava/lang/String;

    goto :goto_0

    .line 1113
    :cond_1
    sget-object v0, Lcom/flurry/sdk/ix;->f:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x4

    .line 120
    sget-object v2, Lcom/flurry/sdk/ix;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FlurryDataSender: start upload data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/flurry/sdk/kl;

    invoke-direct {v1}, Lcom/flurry/sdk/kl;-><init>()V

    .line 1134
    iput-object v0, v1, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    const v0, 0x186a0

    .line 2029
    iput v0, v1, Lcom/flurry/sdk/lx;->w:I

    .line 126
    sget-object v0, Lcom/flurry/sdk/kn$a;->c:Lcom/flurry/sdk/kn$a;

    .line 2142
    iput-object v0, v1, Lcom/flurry/sdk/kn;->g:Lcom/flurry/sdk/kn$a;

    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    .line 127
    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/kl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/flurry/sdk/kv;

    invoke-direct {v0}, Lcom/flurry/sdk/kv;-><init>()V

    .line 3040
    iput-object v0, v1, Lcom/flurry/sdk/kl;->c:Lcom/flurry/sdk/kz;

    .line 4036
    iput-object p1, v1, Lcom/flurry/sdk/kl;->b:Ljava/lang/Object;

    .line 130
    new-instance p1, Lcom/flurry/sdk/ix$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/flurry/sdk/ix$1;-><init>(Lcom/flurry/sdk/ix;Ljava/lang/String;Ljava/lang/String;)V

    .line 4048
    iput-object p1, v1, Lcom/flurry/sdk/kl;->a:Lcom/flurry/sdk/kl$a;

    .line 160
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/flurry/sdk/jp;->a(Ljava/lang/Object;Lcom/flurry/sdk/lx;)V

    return-void
.end method
