.class final Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$3;
.super Ljava/lang/Object;
.source "PaymentProvidersFragment.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->subscribeSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$3;->this$0:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$3;->call(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/String;)Z
    .locals 0

    .line 169
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$3;->this$0:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->access$getProviders$p(Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;)Lru/rocketbank/core/network/model/ProvidersResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
