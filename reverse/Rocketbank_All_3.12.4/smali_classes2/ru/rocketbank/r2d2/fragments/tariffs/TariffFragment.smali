.class public final Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "TariffFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTariffFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TariffFragment.kt\nru/rocketbank/r2d2/fragments/tariffs/TariffFragment\n*L\n1#1,289:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;

.field private static final LAST_TARIFF_KEY:Ljava/lang/String; = "LAST_TARIFF"

.field private static final TARIFF_KEY:Ljava/lang/String; = "TARIFF"

.field private static final TOKEN_KEY:Ljava/lang/String; = "TOKEN"

.field private static final tariffUpdateSubject:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private activationDialog:Landroid/support/v7/app/AlertDialog;

.field private applySubscribtion:Lrx/Subscription;

.field private final authorization:Lru/rocketbank/core/user/Authorization;

.field private binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

.field private final calendar:Ljava/util/Calendar;

.field private cancelDialog:Landroid/support/v7/app/AlertDialog;

.field private changeTariffSubscribtion:Lrx/Subscription;

.field private final items$delegate:Lkotlin/Lazy;

.field private lastTariff:Lru/rocketbank/core/model/TariffModel;

.field private tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

.field private final tariffData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

.field private tariffImageView:Landroid/widget/ImageView;

