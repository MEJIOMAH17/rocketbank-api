.class final Lcom/flurry/sdk/ja$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ka<",
        "Lcom/flurry/sdk/jf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ja;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/flurry/sdk/ja$9;->a:Lcom/flurry/sdk/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/jz;)V
    .locals 1

    .line 1190
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object p1

    new-instance v0, Lcom/flurry/sdk/ja$9$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ja$9$1;-><init>(Lcom/flurry/sdk/ja$9;)V

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    return-void
.end method
