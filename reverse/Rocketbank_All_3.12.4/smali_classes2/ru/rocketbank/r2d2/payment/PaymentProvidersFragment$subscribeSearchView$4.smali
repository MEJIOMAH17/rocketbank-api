.class final Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$4;
.super Ljava/lang/Object;
.source "PaymentProvidersFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


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
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$4;->this$0:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$4;->call(Ljava/lang/String;)V

    return-void
.end method

.method public final call(Ljava/lang/String;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$4;->this$0:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;

    const-string v1, "text"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment;->filter(Ljava/lang/String;)V

    return-void
.end method
