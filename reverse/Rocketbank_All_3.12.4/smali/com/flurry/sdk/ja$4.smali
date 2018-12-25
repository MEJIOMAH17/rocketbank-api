.class final Lcom/flurry/sdk/ja$4;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ja;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lcom/flurry/sdk/ja;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja;JJJI)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/flurry/sdk/ja$4;->e:Lcom/flurry/sdk/ja;

    iput-wide p2, p0, Lcom/flurry/sdk/ja$4;->a:J

    iput-wide p4, p0, Lcom/flurry/sdk/ja$4;->b:J

    iput-wide p6, p0, Lcom/flurry/sdk/ja$4;->c:J

    iput p8, p0, Lcom/flurry/sdk/ja$4;->d:I

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 348
    iget-object v0, p0, Lcom/flurry/sdk/ja$4;->e:Lcom/flurry/sdk/ja;

    iget-wide v1, p0, Lcom/flurry/sdk/ja$4;->a:J

    iget-wide v3, p0, Lcom/flurry/sdk/ja$4;->b:J

    iget-wide v5, p0, Lcom/flurry/sdk/ja$4;->c:J

    iget v7, p0, Lcom/flurry/sdk/ja$4;->d:I

    invoke-virtual/range {v0 .. v7}, Lcom/flurry/sdk/ja;->a(JJJI)Lcom/flurry/sdk/iy;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/flurry/sdk/ja$4;->e:Lcom/flurry/sdk/ja;

    invoke-static {v1}, Lcom/flurry/sdk/ja;->f(Lcom/flurry/sdk/ja;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 356
    iget-object v1, p0, Lcom/flurry/sdk/ja$4;->e:Lcom/flurry/sdk/ja;

    invoke-static {v1}, Lcom/flurry/sdk/ja;->f(Lcom/flurry/sdk/ja;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/flurry/sdk/ja$4;->e:Lcom/flurry/sdk/ja;

    invoke-virtual {v0}, Lcom/flurry/sdk/ja;->d()V

    return-void
.end method
