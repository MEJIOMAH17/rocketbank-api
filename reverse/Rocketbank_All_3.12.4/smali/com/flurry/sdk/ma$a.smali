.class final Lcom/flurry/sdk/ma$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ma;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/ma;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/flurry/sdk/ma$a;->a:Lcom/flurry/sdk/ma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/ma;B)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ma$a;-><init>(Lcom/flurry/sdk/ma;)V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/ma$a;->a:Lcom/flurry/sdk/ma;

    .line 1083
    invoke-virtual {v0}, Lcom/flurry/sdk/ma;->c()Ljava/util/Set;

    move-result-object v0

    .line 1084
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1086
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ma$a;->a:Lcom/flurry/sdk/ma;

    .line 2094
    iget-object v1, v0, Lcom/flurry/sdk/ma;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 2096
    :try_start_1
    iget-object v0, v0, Lcom/flurry/sdk/ma;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    :cond_1
    return-void
.end method
