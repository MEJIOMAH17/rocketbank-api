.class public Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;
.super Landroid/support/v4/app/Fragment;
.source "SmallAccountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmallAccountFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmallAccountFragment.kt\nru/rocketbank/r2d2/root/transfer/SmallAccountFragment\n*L\n1#1,138:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$Companion;

.field public static final TOKEN:Ljava/lang/String; = "TOKEN"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final accountData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

.field public authorization:Lru/rocketbank/core/user/Authorization;

.field public moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field private refreshSubscription:Lrx/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->Companion:Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 26
    new-instance v0, Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->accountData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    return-void
.end method

.method private final chooseIcon(Lru/rocketbank/core/model/RocketDepositModel;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Lru/rocketbank/core/model/RocketDepositModel;->getCurrency()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lru/rocketbank/core/model/enums/Currency;->fromString(Ljava/lang/String;)Lru/rocketbank/core/model/enums/Currency;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    :cond_1
    sget-object v0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lru/rocketbank/core/model/enums/Currency;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f080181

    packed-switch p1, :pswitch_data_0

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_1

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const v0, 0x7f080140

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const-string v0, "ContextCompat.getDrawabl\u2026able.ic_dollar_deposit)!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 76
    :pswitch_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const v0, 0x7f080147

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string v0, "ContextCompat.getDrawabl\u2026awable.ic_euro_deposit)!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 75
    :pswitch_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    const-string v0, "ContextCompat.getDrawabl\u2026wable.ic_ruble_deposit)!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 78
    :cond_8
    :goto_1
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    const-string v0, "ContextCompat.getDrawabl\u2026wable.ic_ruble_deposit)!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final chooseIcon(Lru/rocketbank/core/model/facade/Account;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 84
    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getAccountModel()Lru/rocketbank/core/model/AccountModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getAccountModelIcon(Lru/rocketbank/core/model/AccountModel;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 86
    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/facade/Account;->getSafeAccount()Lru/rocketbank/core/model/SafeAccount;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 87
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getSafeAccountIcon(Lru/rocketbank/core/model/SafeAccount;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_5

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast p1, Landroid/content/Context;

    const v0, 0x7f08017b

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string p1, "ContextCompat.getDrawabl\u2026, R.drawable.ic_rocket)!!"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method private final getAccountModelIcon(Lru/rocketbank/core/model/AccountModel;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const v0, 0x7f08017b

    .line 101
    :try_start_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/AccountModel;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "Uri.parse(iconUrl)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x422a77f6

    if-eq v1, v2, :cond_a

    const v2, -0x19640542

    if-eq v1, v2, :cond_7

    const v2, 0x360653

    if-eq v1, v2, :cond_4

    const v2, 0x66cca34b

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "onetwotrip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 108
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast p1, Landroid/content/Context;

    const v1, 0x7f0801e7

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const-string v1, "ContextCompat.getDrawabl\u2026vity!!, R.drawable.ott)!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "stas"

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 105
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    check-cast p1, Landroid/content/Context;

    const v1, 0x7f080177

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    const-string v1, "ContextCompat.getDrawabl\u2026R.drawable.ic_polyakov)!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "metropolis"

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 107
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    check-cast p1, Landroid/content/Context;

    const v1, 0x7f080165

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    const-string v1, "ContextCompat.getDrawabl\u2026drawable.ic_metropolis)!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const-string v1, "lampas"

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 106
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    check-cast p1, Landroid/content/Context;

    const v1, 0x7f080156

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    const-string v1, "ContextCompat.getDrawabl\u2026, R.drawable.ic_lampas)!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_d
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    const-string v1, "ContextCompat.getDrawabl\u2026, R.drawable.ic_rocket)!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10
    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    :goto_1
    return-object p1
.end method

.method private final getSafeAccountIcon(Lru/rocketbank/core/model/SafeAccount;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 92
    invoke-virtual {p1}, Lru/rocketbank/core/model/SafeAccount;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lru/rocketbank/core/model/enums/Currency;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast p1, Landroid/content/Context;

    const v0, 0x7f080146

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v0, "ContextCompat.getDrawabl\u2026!!, R.drawable.ic_euro)!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 93
    :pswitch_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast p1, Landroid/content/Context;

    const v0, 0x7f08013f

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string v0, "ContextCompat.getDrawabl\u2026, R.drawable.ic_dollar)!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 95
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    check-cast p1, Landroid/content/Context;

    const v0, 0x7f080180

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    const-string v0, "ContextCompat.getDrawabl\u2026, R.drawable.ic_rouble)!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 2

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 2

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v0, :cond_0

    const-string v1, "moneyFormatter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lru/rocketbank/r2d2/root/transfer/SmallAccountData;)Landroid/databinding/ViewDataBinding;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smallAccountData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    invoke-static {p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentSmallAccountBinding;

    move-result-object p1

    const-string p2, "binding"

    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountBinding;->setData(Lru/rocketbank/r2d2/root/transfer/SmallAccountData;)V

    .line 40
    check-cast p1, Landroid/databinding/ViewDataBinding;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p3, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->accountData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    invoke-virtual {p0, p1, p2, p3}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lru/rocketbank/r2d2/root/transfer/SmallAccountData;)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroid/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->refreshSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    :cond_0
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->refreshSubscription:Lrx/Subscription;

    .line 122
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 49
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 51
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "TOKEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v1, :cond_1

    const-string v2, "authorization"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v0}, Lru/rocketbank/core/user/Authorization;->getProductImmediate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 54
    instance-of v1, v0, Lru/rocketbank/core/model/facade/Account;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 55
    iget-object v1, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v1, :cond_2

    const-string v3, "moneyFormatter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    move-object v3, v0

    check-cast v3, Lru/rocketbank/core/model/facade/Account;

    invoke-virtual {v3}, Lru/rocketbank/core/model/facade/Account;->getBalance()D

    move-result-wide v4

    invoke-virtual {v3}, Lru/rocketbank/core/model/facade/Account;->getCurrency()Lru/rocketbank/core/model/enums/Currency;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6, v2}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLru/rocketbank/core/model/enums/Currency;Z)Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-object v4, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->accountData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    invoke-virtual {v4}, Lru/rocketbank/r2d2/root/transfer/SmallAccountData;->getName()Landroid/databinding/ObservableField;

    move-result-object v4

    invoke-virtual {v3}, Lru/rocketbank/core/model/facade/Account;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 58
    iget-object v4, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->accountData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    invoke-virtual {v4}, Lru/rocketbank/r2d2/root/transfer/SmallAccountData;->getAmount()Landroid/databinding/ObservableField;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->accountData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/transfer/SmallAccountData;->getImage()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-direct {p0, v3}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->chooseIcon(Lru/rocketbank/core/model/facade/Account;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 61
    :cond_3
    instance-of v1, v0, Lru/rocketbank/core/model/DepositModel;

    if-eqz v1, :cond_7

    .line 62
    check-cast v0, Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 63
    iget-object v3, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v3, :cond_4

    const-string v4, "moneyFormatter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getBalance()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1}, Lru/rocketbank/core/model/RocketDepositModel;->getCurrency()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v3, v4, v5, v1, v2}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->accountData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/root/transfer/SmallAccountData;->getAmount()Landroid/databinding/ObservableField;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 66
    :cond_6
    iget-object v1, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->accountData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/transfer/SmallAccountData;->getName()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 67
    iget-object v1, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->accountData:Lru/rocketbank/r2d2/root/transfer/SmallAccountData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/transfer/SmallAccountData;->getImage()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v0}, Lru/rocketbank/core/model/DepositModel;->getRocketDeposit()Lru/rocketbank/core/model/RocketDepositModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->chooseIcon(Lru/rocketbank/core/model/RocketDepositModel;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 45
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setMoneyFormatter(Lru/rocketbank/core/utils/MoneyFormatter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->moneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-void
.end method
