.class final Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$2;
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
        "TT;TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentProvidersFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentProvidersFragment.kt\nru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$2\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,197:1\n60#2:198\n31#2,23:199\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentProvidersFragment.kt\nru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$2\n*L\n168#1:198\n168#1,23:199\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$2;

    invoke-direct {v0}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$2;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$2;->INSTANCE:Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$2;

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

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentProvidersFragment$subscribeSearchView$2;->call(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "s1"

    .line 168
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    check-cast p1, Ljava/lang/CharSequence;

    .line 200
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    move v4, v0

    :goto_0
    if-gt v0, v3, :cond_4

    if-nez v4, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v3

    .line 205
    :goto_1
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-gt v5, v6, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    add-int/2addr v3, v1

    .line 221
    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
