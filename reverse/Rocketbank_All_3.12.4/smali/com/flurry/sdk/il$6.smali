.class final Lcom/flurry/sdk/il$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/il;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lc<",
        "Ljava/util/List<",
        "Lcom/flurry/sdk/im;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/kz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/kz<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/im;",
            ">;>;"
        }
    .end annotation

    .line 511
    new-instance p1, Lcom/flurry/sdk/ky;

    new-instance v0, Lcom/flurry/sdk/im$a;

    invoke-direct {v0}, Lcom/flurry/sdk/im$a;-><init>()V

    invoke-direct {p1, v0}, Lcom/flurry/sdk/ky;-><init>(Lcom/flurry/sdk/kz;)V

    return-object p1
.end method
