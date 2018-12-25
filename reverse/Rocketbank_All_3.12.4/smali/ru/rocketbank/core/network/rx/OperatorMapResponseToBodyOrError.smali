.class final Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;
.super Ljava/lang/Object;
.source "OperatorMapResponseToBodyOrError.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;",
        "Lretrofit2/Response<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;

    invoke-direct {v0}, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;-><init>()V

    sput-object v0, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;->INSTANCE:Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError<",
            "TR;>;"
        }
    .end annotation

    .line 21
    sget-object v0, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;->INSTANCE:Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;

    return-object v0
.end method


# virtual methods
.method public final bodyExtract()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError$1;

    invoke-direct {v0, p0, p1, p1}, Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError$1;-><init>(Lru/rocketbank/core/network/rx/OperatorMapResponseToBodyOrError;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
