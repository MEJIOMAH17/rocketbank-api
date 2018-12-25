.class public final Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "NewCardFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/card/NewCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NewCardAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewCardFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewCardFragment.kt\nru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter\n*L\n1#1,146:1\n*E\n"
.end annotation


# instance fields
.field private availableCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/AvailableCardModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/card/NewCardFragment;

.field private final titles:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/card/NewCardFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->this$0:Lru/rocketbank/r2d2/fragments/card/NewCardFragment;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 109
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    .line 113
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    const-string p2, "rub"

    const v0, 0x7f11009d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    const-string p2, "usd"

    const v0, 0x7f1100a2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    const-string p2, "eur"

    const v0, 0x7f110098

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 137
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->availableCards:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->getItem(I)Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public final getItem(I)Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;
    .locals 1

    .line 132
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->availableCards:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/AvailableCardModel;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->newInstance(Lru/rocketbank/core/model/AvailableCardModel;)Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 122
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->availableCards:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 123
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/AvailableCardModel;

    .line 124
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->titles:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AvailableCardModel;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/model/enums/Currency;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "availableCardModel.currency.toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    const p1, 0x7f11009e

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 128
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->this$0:Lru/rocketbank/r2d2/fragments/card/NewCardFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/card/NewCardFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 122
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_2
    const-string p1, ""

    .line 129
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public final swap(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/AvailableCardModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cards"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->availableCards:Ljava/util/List;

    .line 142
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/card/NewCardFragment$NewCardAdapter;->notifyDataSetChanged()V

    return-void
.end method
