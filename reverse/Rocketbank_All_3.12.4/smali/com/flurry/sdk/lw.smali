.class public abstract Lcom/flurry/sdk/lw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String; = "lw"


# instance fields
.field u:Ljava/io/PrintStream;

.field v:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 4

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/lw;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/flurry/sdk/lw;->u:Ljava/io/PrintStream;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/flurry/sdk/lw;->u:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/lw;->v:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/flurry/sdk/lw;->v:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v1, 0x6

    .line 65
    sget-object v2, Lcom/flurry/sdk/lw;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
