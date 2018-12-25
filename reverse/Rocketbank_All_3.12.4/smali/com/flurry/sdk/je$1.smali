.class final Lcom/flurry/sdk/je$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ka<",
        "Lcom/flurry/sdk/le;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/je;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/je;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/flurry/sdk/je$1;->a:Lcom/flurry/sdk/je;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/jz;)V
    .locals 2

    .line 69
    check-cast p1, Lcom/flurry/sdk/le;

    .line 1072
    sget-object v0, Lcom/flurry/sdk/je$4;->a:[I

    iget p1, p1, Lcom/flurry/sdk/le;->c:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1075
    :cond_0
    iget-object p1, p0, Lcom/flurry/sdk/je$1;->a:Lcom/flurry/sdk/je;

    invoke-virtual {p1}, Lcom/flurry/sdk/je;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1076
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/je$1$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/je$1$1;-><init>(Lcom/flurry/sdk/je$1;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
