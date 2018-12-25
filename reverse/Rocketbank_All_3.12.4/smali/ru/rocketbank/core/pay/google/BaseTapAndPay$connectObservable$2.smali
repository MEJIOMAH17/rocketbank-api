.class final Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$2;
.super Ljava/lang/Object;
.source "BaseTapAndPay.kt"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/pay/google/BaseTapAndPay;->connectObservable()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;


# direct methods
.method constructor <init>(Lru/rocketbank/core/pay/google/BaseTapAndPay;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$2;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 1

    .line 57
    iget-object v0, p0, Lru/rocketbank/core/pay/google/BaseTapAndPay$connectObservable$2;->this$0:Lru/rocketbank/core/pay/google/BaseTapAndPay;

    invoke-static {v0}, Lru/rocketbank/core/pay/google/BaseTapAndPay;->access$disconnectApiClient(Lru/rocketbank/core/pay/google/BaseTapAndPay;)V

    return-void
.end method