.field private final tariffsApi:Lru/rocketbank/core/network/api/TariffsApi;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "items"

    const-string v4, "getItems()Landroid/databinding/ObservableArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->Companion:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;

    .line 274
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffUpdateSubject:Lrx/subjects/PublishSubject;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 42
    new-instance v0, Landroid/databinding/ObservableArrayList;

    invoke-direct {v0}, Landroid/databinding/ObservableArrayList;-><init>()V

    invoke-static {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazyOf(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->items$delegate:Lkotlin/Lazy;

    .line 47
    new-instance v0, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->calendar:Ljava/util/Calendar;

    .line 56
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getTariffsApi()Lru/rocketbank/core/network/api/TariffsApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffsApi:Lru/rocketbank/core/network/api/TariffsApi;

    return-void
.end method

.method public static final synthetic access$cancelTariff(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->cancelTariff()V

    return-void
.end method

.method public static final synthetic access$changeTariff(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->changeTariff()V

    return-void
.end method

.method public static final synthetic access$getLAST_TARIFF_KEY$cp()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->LAST_TARIFF_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTARIFF_KEY$cp()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->TARIFF_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTOKEN_KEY$cp()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->TOKEN_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTariff$p(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)Lru/rocketbank/core/network/model/tariffs/Tariff;
    .locals 1

    .line 38
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez p0, :cond_0

    const-string v0, "tariff"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTariffUpdateSubject$cp()Lrx/subjects/PublishSubject;
    .locals 1

    .line 38
    sget-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffUpdateSubject:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public static final synthetic access$hideSpinner(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->hideSpinner()V

    return-void
.end method

.method public static final synthetic access$setTariff$p(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;Lru/rocketbank/core/network/model/tariffs/Tariff;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    return-void
.end method

.method public static final synthetic access$setTariffState(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->setTariffState(Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V

    return-void
.end method

.method private final cancelTariff()V
    .locals 3

    .line 260
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "token"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->lastTariff:Lru/rocketbank/core/model/TariffModel;

    if-nez v1, :cond_1

    const-string v2, "lastTariff"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/model/TariffModel;->getPermalinkString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->NOT_ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->applyTariff(Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V

    return-void
.end method

.method private final changeTariff()V
    .locals 3

    const v0, 0x7f110284

    .line 224
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->showSpinner(I)V

    .line 225
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "token"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v1, :cond_1

    const-string v2, "tariff"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getPermalink()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->WILL_BE_ACTIVATED:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    invoke-virtual {p0, v0, v1, v2}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->applyTariff(Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V

    return-void
.end method

.method private final getItems()Landroid/databinding/ObservableArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableArrayList<",
            "Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->items$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/databinding/ObservableArrayList;

    return-object v0
.end method

.method public static final getTariffUpdateSubject()Lrx/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/PublishSubject<",
            "Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion$TariffStateChange;",
            ">;"
        }
    .end annotation

    sget-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffUpdateSubject:Lrx/subjects/PublishSubject;

    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;Lru/rocketbank/core/network/model/tariffs/Tariff;Lru/rocketbank/core/model/TariffModel;)Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->Companion:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$Companion;->newInstance(Ljava/lang/String;Lru/rocketbank/core/network/model/tariffs/Tariff;Lru/rocketbank/core/model/TariffModel;)Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    move-result-object p0

    return-object p0
.end method

.method private final setTariffState(Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V
    .locals 7

    .line 116
    sget-object v0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f060208

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f11011c

    .line 130
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.current_tariff)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0600a4

    goto :goto_0

    :pswitch_0
    const p1, 0x7f110225

    .line 126
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.how_apply_tariff)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const p1, 0x7f1101f9

    .line 122
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.ft_apply_tariff)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const p1, 0x7f1101fb

    const/4 v0, 0x1

    .line 118
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "d MMMM"

    new-instance v4, Ljava/util/Locale;

    const-string v5, "ru"

    const-string v6, "RU"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.ft_ta\u2026t(calendar.timeInMillis))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f060095

    .line 134
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->getButtonText()Landroid/databinding/ObservableField;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->getButtonColor()Landroid/databinding/ObservableField;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setupDialogButtonsColor(Landroid/support/v7/app/AlertDialog;)V
    .locals 3

    const/4 v0, -0x1

    .line 178
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060208

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    .line 180
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f060095

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private final setupTariffData()V
    .locals 6

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->getPriceLabel()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v1, :cond_0

    const-string v2, "tariff"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getPriceLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->getName()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v1, :cond_1

    const-string v2, "tariff"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->isSalary()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v1, :cond_2

    const-string v2, "tariff"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getSalary()Lru/rocketbank/core/network/model/tariffs/Salary;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/tariff/TariffData;->isButtonActivate()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v1, :cond_4

    const-string v4, "tariff"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getState()Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    move-result-object v1

    sget-object v4, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    if-eq v1, v4, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v0, :cond_6

    const-string v1, "tariff"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getState()Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->setTariffState(Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v0, :cond_7

    const-string v1, "tariff"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getFeatures()Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getItems()Landroid/databinding/ObservableArrayList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/databinding/ObservableArrayList;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v3

    if-ltz v1, :cond_8

    .line 103
    :goto_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getItems()Landroid/databinding/ObservableArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/databinding/ObservableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;->getText()Landroid/databinding/ObservableField;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/network/model/tariffs/TariffFeature;

    invoke-virtual {v4}, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getItems()Landroid/databinding/ObservableArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/databinding/ObservableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;

    invoke-virtual {v3}, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;->getTextColor()Landroid/databinding/ObservableField;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/network/model/tariffs/TariffFeature;

    invoke-virtual {v4}, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->getIconText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 106
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/network/model/tariffs/TariffFeature;

    invoke-virtual {v3}, Lru/rocketbank/core/network/model/tariffs/TariffFeature;->getIconColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const v3, -0x777778

    .line 110
    :goto_3
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getItems()Landroid/databinding/ObservableArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/databinding/ObservableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;

    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;->getColor()Landroid/databinding/ObservableField;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    if-eq v2, v1, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method private final showCancelDialog()V
    .locals 5

    .line 205
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->cancelDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_2

    const v0, 0x7f11008f

    const/4 v1, 0x1

    .line 206
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v3, :cond_0

    const-string v4, "tariff"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable$184cab27()Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 210
    new-instance v2, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$showCancelDialog$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$showCancelDialog$1;-><init>(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 213
    sget-object v2, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$showCancelDialog$2;->INSTANCE:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$showCancelDialog$2;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->cancelDialog:Landroid/support/v7/app/AlertDialog;

    .line 217
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->cancelDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 218
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 219
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->setupDialogButtonsColor(Landroid/support/v7/app/AlertDialog;)V

    return-void

    :cond_3
    return-void
.end method

.method private final showChangeDialog()V
    .locals 8

    .line 186
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->activationDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_1

    const v0, 0x7f1101fc

    const/4 v1, 0x1

    .line 187
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "d MMMM"

    new-instance v5, Ljava/util/Locale;

    const-string v6, "ru"

    const-string v7, "RU"

    invoke-direct {v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v4, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable$184cab27()Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 191
    new-instance v2, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$showChangeDialog$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$showChangeDialog$1;-><init>(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 194
    sget-object v2, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$showChangeDialog$2;->INSTANCE:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$showChangeDialog$2;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->activationDialog:Landroid/support/v7/app/AlertDialog;

    .line 198
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->activationDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 200
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->setupDialogButtonsColor(Landroid/support/v7/app/AlertDialog;)V

    return-void

    :cond_2
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final applyTariff(Ljava/lang/String;Ljava/lang/String;Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tariffPermalink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110284

    .line 229
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->showSpinner(I)V

    .line 230
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->applySubscribtion:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 231
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffsApi:Lru/rocketbank/core/network/api/TariffsApi;

    invoke-interface {v0, p2, p1}, Lru/rocketbank/core/network/api/TariffsApi;->apply(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 232
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 233
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 234
    new-instance v1, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$applyTariff$1;-><init>(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->applySubscribtion:Lrx/Subscription;

    return-void
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 1

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method

.method public final onChangeTariffClicked()V
    .locals 5

    .line 160
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v0, :cond_0

    const-string v1, "tariff"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getState()Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v0, :cond_1

    const-string v1, "tariff"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getSalary()Lru/rocketbank/core/network/model/tariffs/Salary;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 167
    sget-object v1, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->Companion:Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v3, "context!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v3, :cond_3

    const-string v4, "tariff"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lru/rocketbank/core/network/model/tariffs/Salary;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 163
    :pswitch_1
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->showChangeDialog()V

    return-void

    .line 161
    :pswitch_2
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->showCancelDialog()V

    return-void

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 60
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    move-result-object p1

    const-string p2, "FragmentTariffDetailsBin\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    .line 61
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->tariffImg:Landroid/widget/ImageView;

    const-string p2, "binding.tariffImg"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffImageView:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget-object p2, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->TARIFF_KEY:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    const-string p2, "arguments!!.getParcelable(TARIFF_KEY)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/network/model/tariffs/Tariff;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    sget-object p2, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->LAST_TARIFF_KEY:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    const-string p2, "arguments!!.getParcelable(LAST_TARIFF_KEY)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lru/rocketbank/core/model/TariffModel;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->lastTariff:Lru/rocketbank/core/model/TariffModel;

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    sget-object p2, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->TOKEN_KEY:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "arguments!!.getString(TOKEN_KEY)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->token:Ljava/lang/String;

    const/4 p1, 0x1

    move p2, p1

    :goto_0
    const/4 p3, 0x3

    if-gt p2, p3, :cond_4

    .line 66
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getItems()Landroid/databinding/ObservableArrayList;

    move-result-object p3

    new-instance v0, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/tariff/TariffItemData;-><init>()V

    invoke-virtual {p3, v0}, Landroid/databinding/ObservableArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 67
    :cond_4
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    if-nez p2, :cond_5

    const-string p3, "binding"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getItems()Landroid/databinding/ObservableArrayList;

    move-result-object p3

    check-cast p3, Landroid/databinding/ObservableList;

    invoke-virtual {p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->setItems(Landroid/databinding/ObservableList;)V

    .line 68
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->calendar:Ljava/util/Calendar;

    iget-object p3, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->calendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p2, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 69
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->calendar:Ljava/util/Calendar;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    .line 70
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    if-nez p1, :cond_6

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 154
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->applySubscribtion:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 156
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->changeTariffSubscribtion:Lrx/Subscription;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onLinkClicked(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v0, :cond_0

    const-string v1, "tariff"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/Utils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 143
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onStart()V

    .line 144
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->setListener(Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 148
    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onStop()V

    .line 149
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->setListener(Lru/rocketbank/r2d2/data/binding/tariff/TariffEventsListener;)V

    .line 150
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->hideSpinner()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    if-nez p2, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffData:Lru/rocketbank/r2d2/data/binding/tariff/TariffData;

    invoke-virtual {p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->setData(Lru/rocketbank/r2d2/data/binding/tariff/TariffData;)V

    .line 76
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->setupTariffData()V

    .line 77
    sget-object p2, Lru/rocketbank/core/utils/ImageHelper;->INSTANCE:Lru/rocketbank/core/utils/ImageHelper;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const-string v1, "tariffImageView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez v1, :cond_2

    const-string v2, "tariff"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x777778

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1, v2}, Lru/rocketbank/core/utils/ImageHelper;->load(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez p2, :cond_3

    const-string v0, "tariff"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getPermalink()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const-string v0, "onetwotrip"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060228

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 80
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    if-nez p2, :cond_4

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->tariff:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 81
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    if-nez p2, :cond_5

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->tariffName:Lme/grantland/widget/AutofitTextView;

    invoke-virtual {p2, p1}, Lme/grantland/widget/AutofitTextView;->setTextColor(I)V

    .line 82
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    if-nez p2, :cond_6

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->price:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 83
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    if-nez p2, :cond_7

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->month:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 84
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    if-nez p2, :cond_8

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;->imageViewInfinity:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 86
    :cond_9
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariff:Lru/rocketbank/core/network/model/tariffs/Tariff;

    if-nez p1, :cond_a

    const-string p2, "tariff"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lru/rocketbank/core/network/model/tariffs/Tariff;->getState()Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    move-result-object p1

    sget-object p2, Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;->ACTIVE:Lru/rocketbank/core/network/model/tariffs/Tariff$TariffState;

    if-eq p1, p2, :cond_b

    .line 87
    sget-object p1, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->tariffUpdateSubject:Lrx/subjects/PublishSubject;

    new-instance p2, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/subjects/PublishSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->changeTariffSubscribtion:Lrx/Subscription;

    :cond_b
    return-void
.end method
