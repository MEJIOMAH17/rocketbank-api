.class final Lcom/flurry/sdk/ke$3;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ke;->a(Lcom/flurry/sdk/lx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lx;

.field final synthetic b:Lcom/flurry/sdk/ke;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ke;Lcom/flurry/sdk/lx;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/flurry/sdk/ke$3;->b:Lcom/flurry/sdk/ke;

    iput-object p2, p0, Lcom/flurry/sdk/ke$3;->a:Lcom/flurry/sdk/lx;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/flurry/sdk/ke$3;->a:Lcom/flurry/sdk/lx;

    invoke-virtual {v0}, Lcom/flurry/sdk/lx;->g()V

    return-void
.end method
