.class final Lcom/flurry/sdk/km$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/km;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/km;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/km;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/flurry/sdk/km$a;->a:Lcom/flurry/sdk/km;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/km;B)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/flurry/sdk/km$a;-><init>(Lcom/flurry/sdk/km;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 55
    invoke-static {}, Lcom/flurry/sdk/km;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpRequest timed out. Cancelling."

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/flurry/sdk/km$a;->a:Lcom/flurry/sdk/km;

    invoke-static {v0}, Lcom/flurry/sdk/km;->a(Lcom/flurry/sdk/km;)Lcom/flurry/sdk/kn;

    move-result-object v0

    .line 1242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/flurry/sdk/kn;->m:J

    sub-long v7, v3, v5

    .line 1243
    sget-object v1, Lcom/flurry/sdk/kn;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Timeout ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "MS) for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/flurry/sdk/kn;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x275

    .line 1245
    iput v1, v0, Lcom/flurry/sdk/kn;->p:I

    const/4 v1, 0x1

    .line 1247
    iput-boolean v1, v0, Lcom/flurry/sdk/kn;->t:Z

    .line 1250
    invoke-virtual {v0}, Lcom/flurry/sdk/kn;->h()V

    .line 1253
    invoke-virtual {v0}, Lcom/flurry/sdk/kn;->f()V

    return-void
.end method
