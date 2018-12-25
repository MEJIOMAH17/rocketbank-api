.class final Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$1;
.super Ljava/lang/Object;
.source "PaymentFragment.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentFragment;->loadTemplates()V
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
        "TT;TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentFragment.kt\nru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,353:1\n713#2,2:354\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentFragment.kt\nru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$1\n*L\n151#1,2:354\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$1;->INSTANCE:Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lru/rocketbank/core/model/transfers/PaymentTemplates;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentFragment$loadTemplates$1;->call(Lru/rocketbank/core/model/transfers/PaymentTemplates;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lru/rocketbank/core/model/transfers/PaymentTemplates;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/transfers/PaymentTemplates;",
            ")",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/transfers/Template;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lru/rocketbank/core/model/transfers/PaymentTemplates;->templates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    iget-object p1, p1, Lru/rocketbank/core/model/transfers/PaymentTemplates;->templates:Ljava/util/List;

    const-string v1, "paymentTemplates.templates"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 354
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lru/rocketbank/core/model/transfers/Template;

    .line 151
    iget-object v2, v2, Lru/rocketbank/core/model/transfers/Template;->provider:Lru/rocketbank/core/model/transfers/Template$ProviderPayment;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
