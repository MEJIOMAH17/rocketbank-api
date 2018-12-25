.class final Lcom/flurry/sdk/ih$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ih;->a()Lcom/flurry/sdk/jy;
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
        "Lcom/flurry/sdk/ii;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ih;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ih;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/flurry/sdk/ih$1;->a:Lcom/flurry/sdk/ih;

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
            "Lcom/flurry/sdk/ii;",
            ">;>;"
        }
    .end annotation

    .line 43
    new-instance p1, Lcom/flurry/sdk/ky;

    new-instance v0, Lcom/flurry/sdk/ii$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ii$a;-><init>()V

    invoke-direct {p1, v0}, Lcom/flurry/sdk/ky;-><init>(Lcom/flurry/sdk/kz;)V

    return-object p1
.end method
