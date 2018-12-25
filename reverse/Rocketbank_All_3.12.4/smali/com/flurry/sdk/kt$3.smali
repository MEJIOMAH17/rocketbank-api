.class final Lcom/flurry/sdk/kt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kt;->f(Ljava/lang/String;)Z
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
        "Lcom/flurry/sdk/ku;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kt;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kt;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/flurry/sdk/kt$3;->a:Lcom/flurry/sdk/kt;

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
            "Lcom/flurry/sdk/ku;",
            ">;>;"
        }
    .end annotation

    .line 245
    new-instance p1, Lcom/flurry/sdk/ky;

    new-instance v0, Lcom/flurry/sdk/ku$a;

    invoke-direct {v0}, Lcom/flurry/sdk/ku$a;-><init>()V

    invoke-direct {p1, v0}, Lcom/flurry/sdk/ky;-><init>(Lcom/flurry/sdk/kz;)V

    return-object p1
.end method
